#!/usr/bin/env python3
import argparse
import collections
import hashlib
import json
import os
import pathlib
import sys
import urllib.request

sys.path.insert(0, str(pathlib.Path(__file__).resolve().parent))
from push_pages import USER_AGENT, Wiki  # noqa: E402
from sync_base import FILES, PAGES, TRANSLATIONS, at_ref, normalized  # noqa: E402
from translations import TARGETS, units  # noqa: E402

FOLDERS = {0: 'Main', 8: 'MediaWiki', 10: 'Template', 14: 'Category', 828: 'Module'}
FILE_NS = 6
TRANSLATIONS_NS = 1198
AUTOMATIC_USERS = {'FuzzyBot', 'MediaWiki default', 'Maintenance script'}
OWN_SUMMARIES = ('Sync from dragonminez-wiki repository', 'Translation sync from dragonminez-wiki repository')
MODEL_SUFFIX = {'Scribunto': '.lua', 'css': '', 'sanitized-css': '', 'javascript': '', 'json': ''}


class Report:
    SECTIONS = {
        'pulled': 'Brought from the wiki',
        'removed': 'Deleted on the wiki, removed here',
        'conflict': 'Edited on the wiki and in GitHub: kept the wiki version, '
                    'the GitHub version stays in the history of each file',
        'kept': 'Deleted on the wiki but changed in GitHub: kept here, it will be published again',
    }

    def __init__(self):
        self.entries = {section: [] for section in self.SECTIONS}

    def add(self, section: str, kind: str, label: str, users=()):
        self.entries[section].append((kind, label, set(users)))
        if section in ('conflict', 'kept'):
            print(f'::warning title={self.SECTIONS[section].split(":")[0]}::{kind} {label}')

    def empty(self) -> bool:
        return not any(self.entries.values())

    def markdown(self) -> str:
        users = sorted(set().union(*(u for items in self.entries.values() for _, _, u in items)))
        lines = ['chore: edits from the wiki' + (f' ({", ".join(users)})' if users else ''), '']
        for section, title in self.SECTIONS.items():
            if self.entries[section]:
                lines.append(f'{title}:')
                lines.extend(f'- {kind}: {label}' + (f' ({", ".join(sorted(u))})' if u else '')
                             for kind, label, u in self.entries[section])
                lines.append('')
        return '\n'.join(lines).rstrip() + '\n'


def chunks(items, size):
    items = list(items)
    for i in range(0, len(items), size):
        yield items[i:i + size]


def wiki_changes(wiki: Wiki, since: str):
    params = dict(
        action='query', list='recentchanges', rcdir='newer', rclimit='max',
        rcprop='title|user|comment|loginfo|timestamp', rctype='edit|new|log',
        rcnamespace='|'.join(str(ns) for ns in [*FOLDERS, FILE_NS, TRANSLATIONS_NS]),
    )
    if since:
        params['rcstart'] = since
    while True:
        data = wiki.call(**params)
        for change in data['query']['recentchanges']:
            if change.get('user') in AUTOMATIC_USERS or (change.get('comment') or '').startswith(OWN_SUMMARIES):
                continue
            if change['type'] == 'log' and change.get('logtype') not in ('upload', 'delete', 'move'):
                continue
            yield change
        if 'continue' not in data:
            return
        params.update(data['continue'])


def collect(wiki: Wiki, since: str):
    pages = collections.defaultdict(set)
    files = collections.defaultdict(set)
    translated = collections.defaultdict(lambda: collections.defaultdict(set))
    for change in wiki_changes(wiki, since):
        ns, title, user = change['ns'], change['title'], change.get('user', '?')
        targets = [(ns, title)]
        if change.get('logtype') == 'move':
            params = change.get('logparams') or {}
            if params.get('target_title'):
                targets.append((params.get('target_ns', ns), params['target_title']))
        for target_ns, target in targets:
            if target_ns == TRANSLATIONS_NS:
                parts = target.split(':', 1)[1].rsplit('/', 2)
                if len(parts) == 3 and parts[2] in TARGETS:
                    translated[(parts[0], parts[2])][parts[1].replace(' ', '_')].add(user)
            elif target_ns == FILE_NS:
                if change['type'] == 'log':
                    files[target.split(':', 1)[1]].add(user)
            elif target_ns in FOLDERS:
                pages[(target_ns, target)].add(user)
    return pages, files, translated


