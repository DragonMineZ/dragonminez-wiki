#!/usr/bin/env python3
import argparse
import csv
import json
import pathlib
import shutil

ROOT = pathlib.Path(__file__).resolve().parent.parent
REGISTRY = ROOT / 'docs' / 'registry'
FORMS_TSV = REGISTRY / 'race-forms.tsv'
BODIES_TSV = REGISTRY / 'race-bodies.tsv'
DATA_LUA = ROOT / 'content' / 'pages' / 'Module' / 'Forms' / 'data.lua'
FILES = ROOT / 'content' / 'files'

PAGES = {
    'human': 'Human', 'android': 'Android', 'saiyan': 'Saiyan', 'namekian': 'Namekian',
    'frostdemon': 'Frost Demon', 'bioandroid': 'Bio-Android', 'majin': 'Majin', 'glind': 'Glind',
}
GROUP_ORDER = {
    'saiyan': ['oozaru', 'ssgrades', 'supersaiyan', 'legendaryforms', 'falseform', 'godritual'],
    'human': ['superforms', 'legendaryforms'],
    'android': ['androidforms'],
    'namekian': ['superforms', 'legendaryforms'],
    'frostdemon': ['evolutionforms', 'legendaryforms'],
    'bioandroid': ['bioevolution', 'legendaryforms'],
    'majin': ['pureforms', 'legendaryforms'],
    'glind': ['superforms', 'legendaryforms'],
}
BODY_TABS = {
    'gendered': [('Male 1', 'male_1'), ('Male 2', 'male_2'), ('Female 1', 'female_1'), ('Female 2', 'female_2')],
    'majin': [('Male 1', 'male_0'), ('Male 2', 'male_1'), ('Male 3', 'male_2'), ('Female 1', 'female_0'), ('Female 2', 'female_1'), ('Female 3', 'female_2')],
    'types': [('Type 1', 'male_0'), ('Type 2', 'male_1'), ('Type 3', 'male_2')],
    'bioandroid': [('Type 1', 'male_0'), ('Type 1 (spotted)', 'male_3'), ('Type 2', 'male_1'), ('Type 2 (spotted)', 'male_4'), ('Type 3', 'male_2'), ('Type 3 (spotted)', 'male_5')],
}
SINGLE_MODEL = {('saiyan', 'oozaru', 'oozaru'), ('saiyan', 'oozaru', 'goldenoozaru'), ('majin', 'legendaryforms', 'innocencedemon'),
                ('majin', 'legendaryforms', 'giantinnocencedemon'), ('majin', 'legendaryforms', 'superdemon'), ('glind', 'superforms', 'trueform')}
RACE_TABS = {'human': 'gendered', 'android': 'gendered', 'saiyan': 'gendered', 'glind': 'gendered',
             'majin': 'majin', 'namekian': 'types', 'frostdemon': 'types', 'bioandroid': 'bioandroid'}


def config_race(race):
    return 'human' if race == 'android' else race


MANUAL = {
    'False Form': ('Forma Falsa', 'Forma Falsa'),
    'God Ritual': ('Ritual Divino', 'Ritual Divino'),
    'False Super Saiyan': ('Falso Super Saiyajin', 'Falso Super Saiyajin'),
    'Super Saiyan God': ('Super Saiyajin Dios', 'Super Saiyajin Deus'),
    'Super': ('Super', 'Super'),
    'Legendary': ('Legendario', 'Lendário'),
    'Buffed': ('Potenciado', 'Melhorado'),
    'Out of Control': ('Fuera de Control', 'Fora de Controle'),
    'Absorption': ('Absorción', 'Absorção'),
    'True Form': ('Forma Verdadera', 'Forma Verdadeira'),
    'Transcended': ('Trascendido', 'Transcendido'),
    'Dark King': ('Rey Oscuro', 'Rei das Trevas'),
    'Time Power: Dark King': ('Poder del Tiempo: Rey Oscuro', 'Poder do Tempo: Rei das Trevas'),
    'Time Power: Realm of Light': ('Poder del Tiempo: Reino de la Luz', 'Poder do Tempo: Reino da Luz'),
}


def glossary(mod):
    names = {}
    with (REGISTRY / 'glossary.tsv').open(encoding='utf-8') as handle:
        for row in csv.reader(handle, delimiter='\t'):
            if len(row) >= 4 and row[3].startswith('race.dragonminez.'):
                names[row[3]] = {'en': row[0], 'es': row[1], 'pt': row[2]}
    if mod:
        english = json.loads((pathlib.Path(mod) / 'src/main/resources/assets/dragonminez/lang/en_us.json').read_text(encoding='utf-8'))
        cache = ROOT / '.cache' / 'glossary'
        crowdin = {lang: json.loads((cache / f'{file}.json').read_text(encoding='utf-8')) if (cache / f'{file}.json').exists() else {}
                   for lang, file in (('es', 'es_ES'), ('pt', 'pt_BR'))}
        for key, text in english.items():
            if not key.startswith('race.dragonminez.') or key in names:
                continue
            manual = MANUAL.get(text, (None, None))
            names[key] = {'en': text, 'es': crowdin['es'].get(key) or manual[0] or text, 'pt': crowdin['pt'].get(key) or manual[1] or text}
    return names


