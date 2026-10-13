#!/usr/bin/env python3
import argparse
import collections
import json
import os
import pathlib
import re
import sys
import urllib.parse
import urllib.request

ROOT = pathlib.Path(__file__).resolve().parent.parent
PAGES = ROOT / 'content' / 'pages'
USER_AGENT = 'DragonMineZWikiValidate/1.0'


def local_lint(path: pathlib.Path) -> list:
    text = path.read_text(encoding='utf-8')
    problems = []
    opens, closes = text.count('<translate>'), text.count('</translate>')
    if opens != closes:
        problems.append(f'<translate> {opens} vs </translate> {closes}')
    depth = 0
    for match in re.finditer(r'</?translate>|<syntaxhighlight|<pre>', text):
        token = match.group(0)
        if token == '<translate>':
            depth += 1
        elif token == '</translate>':
            depth -= 1
        elif depth > 0:
            problems.append(f'{token} inside <translate> near offset {match.start()}')
    prose = re.sub(r'<(syntaxhighlight|pre|nowiki|code)\b[^>]*>.*?</\1>', '', text, flags=re.S)
    if re.search(r'\[\[(?!Special:MyLanguage/|Category:|File:|Media:|Special:|#|:)[^\]|]+(\|[^\]]*)?\]\]', prose):
        problems.append('internal link without Special:MyLanguage')
    return problems


LINK_PATTERNS = [
    re.compile(r'\[\[\s*Special:MyLanguage/([^|\]#]+)'),
    re.compile(r'\{\{\s*(?:L|Card|Main|Config)\s*\|\s*([^|}]+)'),
]
SEE_ALSO = re.compile(r'\{\{\s*See also\s*\|([^}]+)\}\}')


def link_targets(text: str) -> set:
    targets = set()
    for pattern in LINK_PATTERNS:
        for match in pattern.finditer(text):
            targets.add(match.group(1).strip().replace('_', ' '))
    for match in SEE_ALSO.finditer(text):
        for part in match.group(1).split('|'):
            if '=' not in part and part.strip():
                targets.add(part.strip().replace('_', ' '))
    return {t[0].upper() + t[1:] for t in targets if t}


def titles_from_files() -> list:
    titles = []
    for path in sorted(PAGES.rglob('*')):
        if not path.is_file() or path.suffix not in {'.wiki', '.lua', '.css', '.js', '.json'}:
            continue
        rel = path.relative_to(PAGES)
        name = '/'.join(rel.parts[1:])
        if path.suffix in {'.wiki', '.lua'}:
            name = name[: -len(path.suffix)]
        titles.append((name if rel.parts[0] == 'Main' else f'{rel.parts[0]}:{name}', path))
    return titles


def api(base: str, **params):
    params.update(format='json', formatversion='2')
    request = urllib.request.Request(f'{base}?{urllib.parse.urlencode(params)}')
    request.add_header('User-Agent', USER_AGENT)
    with urllib.request.urlopen(request, timeout=180) as response:
        return json.loads(response.read().decode('utf-8'))


LANGUAGES = ('es', 'pt')


def render_problems(base: str, page: str) -> list:
    data = api(base, action='parse', page=page, prop='text|templates', disablelimitreport='1')
    if 'error' in data:
        return [f"parse error: {data['error'].get('info')}"]
    problems = []
    parsed = data['parse']
    html = parsed['text']
    for error in re.findall(r'class="(?:error|scribunto-error)[^"]*"[^>]*>(.{0,160})', html):
        problems.append('render error: ' + re.sub('<[^>]+>', '', error))
    fuzzy = html.count('mw-translate-fuzzy')
    if fuzzy:
        problems.append(f'{fuzzy} outdated or untranslated unit(s)')
    for template in parsed.get('templates', []):
        if not template.get('exists'):
            problems.append(f"missing template {template['title']}")
    return problems


def main() -> int:
    parser = argparse.ArgumentParser(description='Lint content files and check how they render on a wiki.')
    parser.add_argument('--api', default=os.environ.get('MW_API', 'http://127.0.0.1:8080/api.php'))
    parser.add_argument('--offline', action='store_true')
    parser.add_argument('--translations', action='store_true', help='also render the /es and /pt translation pages')
    args = parser.parse_args()

    failures = 0
    wanted = collections.Counter()
    wanted_from = collections.defaultdict(set)
    files = titles_from_files()
    existing = {title for title, _ in files}
    for title, path in files:
        is_content = path.suffix == '.wiki' and ':' not in title
        problems = local_lint(path) if is_content else []
        if is_content:
            for target in link_targets(path.read_text(encoding='utf-8')):
                if target not in existing:
                    wanted[target] += 1
                    wanted_from[target].add(title)
        if not args.offline and path.suffix == '.wiki' and not title.startswith('MediaWiki:'):
            pages = [(title, '')]
            if args.translations and is_content and '<translate>' in path.read_text(encoding='utf-8'):
                pages += [(f'{title}/{lang}', f'[{lang}] ') for lang in LANGUAGES]
            for page, prefix in pages:
                problems.extend(prefix + problem for problem in render_problems(args.api, page))
        if problems:
            failures += 1
            print(f'== {title}')
            for problem in problems:
                print(f'   {problem}')
    if wanted:
        print('\n== Wanted pages (red links)')
        for target, count in wanted.most_common():
            sources = ', '.join(sorted(wanted_from[target])[:4])
            print(f'   {count:3d}  {target}   <- {sources}')
    print(f'\n{failures} page(s) with problems, {len(wanted)} wanted page(s).')
    return 1 if failures else 0


if __name__ == '__main__':
    sys.exit(main())
