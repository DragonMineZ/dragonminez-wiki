import pathlib
import re
import subprocess

ROOT = pathlib.Path(__file__).resolve().parent.parent
CONTENT = ROOT / 'content'
PAGES = CONTENT / 'pages'
FILES = CONTENT / 'files'
TRANSLATIONS = CONTENT / 'translations'

_UNIT_MARKER = re.compile(r'<!--T:[^>]*-->\n')
_INLINE_MARKER = re.compile(r'[ \t]*<!--T:[^>]*-->')


def normalized(text: str) -> str:
    text = text.replace('\r\n', '\n')
    text = _INLINE_MARKER.sub('', _UNIT_MARKER.sub('', text))
    return '\n'.join(line.rstrip() for line in text.split('\n')).strip('\n')


def at_ref(ref: str, path: pathlib.Path):
    rel = pathlib.Path(path).resolve().relative_to(ROOT.resolve()).as_posix()
    result = subprocess.run(['git', 'show', f'{ref}:{rel}'], cwd=ROOT, capture_output=True)
    return result.stdout if result.returncode == 0 else None
