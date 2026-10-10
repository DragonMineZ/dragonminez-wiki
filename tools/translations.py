#!/usr/bin/env python3
import argparse
import json
import os
import pathlib
import sys

sys.path.insert(0, str(pathlib.Path(__file__).resolve().parent))
from push_pages import Wiki  # noqa: E402

ROOT = pathlib.Path(__file__).resolve().parent.parent
PAGES = ROOT / 'content' / 'pages'
TRANSLATIONS = ROOT / 'content' / 'translations'
TARGETS = ['es', 'pt']


def source_file(title: str) -> pathlib.Path:
    if ':' in title:
        namespace, name = title.split(':', 1)
    else:
        namespace, name = 'Main', title
    return PAGES / namespace / f'{name}.wiki'


def login(api: str) -> Wiki:
    user = os.environ.get('MW_BOT_USER')
    password = os.environ.get('MW_BOT_PASSWORD')
    if not user or not password:
        raise SystemExit('Set MW_BOT_USER and MW_BOT_PASSWORD from Special:BotPasswords.')
    wiki = Wiki(api)
    wiki.login(user, password)
    return wiki


def latest_revision(wiki: Wiki, title: str) -> int:
    page = wiki.call(action='query', prop='revisions', rvprop='ids', titles=title)['query']['pages'][0]
    if page.get('missing'):
        raise SystemExit(f'{title} does not exist')
    return page['revisions'][0]['revid']


def cmd_mark(wiki: Wiki, titles):
    for title in titles:
        try:
            revid = latest_revision(wiki, title)
        except SystemExit as error:
            print(error)
            continue
        try:
            wiki.call(
                True,
                action='markfortranslation',
                title=title,
                revid=revid,
                translatetitle='yes',
                prioritylanguages='|'.join(TARGETS),
                forcepriority='yes',
                token=wiki.csrf(),
            )
        except RuntimeError as error:
            print(f'FAILED {title}: {error}')
            continue
        marked = wiki.current_text(title)
        path = source_file(title)
        path.parent.mkdir(parents=True, exist_ok=True)
        path.write_text(marked, encoding='utf-8', newline='\n')
        print(f'marked {title} (rev {revid}); source with unit markers saved to {path.relative_to(ROOT)}')


def units(wiki: Wiki, title: str, lang: str):
    result = []
    params = dict(
        action='query', list='messagecollection', mcgroup=f'page-{title}', mclanguage=lang,
        mcprop='definition|translation|tags|properties', mclimit='max',
    )
    while True:
        data = wiki.call(**params)
        result.extend(data['query']['messagecollection'])
        cont = data.get('continue')
        if not cont:
            return result
        params.update(cont)


def cmd_export(wiki: Wiki, titles, langs, only_missing):
    for title in titles:
        for lang in langs:
            out = {}
            for unit in units(wiki, title, lang):
                outdated = 'fuzzy' in unit.get('tags', [])
                missing = unit.get('translation') in (None, '')
                if only_missing and not (missing or outdated):
                    continue
                key = unit['key'].split('/')[-1]
                out[key] = {
                    'source': unit['definition'],
                    'translation': '' if missing else unit['translation'].replace('!!FUZZY!!', ''),
                    'outdated': outdated,
                }
            path = TRANSLATIONS / lang / f'{title.replace(":", "~")}.json'
            path.parent.mkdir(parents=True, exist_ok=True)
            path.write_text(json.dumps(out, ensure_ascii=False, indent=1) + '\n', encoding='utf-8', newline='\n')
            print(f'{title} [{lang}]: {len(out)} unit(s) -> {path.relative_to(ROOT)}')


def cmd_import(wiki: Wiki, titles, langs, summary):
    for title in titles:
        for lang in langs:
            path = TRANSLATIONS / lang / f'{title.replace(":", "~")}.json'
            if not path.exists():
                continue
            data = json.loads(path.read_text(encoding='utf-8'))
            existing = {}
            for unit in units(wiki, title, lang):
                current = unit.get('translation')
                if current not in (None, ''):
                    existing[unit['key'].split('/')[-1]] = (current.replace('!!FUZZY!!', ''), 'fuzzy' in unit.get('tags', []))
            done = 0
            for key, entry in data.items():
                text = (entry.get('translation') or '').strip('\n')
                if not text:
                    continue
                current, fuzzy = existing.get(key, (None, False))
                if current is not None and current.strip('\n') == text and not fuzzy:
                    continue
                wiki.edit(f'Translations:{title}/{key}/{lang}', text, 'wikitext', summary)
                done += 1
            print(f'{title} [{lang}]: {done} unit(s) saved')


def main() -> int:
    parser = argparse.ArgumentParser(description='Translate extension helpers for the DragonMineZ wiki.')
    parser.add_argument('command', choices=['mark', 'export', 'import'])
    parser.add_argument('titles', nargs='*')
    parser.add_argument('--every-page', action='store_true', help='every content page that contains <translate>')
    parser.add_argument('--api', default=os.environ.get('MW_API', 'https://wiki.dragonminez.com/api.php'))
    parser.add_argument('--lang', action='append', choices=TARGETS)
    parser.add_argument('--all', action='store_true', help='export every unit, not only missing or outdated ones')
    parser.add_argument('--summary', default='Translation sync from dragonminez-wiki repository')
    args = parser.parse_args()
    titles = list(args.titles)
    if args.every_page:
        for path in sorted((PAGES / 'Main').rglob('*.wiki')):
            if '<translate>' in path.read_text(encoding='utf-8'):
                titles.append('/'.join(path.relative_to(PAGES / 'Main').parts)[: -len('.wiki')])
    if not titles:
        parser.error('give page titles or --every-page')
    wiki = login(args.api)
    langs = args.lang or TARGETS
    if args.command == 'mark':
        cmd_mark(wiki, titles)
    elif args.command == 'export':
        cmd_export(wiki, titles, langs, not args.all)
    else:
        cmd_import(wiki, titles, langs, args.summary)
    return 0


if __name__ == '__main__':
    sys.exit(main())