def form_file(race, group, form):
    return f'Race form {race} {group} {form}.png'.replace('_', ' ')


def body_file(race, label, first):
    return f'{PAGES[race]}.png' if first else f'{PAGES[race]} ({label}).png'


def modifiers(form):
    found = {}
    for key, field in (('speed', 'speedMultiplier'), ('stamina', 'staminaDrainMultiplier'), ('attack', 'attackSpeed')):
        value = form.get(field)
        if value is not None and abs(value - 1.0) > 1e-9:
            found[key] = value
    scale = (form.get('modelScaling') or [1.0])[0]
    if scale >= 2:
        found['size'] = scale
    return found


def collect(config_dir, keyed_dir, mod):
    names = glossary(mod)
    forms, bodies = [], []
    for race, groups in GROUP_ORDER.items():
        for group in groups:
            path = config_dir / config_race(race) / 'forms' / f'{group}.json'
            data = json.loads(path.read_text(encoding='utf-8'))
            for key, form in data.get('forms', {}).items():
                name = form.get('name') or key
                file = form_file(race, group, name)
                source = keyed_dir / f'{race}_form_{group}_{name}.png'
                if group == 'androidforms' and name == 'androidbase':
                    file = body_file(race, BODY_TABS[RACE_TABS[race]][0][0], True)
                    source = keyed_dir / f'{race}_body_{BODY_TABS[RACE_TABS[race]][0][1]}.png'
                elif (race, group, name) in SINGLE_MODEL:
                    source = keyed_dir / 'single' / f'{race}_form_{group}_{name}_male.png'
                forms.append((race, group, name, file, source, modifiers(form)))
        for index, (label, suffix) in enumerate(BODY_TABS[RACE_TABS[race]]):
            bodies.append((race, label, suffix, body_file(race, label, index == 0), keyed_dir / f'{race}_body_{suffix}.png'))
    return names, forms, bodies


def lua_string(value):
    return "'" + value.replace('\\', '\\\\').replace("'", "\\'") + "'"


def write_data(names, forms):
    lines = ['return {']
    for race, groups in GROUP_ORDER.items():
        lines.append(f'\t[{lua_string(race)}] = {{')
        for group in groups:
            group_names = names.get(f'race.dragonminez.{config_race(race)}.group.{group}', {'en': group, 'es': group, 'pt': group})
            lines.append(f"\t\t{{ key = {lua_string(group)}, name = {{ en = {lua_string(group_names['en'])}, es = {lua_string(group_names['es'])}, pt = {lua_string(group_names['pt'])} }}, forms = {{")
            for f_race, f_group, form, file, _, mods in forms:
                if f_race != race or f_group != group:
                    continue
                fallback = group_names if form == group else {lang: form.replace('_', ' ').title() for lang in ('en', 'es', 'pt')}
                form_names = names.get(f'race.dragonminez.{config_race(race)}.form.{group}.{form}', fallback)
                if form_names is fallback:
                    print(f'no in-game name for {race} {group} {form}: using {fallback["en"]}')
                extra = ''.join(f', {key} = {value:g}' for key, value in mods.items())
                lines.append(f"\t\t\t{{ key = {lua_string(form)}, file = {lua_string(file)}, name = {{ en = {lua_string(form_names['en'])}, es = {lua_string(form_names['es'])}, pt = {lua_string(form_names['pt'])} }}{extra} }},")
            lines.append('\t\t} },')
        lines.append('\t},')
    lines.append('}')
    DATA_LUA.parent.mkdir(parents=True, exist_ok=True)
    DATA_LUA.write_text('\n'.join(lines) + '\n', encoding='utf-8', newline='\n')


def main():
    parser = argparse.ArgumentParser(description='Build Module:Forms/data and copy race renders into content/files.')
    parser.add_argument('--config', required=True, help='a generated config/dragonminez/races folder (defaults)')
    parser.add_argument('--keyed', help='folder with keyed race renders (<race>_form_<group>_<form>.png, <race>_body_<gender>_<n>.png)')
    parser.add_argument('--mod', help='DragonMineZ repository, for English names missing from the glossary')
    args = parser.parse_args()
    names, forms, bodies = collect(pathlib.Path(args.config), pathlib.Path(args.keyed) if args.keyed else pathlib.Path('.'), args.mod)
    write_data(names, forms)
    with FORMS_TSV.open('w', encoding='utf-8', newline='\n') as handle:
        handle.write('# race\tgroup\tform\tfile\n')
        for race, group, form, file, *_ in forms:
            handle.write(f'{race}\t{group}\t{form}\t{file}\n')
    with BODIES_TSV.open('w', encoding='utf-8', newline='\n') as handle:
        handle.write('# race\ttab\tbody\tfile\n')
        for race, label, suffix, file, _ in bodies:
            handle.write(f'{race}\t{label}\t{suffix}\t{file}\n')
    missing = []
    if args.keyed:
        for item in forms + bodies:
            file, source = item[3], item[4]
            if source.exists():
                shutil.copyfile(source, FILES / file)
            else:
                missing.append(source.name)
    print(f'{len(forms)} forms, {len(bodies)} body tabs; missing renders: {missing}')


if __name__ == '__main__':
    main()
