#!/usr/bin/env python3
import argparse
import json
import os
import pathlib
import subprocess
import sys
import tempfile
import time
import urllib.request

ROOT = pathlib.Path(__file__).resolve().parent.parent
PAGES = ROOT / 'content' / 'pages'
FILES = ROOT / 'content' / 'files'
TRANSLATIONS = ROOT / 'content' / 'translations'
TOOLS = ROOT / 'tools'
EMPTY_SHA = '0' * 40


def changed_paths(base: str):
    if not base or base == EMPTY_SHA:
        return None
    result = subprocess.run(['git', 'diff', '--name-only', '--diff-filter=d', base, 'HEAD'],
                            cwd=ROOT, capture_output=True, text=True)
    if result.returncode != 0:
        print(f'git diff against {base} failed, syncing everything: {result.stderr.strip()}')
        return None
    return [ROOT / line for line in result.stdout.splitlines() if line.strip()]


def page_title(path: pathlib.Path) -> str:
    rel = path.relative_to(PAGES)
    namespace = rel.parts[0]
    name = '/'.join(rel.parts[1:])
    if path.suffix in ('.wiki', '.lua'):
        name = name[: -len(path.suffix)]
    return name if namespace == 'Main' else f'{namespace}:{name}'


def translatable(path: pathlib.Path) -> bool:
    return path.suffix == '.wiki' and path.relative_to(PAGES).parts[0] == 'Main' \
        and '<translate>' in path.read_text(encoding='utf-8')


def run(script: str, *args: str):
    print(f'$ {script} {" ".join(args)[:300]}', flush=True)
    subprocess.run([sys.executable, str(TOOLS / script), *args], cwd=ROOT, check=True)


def pending_jobs(api: str) -> int:
    url = f'{api}?action=query&meta=siteinfo&siprop=statistics&format=json&formatversion=2'
    request = urllib.request.Request(url, headers={'User-Agent': 'DragonMineZ-WikiSync/1.0'})
    with urllib.request.urlopen(request, timeout=60) as response:
        return int(json.loads(response.read())['query']['statistics'].get('jobs', 0))


def marked_pages(api: str) -> set:
    url = f'{api}?action=query&meta=messagegroups&mgprop=id&mgformat=flat&format=json&formatversion=2'
    request = urllib.request.Request(url, headers={'User-Agent': 'DragonMineZ-WikiSync/1.0'})
    with urllib.request.urlopen(request, timeout=60) as response:
        groups = json.loads(response.read())['query']['messagegroups']
    return {group['id'][len('page-'):] for group in groups if group['id'].startswith('page-')}


def wait_for_jobs(api: str, limit: int, timeout: int):
    deadline = time.time() + timeout
    while True:
        jobs = pending_jobs(api)
        if jobs <= limit or time.time() > deadline:
            print(f'job queue: {jobs} pending', flush=True)
            return
        print(f'job queue: {jobs} pending, waiting…', flush=True)
        time.sleep(30)


def chunks(items, size=40):
    items = list(items)
    for i in range(0, len(items), size):
        yield items[i:i + size]


def main() -> int:
    parser = argparse.ArgumentParser(description='Publish what changed in content/ to the wiki: pages, files, unit markers and translations.')
    parser.add_argument('--base', default='', help='commit to diff against (the push "before" SHA); empty or zeros = everything')
    parser.add_argument('--full', action='store_true', help='sync every page, file and translation')
    parser.add_argument('--api', default=os.environ.get('MW_API', 'https://wiki.dragonminez.com/api.php'))
    parser.add_argument('--job-limit', type=int, default=10, help='queue size considered drained before importing translations')
    parser.add_argument('--job-timeout', type=int, default=1200, help='seconds to wait for the queue')
    parser.add_argument('--dry-run', action='store_true', help='only print what would be published')
    parser.add_argument('--base-ref', default='', help='commit that matched the wiki at the last sync; what was edited on the wiki since then is not overwritten')
    args = parser.parse_args()

    paths = None if args.full else changed_paths(args.base)
    full = paths is None
    if not full:
        paths = [p for p in paths if p.exists()]
        pages = [p for p in paths if PAGES in p.parents and p.suffix in ('.wiki', '.lua', '.css', '.js', '.json')]
        files = [p for p in paths if FILES in p.parents]
        translated = sorted({p.stem.replace('~', ':') for p in paths if TRANSLATIONS in p.parents and p.suffix == '.json'})
        if not pages and not files and not translated:
            print('Nothing under content/ changed.')
            return 0
    if args.dry_run and not full:
        print(f'{len(pages)} page(s): ' + ', '.join(page_title(p) for p in pages))
        print(f'{len(files)} file(s): ' + ', '.join(p.name for p in files))
        print('mark: ' + ', '.join(page_title(p) for p in pages if translatable(p)))
        print('import: ' + ', '.join(sorted({page_title(p) for p in pages if translatable(p)} | set(translated))))
        return 0
    api = ['--api', args.api]
    guard = [f'--base-ref={args.base_ref}'] if args.base_ref else []

    if full:
        with tempfile.TemporaryDirectory() as tmp:
            report = pathlib.Path(tmp) / 'changed.txt'
            run('push_pages.py', *api, *guard, f'--changed-list={report}', *(['--dry-run'] if args.dry_run else []))
            edited = set(report.read_text(encoding='utf-8').splitlines()) if report.exists() else set()
        marked = marked_pages(args.api)
        to_mark = sorted(title for title in (page_title(p) for p in PAGES.rglob('*.wiki') if translatable(p))
                         if title in edited or title not in marked)
        if args.dry_run:
            print(f'mark: {len(to_mark)} page(s): ' + ', '.join(to_mark))
            print('import: every page (units that already match are skipped)')
            return 0
    else:
        only = [f'--only={page_title(p)}' for p in pages] + [f'--only=File:{p.name}' for p in files]
        for batch in chunks(only, 200):
            run('push_pages.py', *api, *guard, *batch)
        to_mark = sorted(page_title(p) for p in pages if translatable(p))

    for batch in chunks(to_mark):
        run('translations.py', 'mark', *batch, *api)

    def import_translations(titles):
        if titles is None:
            run('translations.py', 'import', '--every-page', *api, *guard)
            return
        for batch in chunks(titles):
            run('translations.py', 'import', *batch, *api, *guard)

    to_import = None if full else sorted(set(to_mark) | set(translated))
    if full or to_import:
        wait_for_jobs(args.api, args.job_limit, args.job_timeout)
        import_translations(to_import)
    if to_mark:
        wait_for_jobs(args.api, args.job_limit, args.job_timeout)
        import_translations(to_mark)
    return 0


if __name__ == '__main__':
    sys.exit(main())
