#!/usr/bin/env python3
import argparse
import gzip
import json
import os
import pathlib
import re
import sys
import urllib.request
import zipfile

sys.path.insert(0, str(pathlib.Path(__file__).resolve().parent))
import build_templates as bt

ROOT = bt.ROOT
PAGES = bt.PAGES
LANGS = ('en', 'es', 'pt')
I18N = ROOT / 'docs' / 'registry' / 'sidequests-i18n.tsv'

CATEGORIES = ['general', 'story', 'training', 'exploration', 'combat', 'collection', 'tech']

NPC_PAGES = {
    'baba_earth': 'Fortuneteller Baba', 'bulma': 'Bulma', 'dende': 'Dende', 'gohan': 'Gohan', 'goku': 'Goku',
    'guru': 'Grand Elder Guru', 'karin': 'Korin', 'kingkai': 'King Kai', 'krillin': 'Krillin', 'oldkai': 'Old Kai',
    'piccolo': 'Piccolo', 'popo': 'Mr. Popo', 'roshi': 'Master Roshi', 'trunks': 'Trunks', 'vegeta': 'Vegeta',
    'yamcha': 'Yamcha',
}

STRUCTURE_PAGES = {
    'dragonminez:babidi': "Babidi's Spaceship", 'dragonminez:buu_house': "Majin Buu's House",
    'dragonminez:elder_guru': "Grand Elder's House", 'dragonminez:gero_lab': "Dr. Gero's Lab",
    'dragonminez:goku_house': "Goku's House", 'dragonminez:kamilookout': "Kami's Lookout",
    'dragonminez:namek_ruins': 'Namekian Ruins', 'dragonminez:roshi_house': 'Kame House',
    'dragonminez:rrtower': 'Red Ribbon Tower', 'dragonminez:timechamber': 'Hyperbolic Time Chamber',
    'dragonminez:village_ajissa': 'Namekian Village', 'dragonminez:village_sacred': 'Sacred Kai Planet',
}

DIMENSION_PAGES = {
    'minecraft:overworld': 'Earth', 'dragonminez:namek': 'Namek', 'dragonminez:otherworld': 'Otherworld',
    'dragonminez:sacredkaiplanet': 'Sacred Kai Planet', 'dragonminez:demon_realm': 'Demon Realm',
}

ENTITY_PAGES = {
    'dragonminez:bandit': 'Bandit', 'dragonminez:giant_fish': 'Giant Fish', 'dragonminez:red_ribbon_soldier': 'Red Ribbon Army',
    '#dragonminez:red_ribbon_robots': 'Red Ribbon Army', '#dragonminez:frieza_soldiers': 'Frieza Soldier',
    'dragonminez:saga_turles': 'Turles', 'dragonminez:saga_gete_robot': 'Gete Robot',
}

ITEM_PAGES = {
    'dragonminez:senzu_bean': 'Senzu Bean', 'dragonminez:dball_radar': 'Dragon Radar',
    'dragonminez:namekdball_radar': 'Dragon Radar', 'dragonminez:fused_dball_radar': 'Dragon Radar',
    'dragonminez:z_sword': 'Z Sword', 'dragonminez:kikono_cloth': 'Kikono Materials', 'dragonminez:kikono_shard': 'Kikono Materials',
    'dragonminez:anti_ki_cloak': 'Anti-Ki Cloaking Device', 'dragonminez:ki_battery': 'Ki Battery',
    'dragonminez:medi_bug_ant': 'Medi-Bugs', 'dragonminez:medi_bug_beetle_pair': 'Medi-Bugs', 'dragonminez:medi_bug_rhino': 'Medi-Bugs',
    'dragonminez:medi_bug_worm': 'Medi-Bugs', 'dragonminez:giant_fish_cooked': 'Food', 'dragonminez:pattern_gete': 'Gete Tech',
    'dragonminez:gete_block': 'Gete Tech', 'dragonminez:gete_ingot': 'Gete Tech', 'dragonminez:gete_scrap': 'Gete Tech',
    'dragonminez:gete_orange_capsule': 'Gete Tech', 'dragonminez:gete_red_capsule': 'Gete Tech',
}

