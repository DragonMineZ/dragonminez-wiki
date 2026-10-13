#!/usr/bin/env python3
import argparse
import json
import os
import pathlib
import sys

sys.path.insert(0, str(pathlib.Path(__file__).resolve().parent))
from push_pages import Wiki  # noqa: E402
from sync_base import at_ref  # noqa: E402

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


def cmd_export(wiki: Wiki, titles, langs):
    for title in titles:
        for lang in langs:
            path = TRANSLATIONS / lang / f'{title.replace(":", "~")}.json'
            previous = json.loads(path.read_text(encoding='utf-8')) if path.exists() else {}
            out = {}
            pending = 0
            for unit in units(wiki, title, lang):
                key = unit['key'].split('/')[-1]
                before = previous.get(key, {})
                from_wiki = (unit.get('translation') or '').replace('!!FUZZY!!', '')
                translation = before.get('translation') or from_wiki
                changed = bool(before) and before.get('source') != unit['definition']
                outdated = bool(translation) and ('fuzzy' in unit.get('tags', []) or changed or before.get('outdated', False))
                out[key] = {'source': unit['definition'], 'translation': translation, 'outdated': outdated}
                if not translation or outdated:
                    pending += 1
            path.parent.mkdir(parents=True, exist_ok=True)
            path.write_text(json.dumps(out, ensure_ascii=False, indent=1) + '\n', encoding='utf-8', newline='\n')
            print(f'{title} [{lang}]: {len(out)} unit(s), {pending} to translate or review -> {path.relative_to(ROOT)}')


def cmd_import(wiki: Wiki, titles, langs, summary, base_ref=None):
    for title in titles:
        for lang in langs:
            path = TRANSLATIONS / lang / f'{title.replace(":", "~")}.json'
            if not path.exists():
                continue
            data = json.loads(path.read_text(encoding='utf-8'))
            base = None
            if base_ref:
                raw = at_ref(base_ref, path)
                base = json.loads(raw) if raw else {}
            existing = {}
            for unit in units(wiki, title, lang):
                existing[unit['key'].split('/')[-1]] = (
                    (unit.get('translation') or '').replace('!!FUZZY!!', '').strip('\n'),
                    'fuzzy' in unit.get('tags', []),
                    (unit.get('definition') or '').strip(),
                )
            done = held = stale = 0
            for key, entry in data.items():
                text = (entry.get('translation') or '').strip('\n')
                if not text or key not in existing:
                    continue
                current, fuzzy, definition = existing[key]
                source = (entry.get('source') or '').strip()
                outdated = bool(entry.get('outdated')) or (bool(source) and source != definition)
                page = f'Translations:{title}/{key}/{lang}'
                if current == text:
                    if not fuzzy or outdated:
                        continue
                    wiki.edit(page, text + '​', 'wikitext', summary)
                elif current:
                    if base is not None and current != ((base.get(key) or {}).get('translation') or '').strip('\n'):
                        held += 1
                        print(f'::warning title=Edited on the wiki::{page} changed on the wiki after the last sync; not overwritten')
                        continue
                    if outdated:
                        stale += 1
                        continue
                elif outdated:
                    text = f'!!FUZZY!!{text}'
                    stale += 1
                wiki.edit(page, text, 'wikitext', summary)
                done += 1
            notes = [f'{held} edited on the wiki, left as they are'] if held else []
            if stale:
                notes.append(f'{stale} out of date (kept or saved as outdated)')
            print(f'{title} [{lang}]: {done} unit(s) saved' + (f' ({"; ".join(notes)})' if notes else ''))


def main() -> int:
    parser = argparse.ArgumentParser(description='Translate extension helpers for the DragonMineZ wiki.')
    parser.add_argument('command', choices=['mark', 'export', 'import'])
    parser.add_argument('titles', nargs='*')
    parser.add_argument('--every-page', action='store_true', help='every content page that contains <translate>')
    parser.add_argument('--api', default=os.environ.get('MW_API', 'https://wiki.dragonminez.com/api.php'))
    parser.add_argument('--lang', action='append', choices=TARGETS)
    parser.add_argument('--summary', default='Translation sync from dragonminez-wiki repository')
    parser.add_argument('--base-ref', help='import: commit that matched the wiki at the last sync; units edited on the wiki since then are not overwritten')
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
        cmd_export(wiki, titles, langs)
    else:
        cmd_import(wiki, titles, langs, args.summary, args.base_ref)
    return 0


if __name__ == '__main__':
    sys.exit(main())
