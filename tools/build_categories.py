#!/usr/bin/env python3
import argparse
import pathlib
import re
import sys

sys.path.insert(0, str(pathlib.Path(__file__).resolve().parent))
import build_templates as bt

ROOT = bt.ROOT
PAGES = bt.PAGES
CATEGORY_DIR = PAGES / 'Category'
LANGUAGES = ('es', 'pt')

HUBS = {
    'Forms': 'Transformations',
    'Dragons': 'Dragons and Wishes',
    'Wildlife': 'Bestiary',
    'Hostile mobs': 'Bestiary',
    'NPCs': 'Bestiary',
    'Raid enemies': 'Raids',
    'Tournament fighters': 'Tournaments',
    'World boss minions': 'World Bosses',
    'Playable races': 'Races',
    'Sub-races': 'Races',
    'Earth masters': 'Masters',
    'Otherworld masters': 'Masters',
    'Evil masters': 'Masters',
}

HIDDEN = {'Pages with DRUID infoboxes', 'Infoboxes missing image labels'}

TEXT = {
    'en': 'For an overview, start with the {link} page.',
    'es': 'Para una visión general, empieza por la página {link}.',
    'pt': 'Para uma visão geral, comece pela página {link}.',
}
HIDDEN_TEXT = 'Tracking category filled automatically by templates. It is hidden from readers.'

CATEGORY_LINK = re.compile(r'\[\[\s*Category\s*:\s*([^|\]{]+?)\s*(?:\{\{#translation:\}\})?\s*(?:\|[^\]]*)?\]\]')


def used_categories() -> set:
    found = {category for _, (_, category, _) in bt.INFOBOXES.items()}
    for path in PAGES.rglob('*'):
        if not path.is_file() or path.suffix not in {'.wiki', '.lua'}:
            continue
        if path.relative_to(PAGES).parts[0] == 'Category':
            continue
        for match in CATEGORY_LINK.finditer(path.read_text(encoding='utf-8')):
            name = match.group(1).strip()
            if name.endswith('/'):
                name = name[:-1]
            if name:
                found.add(name[0].upper() + name[1:])
    return found


def page_exists(title: str) -> bool:
    return (PAGES / 'Main' / f'{title}.wiki').exists()


def names() -> dict:
    merged = bt.registry_labels()
    merged.update(bt.LABELS)
    merged.update(bt.HUB_NAMES)
    merged.update(bt.NAMES)
    merged.update(bt.official_names())
    return merged


def write(path: pathlib.Path, text: str, force: bool) -> bool:
    if path.exists() and not force:
        return False
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(text, encoding='utf-8', newline='\n')
    return True


def main() -> int:
    parser = argparse.ArgumentParser(description='Create Category pages (and their /es and /pt versions) for every category in use.')
    parser.add_argument('--force', action='store_true', help='overwrite category pages that already exist')
    args = parser.parse_args()

    localized = names()
    written = 0
    missing_hub = []
    for category in sorted(used_categories()):
        if category in HIDDEN:
            written += write(CATEGORY_DIR / f'{category}.wiki', f'__HIDDENCAT__\n{HIDDEN_TEXT}\n', False)
            continue
        hub = HUBS.get(category, category)
        if not page_exists(hub):
            missing_hub.append(category)
            hub = None
        for lang in ('en',) + LANGUAGES:
            path = CATEGORY_DIR / (f'{category}.wiki' if lang == 'en' else f'{category}/{lang}.wiki')
            if hub:
                label = hub if lang == 'en' else localized.get(hub, (hub, hub))[LANGUAGES.index(lang)]
                body = TEXT[lang].format(link=f'[[Special:MyLanguage/{hub}|{label}]]')
            else:
                body = ''
            written += write(path, body + '\n', args.force)
    print(f'{written} category page(s) written')
    if missing_hub:
        print('No hub page found for: ' + ', '.join(missing_hub))
    return 0


if __name__ == '__main__':
    sys.exit(main())