SKILL_PAGES = {'kisense': 'Ki Sense', 'meditation': 'Meditation', 'ultimate': 'Ultimate'}
BIOME_PAGES = {'dragonminez:hyperbolic_time_chamber': 'Hyperbolic Time Chamber'}
DRAGON_PAGES = {'shenron': 'Shenron', 'porunga': 'Porunga'}

TAG_NAMES = {
    '#dragonminez:is_plains': ('any plains biome', 'cualquier bioma de llanuras', 'qualquer bioma de planícies'),
    '#minecraft:is_mountain': ('any mountain biome', 'cualquier bioma de montaña', 'qualquer bioma de montanha'),
    '#dragonminez:red_ribbon_robots': ('Red Ribbon robots', 'robots de la Red Ribbon', 'robôs da Red Ribbon'),
    '#dragonminez:frieza_soldiers': ("Frieza's soldiers", 'soldados de Freezer', 'soldados de Freeza'),
}

BALL_SETS = {
    'earth': ('Earth', 'de la Tierra', 'da Terra'),
    'namek': ('Namek', 'de Namek', 'de Namekusei'),
    'demon': ('Demon Realm', 'del Reino Demoníaco', 'do Reino Demoníaco'),
}

PHRASES = {
    'deliver': ('Deliver {count} × {item} to {npc}', 'Entrega {count} × {item} a {npc}', 'Entregue {count} × {item} para {npc}'),
    'talk': ('Talk to {npc}', 'Habla con {npc}', 'Fale com {npc}'),
    'kill': ('Defeat {count} × {entity}', 'Derrota a {count} × {entity}', 'Derrote {count} × {entity}'),
    'kill_one': ('Defeat {entity}', 'Derrota a {entity}', 'Derrote {entity}'),
    'spawned': (' (spawned by the quest, {health} health)', ' (aparece con la misión, {health} de vida)', ' (surge com a missão, {health} de vida)'),
    'spar': ('Spar with {entity} and win without killing them', 'Entrena con {entity} y gana sin matarlo', 'Treine com {entity} e vença sem matá-lo'),
    'biome': ('Go to {biome}', 'Ve a {biome}', 'Vá para {biome}'),
    'structure': ('Find {structure}', 'Encuentra {structure}', 'Encontre {structure}'),
    'item': ('Obtain {count} × {item}', 'Consigue {count} × {item}', 'Obtenha {count} × {item}'),
    'skill': ('Reach {skill} level {level}', 'Sube {skill} al nivel {level}', 'Alcance o nível {level} de {skill}'),
    'dragon': ('Summon {dragon} with the {set} Dragon Balls', 'Invoca a {dragon} con las Esferas del Dragón {set}', 'Invoque {dragon} com as Esferas do Dragão {set}'),
    'unlock_saga': ('{saga}, quest {quest}: {name}', '{saga}, misión {quest}: {name}', '{saga}, missão {quest}: {name}'),
    'unlock_quest': ('Complete {name}', 'Completa {name}', 'Conclua {name}'),
    'level': ('Level {level}', 'Nivel {level}', 'Nível {level}'),
    'align_min': ('Alignment {value} or higher', 'Alineamiento de {value} o más', 'Alinhamento {value} ou mais'),
    'align_max': ('Alignment {value} or lower', 'Alineamiento de {value} o menos', 'Alinhamento {value} ou menos'),
    'in_dimension': ('Be in {place}', 'Estar en {place}', 'Estar em {place}'),
    'in_biome': ('Be in {place}', 'Estar en {place}', 'Estar em {place}'),
    'at_structure': ('Be at {place}', 'Estar en {place}', 'Estar em {place}'),
    'has_skill': ('{skill} level {level} or higher', '{skill} al nivel {level} o más', '{skill} no nível {level} ou mais'),
    'attributes': ('×{amount} [[Special:MyLanguage/Stats and Attributes|Attributes]]', '×{amount} [[Special:MyLanguage/Stats and Attributes|Atributos]]', '×{amount} [[Special:MyLanguage/Stats and Attributes|Atributos]]'),
    'reward_item': ('{count} × {item}', '{count} × {item}', '{count} × {item}'),
    'biome_a': ('a {biome} biome', 'un bioma de {biome}', 'um bioma de {biome}'),
    'none': ('None', 'Ninguno', 'Nenhum'),
}