def wiki_pages(wiki: Wiki, titles):
    found = {}
    for batch in chunks(titles, 50):
        data = wiki.call(True, action='query', prop='revisions', rvprop='content|contentmodel',
                         rvslots='main', titles='|'.join(batch))
        for page in data['query']['pages']:
            if page.get('missing') or 'revisions' not in page:
                found[page['title']] = None
            else:
                slot = page['revisions'][0]['slots']['main']
                found[page['title']] = (slot.get('content', ''), slot.get('contentmodel', 'wikitext'))
    return found


def page_path(ns: int, name: str, model: str) -> pathlib.Path:
    folder = PAGES / FOLDERS[ns]
    for suffix in ('.wiki', '.lua', ''):
        candidate = folder / f'{name}{suffix}'
        if candidate.is_file():
            return candidate
    return folder / f'{name}{MODEL_SUFFIX.get(model, ".wiki")}'


def changed_since(base_text, repo_text) -> bool:
    if base_text is None or repo_text is None:
        return base_text != repo_text
    return normalized(base_text) != normalized(repo_text)


def pull_pages(wiki: Wiki, base: str, pages, report: Report):
    current = wiki_pages(wiki, [title for _, title in pages])
    for (ns, title), users in sorted(pages.items(), key=lambda item: item[0][1]):
        name = title if ns == 0 else title.split(':', 1)[1]
        remote = current.get(title)
        path = page_path(ns, name, remote[1] if remote else 'wikitext')
        repo = path.read_text(encoding='utf-8') if path.is_file() else None
        base_raw = at_ref(base, path) if base else None
        base_text = base_raw.decode('utf-8') if base_raw is not None else None
        repo_changed = bool(base) and changed_since(base_text, repo)
        if remote is None:
            if repo is None:
                continue
            if base and not repo_changed:
                path.unlink()
                report.add('removed', 'page', title, users)
            else:
                report.add('kept', 'page', title, users)
            continue
        text = remote[0]
        if repo is not None and normalized(text) == normalized(repo):
            if text.rstrip('\n') != repo.rstrip('\n'):
                path.write_text(text, encoding='utf-8', newline='\n')
                report.add('pulled', 'page', f'{title} (translation markers only)', users)
            continue
        if base and base_text is not None and normalized(text) == normalized(base_text):
            continue
        path.parent.mkdir(parents=True, exist_ok=True)
        path.write_text(text, encoding='utf-8', newline='\n')
        report.add('conflict' if repo_changed else 'pulled', 'page', title, users)


def pull_translations(wiki: Wiki, base: str, translated, report: Report):
    for (page, lang), keys in sorted(translated.items()):
        path = TRANSLATIONS / lang / f'{page.replace(":", "~")}.json'
        repo = json.loads(path.read_text(encoding='utf-8')) if path.is_file() else {}
        base_data = None
        if base:
            raw = at_ref(base, path)
            base_data = json.loads(raw) if raw else {}
        try:
            remote = units(wiki, page, lang)
        except RuntimeError:
            continue
        changed = {}
        for unit in remote:
            key = unit['key'].split('/')[-1]
            if key not in keys:
                continue
            text = (unit.get('translation') or '').replace('!!FUZZY!!', '').strip('\n')
            if not text.strip():
                continue
            repo_text = ((repo.get(key) or {}).get('translation') or '').strip('\n')
            if text.strip() == repo_text.strip():
                continue
            base_text = None
            if base_data is not None:
                base_text = ((base_data.get(key) or {}).get('translation') or '').strip('\n')
                if text.strip() == base_text.strip():
                    continue
            repo_changed = base_text is not None and repo_text.strip() != base_text.strip()
            repo[key] = {
                'source': unit.get('definition') or '',
                'translation': text,
                'outdated': 'fuzzy' in unit.get('tags', []),
            }
            changed.setdefault(repo_changed, []).append((key, keys[key]))
        if not changed:
            continue
        order = [unit['key'].split('/')[-1] for unit in remote]
        ordered = {key: repo[key] for key in order if key in repo}
        ordered.update({key: value for key, value in repo.items() if key not in ordered})
        path.parent.mkdir(parents=True, exist_ok=True)
        path.write_text(json.dumps(ordered, ensure_ascii=False, indent=1) + '\n', encoding='utf-8', newline='\n')
        for repo_changed, items in changed.items():
            users = set().union(*(u for _, u in items))
            label = f'{page} [{lang}] ' + ', '.join(key.replace('_', ' ') for key, _ in items)
            report.add('conflict' if repo_changed else 'pulled', 'translation', label, users)


