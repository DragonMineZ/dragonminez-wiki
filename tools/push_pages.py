#!/usr/bin/env python3
import argparse
import fnmatch
import hashlib
import mimetypes
import uuid
import http.cookiejar
import json
import os
import pathlib
import sys
import urllib.parse
import urllib.request

USER_AGENT = 'DragonMineZWikiPush/1.0 (https://github.com/DragonMineZ)'
KEEP_SUFFIX = {'.css', '.js', '.json'}
STRIP_SUFFIX = {'.wiki', '.lua'}


def page_title(root: pathlib.Path, path: pathlib.Path) -> str:
    rel = path.relative_to(root)
    namespace = rel.parts[0]
    name = '/'.join(rel.parts[1:])
    if path.suffix in STRIP_SUFFIX:
        name = name[: -len(path.suffix)]
    return name if namespace == 'Main' else f'{namespace}:{name}'


def content_model(namespace: str, suffix: str) -> str:
    if suffix == '.lua':
        return 'Scribunto'
    if suffix == '.css':
        return 'sanitized-css' if namespace == 'Template' else 'css'
    if suffix == '.js':
        return 'javascript'
    if suffix == '.json':
        return 'json'
    return 'wikitext'


class Wiki:
    def __init__(self, api: str):
        self.api = api
        self.opener = urllib.request.build_opener(
            urllib.request.HTTPCookieProcessor(http.cookiejar.CookieJar())
        )
        self._csrf = None

    def call(self, post: bool = False, **params):
        params.update(format='json', formatversion='2')
        body = urllib.parse.urlencode(params).encode('utf-8')
        if post:
            request = urllib.request.Request(self.api, data=body)
        else:
            request = urllib.request.Request(f'{self.api}?{body.decode("ascii")}')
        request.add_header('User-Agent', USER_AGENT)
        with self.opener.open(request, timeout=180) as response:
            data = json.loads(response.read().decode('utf-8'))
        if 'error' in data:
            raise RuntimeError(f"{data['error'].get('code')}: {data['error'].get('info')}")
        return data

    def login(self, user: str, password: str) -> None:
        token = self.call(action='query', meta='tokens', type='login')['query']['tokens']['logintoken']
        result = self.call(True, action='login', lgname=user, lgpassword=password, lgtoken=token)['login']
        if result.get('result') != 'Success':
            raise SystemExit(f"Login failed for {user}: {result.get('reason', result.get('result'))}")

    def csrf(self) -> str:
        if self._csrf is None:
            self._csrf = self.call(action='query', meta='tokens')['query']['tokens']['csrftoken']
        return self._csrf

    def current_text(self, title: str):
        pages = self.call(
            action='query', prop='revisions', rvprop='content', rvslots='main', titles=title
        )['query']['pages']
        page = pages[0]
        if page.get('missing') or 'revisions' not in page:
            return None
        return page['revisions'][0]['slots']['main']['content']

    def file_sha1(self, name: str):
        pages = self.call(action='query', prop='imageinfo', iiprop='sha1', titles=f'File:{name}')['query']['pages']
        info = pages[0].get('imageinfo')
        return info[0]['sha1'] if info else None

    def upload(self, path: pathlib.Path, summary: str):
        boundary = uuid.uuid4().hex
        fields = {
            'action': 'upload', 'format': 'json', 'formatversion': '2', 'filename': path.name,
            'comment': summary, 'ignorewarnings': '1', 'token': self.csrf(),
        }
        body = bytearray()
        crlf = chr(13) + chr(10)
        for key, value in fields.items():
            body += f'--{boundary}{crlf}Content-Disposition: form-data; name="{key}"{crlf}{crlf}{value}{crlf}'.encode('utf-8')
        mime = mimetypes.guess_type(path.name)[0] or 'application/octet-stream'
        body += (f'--{boundary}{crlf}Content-Disposition: form-data; name="file"; filename="{path.name}"{crlf}'
                 f'Content-Type: {mime}{crlf}{crlf}').encode('utf-8')
        body += path.read_bytes() + f'{crlf}--{boundary}--{crlf}'.encode('utf-8')
        request = urllib.request.Request(self.api, data=bytes(body))
        request.add_header('Content-Type', f'multipart/form-data; boundary={boundary}')
        request.add_header('User-Agent', USER_AGENT)
        with self.opener.open(request, timeout=300) as response:
            data = json.loads(response.read().decode('utf-8'))
        if 'error' in data:
            raise RuntimeError(f"{data['error'].get('code')}: {data['error'].get('info')}")
        return data['upload']

    def edit(self, title: str, text: str, model: str, summary: str):
        return self.call(
            True,
            action='edit',
            title=title,
            text=text,
            contentmodel=model,
            summary=summary,
            bot='1',
            token=self.csrf(),
        )['edit']


def main() -> int:
    parser = argparse.ArgumentParser(description='Publish content/pages to a MediaWiki through the API.')
    parser.add_argument('--api', default=os.environ.get('MW_API', 'https://wiki.dragonminez.com/api.php'))
    parser.add_argument('--dir', default=str(pathlib.Path(__file__).resolve().parent.parent / 'content' / 'pages'))
    parser.add_argument('--only', action='append', default=[], help='Glob over page titles, repeatable.')
    parser.add_argument('--summary', default='Sync from dragonminez-wiki repository')
    parser.add_argument('--dry-run', action='store_true')
    args = parser.parse_args()

    user = os.environ.get('MW_BOT_USER')
    password = os.environ.get('MW_BOT_PASSWORD')
    if not user or not password:
        print('Set MW_BOT_USER (User@botname) and MW_BOT_PASSWORD from Special:BotPasswords.', file=sys.stderr)
        return 2

    root = pathlib.Path(args.dir)
    files_dir = root.parent / 'files'
    files = sorted(p for p in root.rglob('*') if p.is_file() and p.suffix in STRIP_SUFFIX | KEEP_SUFFIX)
    wiki = Wiki(args.api)
    wiki.login(user, password)

    changed = 0
    for path in files:
        title = page_title(root, path)
        if args.only and not any(fnmatch.fnmatch(title, pattern) for pattern in args.only):
            continue
        text = path.read_text(encoding='utf-8')
        model = content_model(path.relative_to(root).parts[0], path.suffix)
        current = wiki.current_text(title)
        if current is not None and current.rstrip('\n') == text.rstrip('\n'):
            continue
        changed += 1
        action = 'create' if current is None else 'update'
        if args.dry_run:
            print(f'[dry-run] {action} {title} ({model})')
            continue
        result = wiki.edit(title, text, model, args.summary)
        print(f"{action} {title}: {result.get('result')} rev {result.get('newrevid', '-')}")
    uploaded = 0
    if files_dir.is_dir():
        for path in sorted(p for p in files_dir.rglob('*') if p.is_file()):
            if args.only and not any(fnmatch.fnmatch(f'File:{path.name}', pattern) for pattern in args.only):
                continue
            local = hashlib.sha1(path.read_bytes()).hexdigest()
            if wiki.file_sha1(path.name) == local:
                continue
            uploaded += 1
            if args.dry_run:
                print(f'[dry-run] upload File:{path.name}')
                continue
            result = wiki.upload(path, args.summary)
            print(f"upload File:{path.name}: {result.get('result')}")
    print(f'{changed} page(s) and {uploaded} file(s) {"would change" if args.dry_run else "changed"}.')
    return 0


if __name__ == '__main__':
    sys.exit(main())