CATEGORY_KEYS = {c: f'gui.dragonminez.story.sidequests.category.{c}' for c in CATEGORIES}


def strip_codes(text: str) -> str:
    return re.sub('§.', '', text or '').strip()


def number(value, lang: str) -> str:
    text = f'{int(round(value)):,}'
    return text.replace(',', chr(160)) if lang in ('es', 'pt') else text


class Names:
    def __init__(self, mod: pathlib.Path, glossary: pathlib.Path):
        self.en = json.loads((mod / 'src/main/resources/assets/dragonminez/lang/en_us.json').read_text(encoding='utf-8'))
        self.mod = {'es': self._load(glossary / 'es_ES.json'), 'pt': self._load(glossary / 'pt_BR.json')}
        self.mc = {lang: self._load(glossary / f'mc_{code}.json') for lang, code in (('en', 'en_us'), ('es', 'es_es'), ('pt', 'pt_br'))}
        self.labels = self._labels()
        self.i18n = self._i18n()
        self.used = {}

    @staticmethod
    def _load(path: pathlib.Path) -> dict:
        if not path.exists():
            return {}
        return json.loads(path.read_text(encoding='utf-8'))

    @staticmethod
    def _labels() -> dict:
        merged = bt.registry_labels()
        merged.update(bt.LABELS)
        merged.update(bt.HUB_NAMES)
        merged.update(bt.NAMES)
        return merged

    @staticmethod
    def _i18n() -> dict:
        rows = {}
        if I18N.exists():
            for line in I18N.read_text(encoding='utf-8').splitlines():
                parts = line.split('\t')
                if len(parts) >= 4 and parts[0] and not parts[0].startswith('#'):
                    rows[parts[0]] = (parts[2].strip(), parts[3].strip())
        return rows

    def key(self, key: str):
        en = strip_codes(self.en.get(key, ''))
        if not en:
            return None
        out = {'en': en}
        official = []
        for i, lang in enumerate(('es', 'pt')):
            override = self.i18n.get(key, ('', ''))[i]
            crowdin = strip_codes(self.mod[lang].get(key, ''))
            official.append(crowdin)
            out[lang] = override or crowdin or en
        if not all(official):
            self.used[key] = en
        return out

    def write_i18n(self) -> int:
        rows = dict(self.i18n)
        header = chr(9).join(['# key', 'en', 'es', 'pt']) + '  (texts with no official Crowdin translation; empty = falls back to English)'
        lines = [header]
        missing = 0
        for key in sorted(self.used):
            es, pt = rows.get(key, ('', ''))
            if not es or not pt:
                missing += 1
            text = self.used[key].replace(chr(9), ' ').replace(chr(10), ' ')
            lines.append(chr(9).join([key, text, es, pt]))
        I18N.parent.mkdir(parents=True, exist_ok=True)
        I18N.write_text(chr(10).join(lines) + chr(10), encoding='utf-8', newline=chr(10))
        return missing

    def page(self, title: str):
        es, pt = self.labels.get(title, (title, title))
        return {'en': title, 'es': es, 'pt': pt}

    def vanilla(self, kind: str, ident: str):
        name = ident.split(':', 1)[1]
        out = {}
        for lang in LANGS:
            table = self.mc[lang]
            for prefix in ([f'{kind}.minecraft.{name}'] + ([f'block.minecraft.{name}'] if kind == 'item' else [])):
                if prefix in table:
                    out[lang] = table[prefix]
                    break
        if 'en' not in out:
            out['en'] = name.replace('_', ' ').title()
        return {lang: out.get(lang, out['en']) for lang in LANGS}

    def thing(self, kind: str, ident: str):
        if ident in TAG_NAMES:
            return dict(zip(LANGS, TAG_NAMES[ident]))
        namespace, name = ident.split(':', 1)
        if namespace == 'minecraft':
            return self.vanilla(kind, ident)
        keys = [f'{kind}.dragonminez.{name}'] + ([f'block.dragonminez.{name}'] if kind == 'item' else [])
        for key in keys:
            found = self.key(key)
            if found:
                return found
        guess = name.replace('_', ' ').title()
        return {lang: guess for lang in LANGS}


