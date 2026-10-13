#!/usr/bin/env python3
import argparse
import json
import pathlib
import re
import sys

sys.path.insert(0, str(pathlib.Path(__file__).resolve().parent))
import build_sidequests as bs

ROOT = bs.ROOT
REGISTRY = ROOT / 'docs' / 'registry'

GLOSSARY_PREFIXES = [
    'race.dragonminez.', 'item.dragonminez.', 'block.dragonminez.', 'technique.dragonminez.', 'skill.dragonminez.',
    'effect.dragonminez.', 'entity.dragonminez.', 'dmz.saga.', 'dimension.dragonminez.', 'biome.dragonminez.',
    'enchantment.dragonminez.', 'wish.', 'key.dragonminez.', 'attribute.name.', 'gui.dragonminez.',
    'dmz.quest.', 'dmz.sidequest.', 'advancements.dragonminez.',
]
NAME_PREFIXES = GLOSSARY_PREFIXES[:10]


def clean(text: str) -> str:
    return re.sub('§.', '', text or '').strip()


def usable(key: str, text: str) -> bool:
    if not text or len(text) > 60 or '%' in text or '\n' in text:
        return False
    if key.endswith(('.desc', '.description', '.tooltip', '.lore')):
        return False
    return any(key.startswith(prefix) for prefix in GLOSSARY_PREFIXES)


def main() -> int:
    parser = argparse.ArgumentParser(description='Build the translation glossary and the official in-game names from the mod and Crowdin.')
    parser.add_argument('--mod', required=True, help='path to the DragonMineZ mod repository')
    parser.add_argument('--glossary', default=str(ROOT / '.cache' / 'glossary'))
    args = parser.parse_args()
    mod = pathlib.Path(args.mod)
    cache = pathlib.Path(args.glossary)
    bs.fetch_glossary(mod, cache)
    en = json.loads((mod / 'src/main/resources/assets/dragonminez/lang/en_us.json').read_text(encoding='utf-8'))
    es = json.loads((cache / 'es_ES.json').read_text(encoding='utf-8'))
    pt = json.loads((cache / 'pt_BR.json').read_text(encoding='utf-8'))

    rows = {}
    names = {}
    for key, value in en.items():
        english = clean(value)
        if not usable(key, english):
            continue
        spanish, portuguese = clean(es.get(key, '')), clean(pt.get(key, ''))
        if not spanish and not portuguese:
            continue
        rank = next(i for i, prefix in enumerate(GLOSSARY_PREFIXES) if key.startswith(prefix))
        folded = english.casefold()
        if folded not in rows or rank < rows[folded][0]:
            rows[folded] = (rank, english, spanish, portuguese, key)
        if rank < len(NAME_PREFIXES) and spanish and portuguese:
            if folded not in names or rank < names[folded][0]:
                names[folded] = (rank, english, spanish, portuguese)

    REGISTRY.mkdir(parents=True, exist_ok=True)
    lines = ['\t'.join(['# en', 'es', 'pt', 'key']) + '  (official in-game texts: mod en_us.json + Crowdin es-ES / pt-BR)']
    for _, english, spanish, portuguese, key in sorted(rows.values(), key=lambda r: r[1].casefold()):
        lines.append('\t'.join([english, spanish, portuguese, key]))
    (REGISTRY / 'glossary.tsv').write_text('\n'.join(lines) + '\n', encoding='utf-8', newline='\n')

    titles = {path.stem for path in (ROOT / 'content' / 'pages' / 'Main').glob('*.wiki')}
    official = ['\t'.join(['# Title', 'es', 'pt']) + '  (wiki page titles that match an official in-game name; build_templates.py gives them priority)']
    matched = 0
    for title in sorted(titles):
        hit = names.get(title.casefold())
        if hit:
            official.append('\t'.join([title, hit[2], hit[3]]))
            matched += 1
    (REGISTRY / 'official-names.tsv').write_text('\n'.join(official) + '\n', encoding='utf-8', newline='\n')
    print(f'{len(rows)} glossary entries -> docs/registry/glossary.tsv; {matched} page titles with official names -> docs/registry/official-names.tsv')
    return 0


if __name__ == '__main__':
    sys.exit(main())
