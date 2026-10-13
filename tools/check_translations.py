#!/usr/bin/env python3
import argparse
import collections
import json
import pathlib
import re
import sys

ROOT = pathlib.Path(__file__).resolve().parent.parent
TRANSLATIONS = ROOT / 'content' / 'translations'

LINK_TARGET = re.compile(r'\[\[\s*([^|\]]+?)\s*(?:\|[^\]]*)?\]\]')
TEMPLATE = re.compile(r'\{\{\s*([^|}]+?)\s*(?:\|[^{}]*)?\}\}')
CODE = re.compile(r'<code>(.*?)</code>', re.S)
TAG = re.compile(r'</?([a-zA-Z][a-zA-Z0-9]*)\b[^>]*>')
NUMBER = re.compile(r'(?<![\w.])\d[\d,.]*\d|(?<![\w.])\d')
EXTERNAL = re.compile(r'\[(https?://\S+)')


def numbers(text: str) -> collections.Counter:
    plain = CODE.sub(' ', LINK_TARGET.sub(' ', text))
    return collections.Counter(re.sub(r'[.,]', '', n) for n in NUMBER.findall(plain))


def problems(source: str, translation: str) -> list:
    issues = []
    if not translation.strip():
        return ['empty']
    if collections.Counter(t.strip() for t in LINK_TARGET.findall(source)) != collections.Counter(t.strip() for t in LINK_TARGET.findall(translation)):
        issues.append('link targets differ')
    if collections.Counter(t.strip() for t in TEMPLATE.findall(source)) != collections.Counter(t.strip() for t in TEMPLATE.findall(translation)):
        issues.append('templates differ')
    if collections.Counter(CODE.findall(source)) != collections.Counter(CODE.findall(translation)):
        issues.append('<code> contents differ')
    if collections.Counter(TAG.findall(source)) != collections.Counter(TAG.findall(translation)):
        issues.append('HTML tags differ')
    if collections.Counter(EXTERNAL.findall(source)) != collections.Counter(EXTERNAL.findall(translation)):
        issues.append('external links differ')
    if numbers(source) != numbers(translation):
        issues.append('numbers differ')
    for marker in ("'''", '[[', ']]', '{{', '}}'):
        if source.count(marker) != translation.count(marker):
            issues.append(f'count of {marker} differs')
    if source.lstrip().startswith(('*', '#', '=', ':', ';')) and translation.lstrip()[:1] != source.lstrip()[:1]:
        issues.append('line prefix differs')
    if source.count('\n') != translation.count('\n'):
        issues.append('line count differs')
    return issues


def main() -> int:
    parser = argparse.ArgumentParser(description='Check exported translation files against their English source.')
    parser.add_argument('pages', nargs='*', help='page titles (default: every exported file)')
    parser.add_argument('--lang', action='append', choices=['es', 'pt'])
    parser.add_argument('--allow-empty', action='store_true', help='do not report units that are still untranslated')
    args = parser.parse_args()
    langs = args.lang or ['es', 'pt']
    total = flagged = 0
    for lang in langs:
        folder = TRANSLATIONS / lang
        files = [folder / f'{title.replace(":", "~")}.json' for title in args.pages] if args.pages else sorted(folder.glob('*.json'))
        for path in files:
            if not path.exists():
                print(f'{lang} {path.stem}: no export file')
                flagged += 1
                continue
            data = json.loads(path.read_text(encoding='utf-8'))
            for key, entry in data.items():
                total += 1
                found = problems(entry.get('source', ''), entry.get('translation', '') or '')
                if args.allow_empty and found == ['empty']:
                    continue
                if entry.get('outdated') and found != ['empty']:
                    found.append('outdated: the English changed, review it and set "outdated" to false')
                if found:
                    flagged += 1
                    print(f'{lang} {path.stem} #{key}: {", ".join(found)}')
    print(f'{total} unit(s) checked, {flagged} with problems')
    return 1 if flagged else 0


if __name__ == '__main__':
    sys.exit(main())