def link(page, text: str) -> str:
    if not page:
        return text
    return f'[[Special:MyLanguage/{page}|{text}]]'


def per_lang(fn):
    return {lang: fn(i, lang) for i, lang in enumerate(LANGS)}


def phrase(key: str, i: int, **values) -> str:
    return PHRASES[key][i].format(**values)


class Builder:
    def __init__(self, names: Names, dump: pathlib.Path):
        self.names = names
        self.dump = dump
        self.saga_quests = {}
        for path in (dump / 'quests').rglob('*.json'):
            quest = json.loads(path.read_text(encoding='utf-8'))
            saga = path.parent.name.replace('saga_', '') + '_saga'
            self.saga_quests[(saga, int(quest['id']))] = quest['title']
        self.sidequests = {}
        for path in sorted((dump / 'sidequests').rglob('*.json')):
            quest = json.loads(path.read_text(encoding='utf-8'))
            self.sidequests[quest['id']] = quest

    def npc(self, ident: str):
        page = NPC_PAGES.get(ident)
        base = self.names.page(page) if page else {lang: ident for lang in LANGS}
        return per_lang(lambda i, lang: link(page, base[lang]))

    def named(self, kind: str, ident: str, pages: dict):
        base = self.names.thing(kind, ident)
        page = pages.get(ident)
        return per_lang(lambda i, lang: link(page, base[lang]))

    def structure(self, ident: str):
        page = STRUCTURE_PAGES.get(ident)
        if page:
            base = self.names.page(page)
            return per_lang(lambda i, lang: link(page, base[lang]))
        return self.names.vanilla('structure', ident) if ident.startswith('minecraft:') else {lang: ident for lang in LANGS}

    def dimension(self, ident: str):
        page = DIMENSION_PAGES.get(ident)
        if page:
            base = self.names.page(page)
            return per_lang(lambda i, lang: link(page, base[lang]))
        base = self.names.vanilla('dimension', ident)
        if ident == 'minecraft:the_nether':
            base = {'en': 'the Nether', 'es': 'el Nether', 'pt': 'o Nether'}
        return base

    def biome(self, ident: str):
        if ident in TAG_NAMES:
            return dict(zip(LANGS, TAG_NAMES[ident]))
        page = BIOME_PAGES.get(ident)
        base = self.names.thing('biome', ident)
        if page:
            return per_lang(lambda i, lang: link(page, base[lang]))
        return per_lang(lambda i, lang: phrase('biome_a', i, biome=base[lang]))

    def skill(self, ident: str):
        base = self.names.key(f'skill.dragonminez.{ident}') or {lang: ident.title() for lang in LANGS}
        page = SKILL_PAGES.get(ident)
        return per_lang(lambda i, lang: link(page, base[lang]))

    def quest_name(self, key: str):
        return self.names.key(key) or {lang: key for lang in LANGS}

    def conditions(self, block):
        if not block:
            return []
        if 'conditions' in block:
            out = []
            for item in block['conditions']:
                out.extend(self.conditions(item))
            return out
        return [block]

    def unlock(self, quest):
        lines = {lang: [] for lang in LANGS}
        for cond in self.conditions(quest.get('prerequisites')):
            kind = cond.get('type')
            if kind == 'SAGA_QUEST':
                saga_id, number_id = cond['sagaId'], int(cond['questId'])
                saga_page = self._saga_page(saga_id)
                saga_name = self.names.page(saga_page) if saga_page else self.quest_name(f'dmz.saga.{saga_id}')
                quest_key = self.saga_quests.get((saga_id, number_id))
                quest_name = self.quest_name(quest_key) if quest_key else {lang: '?' for lang in LANGS}
                for i, lang in enumerate(LANGS):
                    lines[lang].append(phrase('unlock_saga', i, saga=link(saga_page, saga_name[lang]), quest=number_id, name=f"''{quest_name[lang]}''"))
            elif kind == 'QUEST':
                target = self.sidequests.get(cond['questId'])
                name = self.quest_name(target['title']) if target else {lang: cond['questId'] for lang in LANGS}
                for i, lang in enumerate(LANGS):
                    lines[lang].append(phrase('unlock_quest', i, name=f"[[Special:MyLanguage/Sidequests#sq-{cond['questId']}|{name[lang]}]]"))
            elif kind == 'LEVEL':
                for i, lang in enumerate(LANGS):
                    lines[lang].append(phrase('level', i, level=number(cond['minLevel'], lang)))
        for cond in self.conditions(quest.get('requirements')):
            kind = cond.get('type')
            for i, lang in enumerate(LANGS):
                if kind == 'ALIGNMENT':
                    if 'min' in cond:
                        lines[lang].append(phrase('align_min', i, value=cond['min']))
                    if 'max' in cond:
                        lines[lang].append(phrase('align_max', i, value=cond['max']))
                elif kind == 'DIMENSION':
                    lines[lang].append(phrase('in_dimension', i, place=self.dimension(cond['dimension'])[lang]))
                elif kind == 'BIOME':
                    lines[lang].append(phrase('in_biome', i, place=self.biome(cond['biome'])[lang]))
                elif kind == 'STRUCTURE':
                    lines[lang].append(phrase('at_structure', i, place=self.structure(cond['structure'])[lang]))
                elif kind == 'LEVEL':
                    lines[lang].append(phrase('level', i, level=number(cond['minLevel'], lang)))
                elif kind == 'SKILL':
                    lines[lang].append(phrase('has_skill', i, skill=self.skill(cond['skill'])[lang], level=cond.get('minLevel', 1)))
        return lines

    def _saga_page(self, saga_id: str):
        title = strip_codes(self.names.en.get(f'dmz.saga.{saga_id}', ''))
        return title if title and (PAGES / 'Main' / f'{title}.wiki').exists() else None

    def objectives(self, quest):
        lines = {lang: [] for lang in LANGS}
        for obj in quest['objectives']:
            kind = obj['type']
            for i, lang in enumerate(LANGS):
                if kind == 'DELIVER':
                    text = phrase('deliver', i, count=obj['count'], item=self.named('item', obj['item'], ITEM_PAGES)[lang], npc=self.npc(obj['npcId'])[lang])
                elif kind == 'TALK_TO':
                    text = phrase('talk', i, npc=self.npc(obj['npcId'])[lang])
                elif kind in ('KILL', 'SPAR'):
                    entity = self.named('entity', obj['entity'], ENTITY_PAGES)[lang]
                    if kind == 'SPAR':
                        text = phrase('spar', i, entity=entity)
                    elif obj.get('count', 1) == 1:
                        text = phrase('kill_one', i, entity=entity)
                    else:
                        text = phrase('kill', i, count=obj['count'], entity=entity)
                    if obj.get('spawn') == 'QUEST' and obj.get('health'):
                        text += phrase('spawned', i, health=number(obj['health'], lang))
                elif kind == 'BIOME':
                    text = phrase('biome', i, biome=self.biome(obj['biome'])[lang])
                elif kind == 'STRUCTURE':
                    text = phrase('structure', i, structure=self.structure(obj['structure'])[lang])
                elif kind == 'ITEM':
                    text = phrase('item', i, count=obj['count'], item=self.named('item', obj['item'], ITEM_PAGES)[lang])
                elif kind == 'SKILL':
                    text = phrase('skill', i, skill=self.skill(obj['skill'])[lang], level=obj.get('level', 1))
                elif kind == 'DRAGON_SUMMON':
                    dragon = DRAGON_PAGES.get(obj['dragon'], obj['dragon'].title())
                    text = phrase('dragon', i, dragon=link(dragon, self.names.page(dragon)[lang]), set=BALL_SETS.get(obj.get('ball_set'), ('', '', ''))[i])
                else:
                    text = kind
                lines[lang].append(text)
        return lines

    def rewards(self, quest):
        lines = {lang: [] for lang in LANGS}
        for reward in quest['rewards']:
            kind = reward['type']
            for i, lang in enumerate(LANGS):
                if kind == 'ATTRIBUTES':
                    text = phrase('attributes', i, amount=reward['amount'])
                elif kind == 'ITEM':
                    text = phrase('reward_item', i, count=reward['count'], item=self.named('item', reward['item'], ITEM_PAGES)[lang])
                elif kind == 'COMMAND':
                    text = (self.names.key(reward.get('translationKey', '')) or {lang: '?' for lang in LANGS})[lang]
                else:
                    text = kind
                lines[lang].append(text)
        return lines

    def build(self):
        quests = []
        for ident, quest in self.sidequests.items():
            name = self.quest_name(quest['title'])
            desc = self.quest_name(quest['description'])
            quests.append({
                'id': ident,
                'category': quest.get('category', 'general'),
                'giver': quest.get('quest_giver') or '',
                'turnin': quest.get('turn_in') or '',
                'ordered': not quest.get('parallel_objectives', False),
                'repeatable': bool(quest.get('repeatable')),
                'name': name,
                'desc': desc,
                'giverText': self.npc(quest['quest_giver']) if quest.get('quest_giver') else None,
                'unlock': self.unlock(quest),
                'objectives': self.objectives(quest),
                'rewards': self.rewards(quest),
            })
        quests.sort(key=lambda q: (CATEGORIES.index(q['category']) if q['category'] in CATEGORIES else 99, q['id']))
        categories = {}
        for c in CATEGORIES:
            categories[c] = self.names.key(CATEGORY_KEYS[c]) or {lang: c.title() for lang in LANGS}
        return {
            'categories': CATEGORIES,
            'categoryNames': categories,
            'npcs': {ident: page for ident, page in NPC_PAGES.items()},
            'none': dict(zip(LANGS, PHRASES['none'])),
            'quests': quests,
        }