def pull_files(wiki: Wiki, base: str, files, report: Report):
    index = {p.name: p for p in FILES.rglob('*') if p.is_file()} if FILES.is_dir() else {}
    remote = {}
    for batch in chunks(files, 50):
        data = wiki.call(True, action='query', prop='imageinfo', iiprop='sha1|url',
                         titles='|'.join(f'File:{name}' for name in batch))
        for page in data['query']['pages']:
            info = page.get('imageinfo')
            remote[page['title'].split(':', 1)[1]] = (info[0]['sha1'], info[0]['url']) if info else None
    for name, users in sorted(files.items()):
        path = index.get(name, FILES / name)
        repo = hashlib.sha1(path.read_bytes()).hexdigest() if path.is_file() else None
        base_raw = at_ref(base, path) if base else None
        base_sha = hashlib.sha1(base_raw).hexdigest() if base_raw is not None else None
        repo_changed = bool(base) and base_sha != repo
        wiki_file = remote.get(name)
        if wiki_file is None:
            if repo is None:
                continue
            if base and not repo_changed:
                path.unlink()
                report.add('removed', 'file', name, users)
            else:
                report.add('kept', 'file', name, users)
            continue
        sha, url = wiki_file
        if sha == repo or (base and sha == base_sha):
            continue
        request = urllib.request.Request(url, headers={'User-Agent': USER_AGENT})
        with urllib.request.urlopen(request, timeout=120) as response:
            data = response.read()
        if hashlib.sha1(data).hexdigest() != sha:
            print(f'::warning title=Download mismatch::File:{name} did not match the wiki checksum; skipped')
            continue
        path.parent.mkdir(parents=True, exist_ok=True)
        path.write_bytes(data)
        report.add('conflict' if repo_changed else 'pulled', 'file', name, users)


def main() -> int:
    parser = argparse.ArgumentParser(description='Bring pages, translations and files edited on the wiki into content/.')
    parser.add_argument('--api', default=os.environ.get('MW_API', 'https://wiki.dragonminez.com/api.php'))
    parser.add_argument('--base', default='', help='commit that matched the wiki at the last sync (empty: none yet)')
    parser.add_argument('--since', default='', help='timestamp of the last sync; only edits after it are checked')
    parser.add_argument('--report', help='write a commit message with what was brought to this file')
    args = parser.parse_args()

    wiki = Wiki(args.api)
    if os.environ.get('MW_BOT_USER') and os.environ.get('MW_BOT_PASSWORD'):
        wiki.login(os.environ['MW_BOT_USER'], os.environ['MW_BOT_PASSWORD'])

    pages, files, translated = collect(wiki, args.since)
    print(f'{len(pages)} page(s), {sum(len(k) for k in translated.values())} translation unit(s) '
          f'and {len(files)} file(s) edited on the wiki since {args.since or "the start of its recent changes"}')
    report = Report()
    pull_pages(wiki, args.base, pages, report)
    pull_translations(wiki, args.base, translated, report)
    pull_files(wiki, args.base, files, report)

    if report.empty():
        print('Nothing new from the wiki.')
        return 0
    message = report.markdown()
    print(message)
    if args.report:
        pathlib.Path(args.report).write_text(message, encoding='utf-8')
    return 0


if __name__ == '__main__':
    sys.exit(main())