def lua_text(value: str) -> str:
    escaped = value.replace(chr(92), chr(92) * 2).replace("'", chr(92) + "'").replace(chr(10), chr(92) + 'n').replace(chr(13), '')
    return "'" + escaped + "'"


def to_lua(value, indent=0) -> str:
    pad = '\t' * indent
    if value is None:
        return 'nil'
    if isinstance(value, bool):
        return 'true' if value else 'false'
    if isinstance(value, (int, float)):
        return repr(value)
    if isinstance(value, str):
        return lua_text(value)
    if isinstance(value, list):
        if not value:
            return '{}'
        inner = ',\n'.join(pad + '\t' + to_lua(v, indent + 1) for v in value)
        return '{\n' + inner + ',\n' + pad + '}'
    if isinstance(value, dict):
        if not value:
            return '{}'
        items = []
        for k, v in value.items():
            key = k if re.fullmatch(r'[A-Za-z_][A-Za-z0-9_]*', k) else f'[ {lua_text(k)} ]'
            items.append(f'{pad}\t{key} = {to_lua(v, indent + 1)}')
        return '{\n' + ',\n'.join(items) + ',\n' + pad + '}'
    raise TypeError(type(value))


def fetch_glossary(mod: pathlib.Path, glossary: pathlib.Path) -> None:
    glossary.mkdir(parents=True, exist_ok=True)
    manager = (mod / 'src/main/java/com/dragonminez/client/crowdin/CrowdinManager.java').read_text(encoding='utf-8')
    distribution = re.search(r'DISTRIBUTION_HASH\s*=\s*"([^"]+)"', manager).group(1)
    for locale in ('es_ES', 'pt_BR'):
        target = glossary / f'{locale}.json'
        if target.exists():
            continue
        url = f'https://distributions.crowdin.net/{distribution}/content/src/main/resources/assets/dragonminez/lang/{locale}.json'
        with urllib.request.urlopen(urllib.request.Request(url, headers={'User-Agent': 'DragonMineZWiki/1.0'}), timeout=60) as response:
            raw = response.read()
        if raw[:2] == b'\x1f\x8b':
            raw = gzip.decompress(raw)
        target.write_text(json.dumps(json.loads(raw.decode('utf-8')), ensure_ascii=False, indent=1), encoding='utf-8')
    assets = pathlib.Path(os.path.expanduser('~')) / '.gradle' / 'caches' / 'forge_gradle' / 'assets'
    indexes = sorted((assets / 'indexes').glob('*.json'))
    objects = json.loads(indexes[-1].read_text(encoding='utf-8'))['objects'] if indexes else {}
    for code in ('es_es', 'pt_br'):
        target = glossary / f'mc_{code}.json'
        entry = objects.get(f'minecraft/lang/{code}.json')
        if not target.exists() and entry:
            digest = entry['hash']
            target.write_bytes((assets / 'objects' / digest[:2] / digest).read_bytes())
    target = glossary / 'mc_en_us.json'
    if not target.exists():
        classpath = (mod / 'build' / 'classpath' / 'runClient_minecraftClasspath.txt').read_text().splitlines()
        jar = next((line.strip() for line in classpath if line.strip().endswith('client-extra.jar')), None)
        if jar:
            with zipfile.ZipFile(jar) as archive:
                target.write_bytes(archive.read('assets/minecraft/lang/en_us.json'))


def main() -> int:
    parser = argparse.ArgumentParser(description='Build Module:Sidequests/data from the quest files the mod generates.')
    parser.add_argument('--dump', required=True, help='a <world>/dragonminez folder with fresh sidequests/ and quests/ (see tools/questdump)')
    parser.add_argument('--mod', required=True, help='path to the DragonMineZ mod repository')
    parser.add_argument('--glossary', default=str(ROOT / '.cache' / 'glossary'), help='cache for official mod and vanilla translations')
    args = parser.parse_args()
    mod = pathlib.Path(args.mod)
    glossary = pathlib.Path(args.glossary)
    fetch_glossary(mod, glossary)
    names = Names(mod, glossary)
    data = Builder(names, pathlib.Path(args.dump)).build()
    missing = names.write_i18n()
    out = PAGES / 'Module' / 'Sidequests' / 'data.lua'
    out.parent.mkdir(parents=True, exist_ok=True)
    out.write_text('return ' + to_lua(data) + '\n', encoding='utf-8', newline='\n')
    counts = {}
    for quest in data['quests']:
        counts[quest['category']] = counts.get(quest['category'], 0) + 1
    print(f"{len(data['quests'])} sidequests -> {out.relative_to(ROOT)} {counts}")
    print(f'{missing} text(s) still need a Spanish or Portuguese translation in {I18N.relative_to(ROOT)}')
    return 0


if __name__ == '__main__':
    sys.exit(main())
