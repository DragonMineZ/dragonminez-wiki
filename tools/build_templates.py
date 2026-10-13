#!/usr/bin/env python3
import pathlib

ROOT = pathlib.Path(__file__).resolve().parent.parent
PAGES = ROOT / 'content' / 'pages'

INFOBOXES = {
    'Race': ('race', 'Races', [
        ('General', ['Type', 'Parent race', 'Racial skill', 'Forms', 'Stack forms']),
        ('Gameplay', ['Strengths', 'Playstyle', 'Fusion']),
    ]),
    'Class': ('class', 'Classes', [
        ('General', ['Passive', 'Playstyle', 'Recommended races']),
        ('Stat scaling', ['Strength', 'Strike Power', 'Resistance', 'Vitality', 'Ki Power', 'Energy']),
    ]),
    'Form': ('form', 'Forms', [
        ('General', ['Race', 'Group', 'Form type', 'Requirements']),
        ('Stats', ['Multiplier', 'Drain', 'Mastery']),
    ]),
    'Master': ('master', 'Masters', [
        ('General', ['Location', 'Structure', 'Alignment', 'Locate']),
        ('Training', ['Teaches', 'Training', 'Services']),
    ]),
    'Dimension': ('dimension', 'Dimensions', [
        ('General', ['Gravity', 'Access', 'Biomes']),
        ('Content', ['Resources', 'Inhabitants', 'Structures', 'Bosses']),
    ]),
    'Structure': ('structure', 'Structures', [
        ('General', ['Dimension', 'Biome', 'Location', 'Locate']),
        ('Content', ['Inhabitants', 'Purpose', 'Protection']),
    ]),
    'Mob': ('mob', 'Bestiary', [
        ('General', ['Type', 'Dimension', 'Spawns', 'Behavior']),
        ('Combat', ['Health', 'Damage', 'Ki damage', 'Abilities']),
        ('Rewards', ['Drops', 'TP reward']),
    ]),
    'World Boss': ('world-boss', 'World Bosses', [
        ('General', ['World', 'Lair', 'Coordinates', 'How to find', 'Boss key', 'Respawn']),
        ('Combat', ['Health', 'Transforms into', 'Transformed health', 'Minions', 'Signature moves']),
        ('Rewards', ['Reward', 'Drops', 'Techniques']),
    ]),
    'Raid': ('raid', 'Raids', [
        ('General', ['Raid id', 'Dimension', 'Raid site', 'Waves', 'Bosses']),
        ('Scout', ['Scout health', 'Scout melee', 'Scout ki']),
        ('Rewards', ['Rewards', 'Defeat penalty']),
    ]),
    'Tournament': ('tournament', 'Tournaments', [
        ('General', ['Tournament id', 'Host', 'Arena', 'Format', 'Ring', 'Difficulty']),
        ('Fighters', ['Fighters', 'Final']),
        ('Rewards', ['Rewards', 'Re-entry cooldown']),
    ]),
    'Saga': ('saga', 'Sagas', [
        ('General', ['Order', 'Quests', 'Difficulty', 'Villains']),
        ('Rewards', ['Unlocks', 'Rewards']),
        ('Story', ['Previous', 'Next']),
    ]),
    'Dragon': ('dragon', 'Dragons', [
        ('General', ['Dimension', 'Dragon Balls', 'Radar', 'Wishes', 'Cooldown']),
    ]),
    'Item': ('item', 'Items', [
        ('General', ['Type', 'Effect', 'Duration', 'Stack size']),
        ('Obtaining', ['Obtained', 'Crafting', 'Sold by']),
    ]),
    'Weapon': ('weapon', 'Special Weapons', [
        ('General', ['Moveset', 'Reach', 'Critical chance', 'Critical damage', 'Durability']),
        ('Obtaining', ['Obtained', 'Required for']),
    ]),
    'Armor': ('armor', 'Armor', [
        ('General', ['Pieces', 'Defense', 'Set bonus']),
        ('Crafting', ['Pattern', 'Crafted at', 'Materials']),
    ]),
    'Skill': ('skill', 'Skills', [
        ('General', ['Type', 'Max level', 'Key', 'Taught by', 'Cost']),
        ('Effect', ['Effect']),
    ]),
    'Technique': ('technique', 'Techniques', [
        ('General', ['Type', 'Attack type', 'Taught by', 'Races']),
        ('Stats', ['Ki cost', 'Damage', 'Cooldown', 'Charge time', 'Range']),
    ]),
    'Fusion': ('fusion', 'Fusions', [
        ('General', ['Method', 'Requirements', 'Duration', 'Item']),
        ('Result', ['Result', 'Ending']),
    ]),
    'Effect': ('effect', 'Effects', [
        ('General', ['Type', 'Source', 'Duration', 'Effect', 'Stacks']),
    ]),
}

NUMERIC = {'Health', 'Transformed health', 'TP reward', 'Scout health'}
CODE = {'Boss key', 'Raid id', 'Tournament id', 'Locate'}
COLLAPSIBLE = {'Rewards'}

LABELS = {
    'General': ('General', 'Geral'), 'Gameplay': ('Jugabilidad', 'Jogabilidade'),
    'Combat': ('Combate', 'Combate'), 'Rewards': ('Recompensas', 'Recompensas'),
    'Stats': ('Estadísticas', 'Estatísticas'), 'Stat scaling': ('Escalado de estadísticas', 'Escalonamento de atributos'),
    'Training': ('Entrenamiento', 'Treinamento'), 'Content': ('Contenido', 'Conteúdo'),
    'Scout': ('Explorador', 'Batedor'), 'Fighters': ('Luchadores', 'Lutadores'),
    'Story': ('Historia', 'História'), 'Obtaining': ('Obtención', 'Obtenção'),
    'Crafting': ('Fabricación', 'Fabricação'), 'Effect': ('Efecto', 'Efeito'),
    'Result': ('Resultado', 'Resultado'), 'Drops': ('Botín', 'Drops'),
    'Type': ('Tipo', 'Tipo'), 'Parent race': ('Raza base', 'Raça base'),
    'Racial skill': ('Habilidad racial', 'Habilidade racial'), 'Forms': ('Formas', 'Formas'),
    'Stack forms': ('Formas acumulables', 'Formas acumuláveis'), 'Strengths': ('Fortalezas', 'Pontos fortes'),
    'Playstyle': ('Estilo de juego', 'Estilo de jogo'), 'Fusion': ('Fusión', 'Fusão'),
    'Passive': ('Pasiva', 'Passiva'), 'Recommended races': ('Razas recomendadas', 'Raças recomendadas'),
    'Strength': ('Fuerza', 'Força'), 'Strike Power': ('Super Golpes', 'Poder de Golpe'),
    'Resistance': ('Resistencia', 'Resistência'), 'Vitality': ('Vitalidad', 'Vitalidade'),
    'Ki Power': ('Poder de ki', 'Poder de ki'), 'Energy': ('Energía', 'Energia'),
    'Race': ('Raza', 'Raça'), 'Group': ('Grupo', 'Grupo'), 'Form type': ('Tipo de forma', 'Tipo de forma'),
    'Requirements': ('Requisitos', 'Requisitos'), 'Multiplier': ('Multiplicador', 'Multiplicador'),
    'Drain': ('Consumo', 'Consumo'), 'Mastery': ('Maestría', 'Maestria'),
    'Location': ('Ubicación', 'Localização'), 'Structure': ('Estructura', 'Estrutura'),
    'Alignment': ('Alineamiento', 'Alinhamento'), 'Locate': ('Localizar', 'Localizar'),
    'Teaches': ('Enseña', 'Ensina'), 'Services': ('Servicios', 'Serviços'),
    'Gravity': ('Gravedad', 'Gravidade'), 'Access': ('Acceso', 'Acesso'), 'Biomes': ('Biomas', 'Biomas'),
    'Resources': ('Recursos', 'Recursos'), 'Inhabitants': ('Habitantes', 'Habitantes'),
    'Structures': ('Estructuras', 'Estruturas'), 'Bosses': ('Jefes', 'Chefes'),
    'Dimension': ('Dimensión', 'Dimensão'), 'Biome': ('Bioma', 'Bioma'), 'Purpose': ('Propósito', 'Propósito'),
    'Protection': ('Protección', 'Proteção'), 'Spawns': ('Aparición', 'Surgimento'),
    'Behavior': ('Comportamiento', 'Comportamento'), 'Health': ('Vida', 'Vida'), 'Damage': ('Daño', 'Dano'),
    'Ki damage': ('Daño de ki', 'Dano de ki'), 'Abilities': ('Habilidades', 'Habilidades'),
    'TP reward': ('Recompensa de TP', 'Recompensa de TP'), 'Reward': ('Recompensa', 'Recompensa'), 'World': ('Mundo', 'Mundo'),
    'Lair': ('Guarida', 'Covil'), 'Coordinates': ('Coordenadas', 'Coordenadas'),
    'How to find': ('Cómo encontrarlo', 'Como encontrar'), 'Boss key': ('Clave del jefe', 'Chave do chefe'),
    'Respawn': ('Reaparición', 'Reaparecimento'), 'Transforms into': ('Se transforma en', 'Transforma-se em'),
    'Transformed health': ('Vida transformado', 'Vida transformado'), 'Minions': ('Secuaces', 'Lacaios'),
    'Signature moves': ('Ataques característicos', 'Ataques característicos'), 'Techniques': ('Técnicas', 'Técnicas'),
    'Raid id': ('ID de la incursión', 'ID da incursão'), 'Raid site': ('Lugar de la incursión', 'Local da incursão'),
    'Waves': ('Oleadas', 'Ondas'), 'Scout health': ('Vida del explorador', 'Vida do batedor'),
    'Scout melee': ('Daño cuerpo a cuerpo', 'Dano corpo a corpo'), 'Scout ki': ('Daño de ki', 'Dano de ki'),
    'Defeat penalty': ('Castigo por derrota', 'Penalidade por derrota'),
    'Tournament id': ('ID del torneo', 'ID do torneio'), 'Host': ('Anfitrión', 'Anfitrião'),
    'Arena': ('Arena', 'Arena'), 'Format': ('Formato', 'Formato'), 'Ring': ('Ring', 'Ringue'),
    'Difficulty': ('Dificultad', 'Dificuldade'), 'Final': ('Final', 'Final'),
    'Re-entry cooldown': ('Espera para volver a entrar', 'Espera para reentrar'),
    'Order': ('Orden', 'Ordem'), 'Quests': ('Misiones', 'Missões'), 'Villains': ('Villanos', 'Vilões'),
    'Unlocks': ('Desbloquea', 'Desbloqueia'), 'Previous': ('Anterior', 'Anterior'), 'Next': ('Siguiente', 'Próxima'),
    'Dragon Balls': ('Esferas del Dragón', 'Esferas do Dragão'), 'Radar': ('Radar', 'Radar'),
    'Wishes': ('Deseos', 'Desejos'), 'Cooldown': ('Tiempo de recarga', 'Recarga'),
    'Duration': ('Duración', 'Duração'), 'Stack size': ('Tamaño de pila', 'Tamanho da pilha'),
    'Obtained': ('Se obtiene', 'Obtido'), 'Sold by': ('Lo vende', 'Vendido por'),
    'Moveset': ('Combo', 'Combo'), 'Reach': ('Alcance', 'Alcance'),
    'Critical chance': ('Probabilidad crítica', 'Chance crítica'), 'Critical damage': ('Daño crítico', 'Dano crítico'),
    'Durability': ('Durabilidad', 'Durabilidade'), 'Required for': ('Necesaria para', 'Necessária para'),
    'Pieces': ('Piezas', 'Peças'), 'Defense': ('Defensa', 'Defesa'), 'Set bonus': ('Bonus de conjunto', 'Bônus de conjunto'),
    'Pattern': ('Patrón', 'Padrão'), 'Crafted at': ('Se fabrica en', 'Fabricado em'), 'Materials': ('Materiales', 'Materiais'),
    'Max level': ('Nivel máximo', 'Nível máximo'), 'Key': ('Tecla', 'Tecla'), 'Taught by': ('Lo enseña', 'Ensinado por'),
    'Cost': ('Costo', 'Custo'), 'Attack type': ('Tipo de ataque', 'Tipo de ataque'), 'Races': ('Razas', 'Raças'),
    'Ki cost': ('Costo de ki', 'Custo de ki'), 'Charge time': ('Tiempo de carga', 'Tempo de carga'),
    'Range': ('Alcance', 'Alcance'), 'Method': ('Método', 'Método'), 'Item': ('Objeto', 'Item'),
    'Ending': ('Final', 'Fim'), 'Source': ('Origen', 'Origem'), 'Stacks': ('Acumulaciones', 'Acúmulos'),
    'Main article': ('Artículo principal', 'Artigo principal'), 'See also': ('Véase también', 'Veja também'),
    'Configured in': ('Se configura en', 'Configurado em'), 'Image pending': ('Imagen pendiente', 'Imagem pendente'),
    '1 hour after defeat': ('1 hora después de su derrota', '1 hora após a derrota'),
}

NAMES = {
    'Races': ('Razas', 'Raças'), 'Human': ('Humano', 'Humano'), 'Android': ('Androide', 'Androide'),
    'Saiyan': ('Saiyajin', 'Saiyajin'), 'Namekian': ('Namekiano', 'Namekuseijin'),
    'Frost Demon': ('Demonio del Frío', 'Demônio do Frio'), 'Bio-Android': ('Bioandroide', 'Bioandroide'),
    'Majin': ('Majin', 'Majin'), 'Glind': ('Glind', 'Glind'),
    'Classes': ('Clases', 'Classes'), 'Warrior': ('Guerrero', 'Guerreiro'), 'Martial Artist': ('Artista Marcial', 'Artista Marcial'),
    'Spiritualist': ('Espiritualista', 'Espiritualista'), 'Berserker': ('Berserker', 'Berserker'),
    'Paladin': ('Paladín', 'Paladino'), 'Tank': ('Tanque', 'Tanque'), 'Cleric': ('Clérigo', 'Clérigo'),
    'Unversed': ('Unversed', 'Unversed'),
    'Masters': ('Maestros', 'Mestres'), 'Master Roshi': ('Maestro Roshi', 'Mestre Kame'),
    'King Kai': ('Kaio del Norte', 'Senhor Kaioh'), 'Old Kai': ('Kaioshin Anciano', 'Velho Kaioshin'),
    'Fortuneteller Baba': ('Uranai Baba', 'Vovó Uranai'), 'Korin': ('Karin', 'Karin'),
    'Dimensions': ('Dimensiones', 'Dimensões'), 'Earth': ('Tierra', 'Terra'), 'Namek': ('Namek', 'Namekusei'),
    'Sacred Kai Planet': ('Planeta Sagrado de los Kaioshin', 'Planeta Sagrado dos Kaioshins'),
    'Hyperbolic Time Chamber': ('Cámara Hiperbólica del Tiempo', 'Sala do Tempo'),
    'Otherworld': ('Otro Mundo', 'Outro Mundo'), 'Demon Realm': ('Reino Demoníaco', 'Reino Demoníaco'),
    'Structures': ('Estructuras', 'Estruturas'), 'Bestiary': ('Bestiario', 'Bestiário'),
    'Wildlife': ('Fauna', 'Fauna'), 'Hostile mobs': ('Enemigos', 'Inimigos'), 'NPCs': ('NPCs', 'NPCs'),
    'World Bosses': ('Jefes de mundo', 'Chefes de mundo'), 'Raids': ('Incursiones', 'Incursões'),
    'Tournaments': ('Torneos', 'Torneios'), 'Sagas': ('Sagas', 'Sagas'),
    'Classic Saga': ('Saga Clásica', 'Saga Clássica'), 'Saiyan Saga': ('Saga Saiyajin', 'Saga Saiyajin'),
    'Frieza Saga': ('Saga de Freezer', 'Saga de Freeza'), 'Android Saga': ('Saga de los Androides', 'Saga dos Androides'),
    'Future Saga': ('Saga del Futuro', 'Saga do Futuro'), 'Buu Saga': ('Saga de Buu', 'Saga de Majin Boo'),
    'Movies Saga': ('Saga de las Películas', 'Saga dos Filmes'), 'GT Saga': ('Saga GT', 'Saga GT'),
    'Daima Saga': ('Saga Daima', 'Saga Daima'),
    'Dragons and Wishes': ('Dragones y deseos', 'Dragões e desejos'), 'Dragons': ('Dragones', 'Dragões'),
    'Items': ('Objetos', 'Itens'), 'Armor': ('Armaduras', 'Armaduras'),
    'Special Weapons': ('Armas especiales', 'Armas especiais'), 'Effects': ('Efectos', 'Efeitos'),
    'Skills': ('Habilidades', 'Habilidades'), 'Techniques': ('Técnicas', 'Técnicas'),
    'Fusions': ('Fusiones', 'Fusões'), 'Forms': ('Formas', 'Formas'), 'Transformations': ('Transformaciones', 'Transformações'),
    'Fusion Dance': ('Danza de la Fusión', 'Dança da Fusão'), 'Potara Earrings': ('Pendientes Potara', 'Brincos Potara'),
    'Medi-Bug Beetles': ('Escarabajos Medi-Bug', 'Besouros Medi-Bug'),
    "Fortuneteller Baba's Tournament": ('Torneo de Uranai Baba', 'Torneio da Vovó Uranai'),
    'Cell Games': ('Juegos de Cell', 'Jogos de Cell'), 'Otherworld Tournament': ('Torneo del Otro Mundo', 'Torneio do Outro Mundo'),
    'Saiyan Assault': ('Asalto Saiyajin', 'Ataque Saiyajin'), "Frieza's Invasion": ('Invasión de Freezer', 'Invasão de Freeza'),
    "Gomah's Army": ('Ejército de Gomah', 'Exército de Gomah'),
    'Tamagami Number 1': ('Tamagami Número 1', 'Tamagami Número 1'), 'Tamagami Number 2': ('Tamagami Número 2', 'Tamagami Número 2'),
    'Tamagami Number 3': ('Tamagami Número 3', 'Tamagami Número 3'),
    'Configuration': ('Configuración', 'Configuração'), 'Modding': ('Contenido propio', 'Conteúdo próprio'),
    'Add-on Development': ('Desarrollo de addons', 'Desenvolvimento de addons'),
    'Mechanics': ('Mecánicas', 'Mecânicas'), 'Reference': ('Referencia', 'Referência'),
    'Playable races': ('Razas jugables', 'Raças jogáveis'), 'Sub-races': ('Subrazas', 'Sub-raças'),
    'Earth masters': ('Maestros de la Tierra', 'Mestres da Terra'), 'Otherworld masters': ('Maestros del Otro Mundo', 'Mestres do Outro Mundo'),
    'Evil masters': ('Maestros malvados', 'Mestres malignos'), 'Other': ('Otros', 'Outros'),
    'Challenges': ('Desafíos', 'Desafios'), 'Story': ('Historia', 'História'), 'Weapons': ('Armas', 'Armas'),
}

HUB_NAMES = {
    "Beginner's Guide": ('Guía para empezar', 'Guia para iniciantes'), 'FAQ': ('Preguntas frecuentes', 'Perguntas frequentes'),
    'Changelog': ('Cambios de versión', 'Notas de versão'), 'Racial Skills': ('Habilidades raciales', 'Habilidades raciais'),
    'Stats and Attributes': ('Estadísticas y atributos', 'Estatísticas e atributos'),
    'Training Points and Mastery': ('Puntos de entrenamiento y maestría', 'Pontos de treinamento e maestria'),
    'Character Customization': ('Personalización', 'Personalização'),
    'Training Minigames': ('Minijuegos de entrenamiento', 'Minijogos de treinamento'),
    'Enchantments': ('Encantamientos', 'Encantamentos'), 'Weights': ('Pesas', 'Pesos'),
    'Gravity Device': ('Dispositivo de gravedad', 'Dispositivo de gravidade'), 'Gravity': ('Gravedad', 'Gravidade'),
    'Menus': ('Menús', 'Menus'), 'Controls': ('Controles', 'Controles'), 'HUD': ('HUD', 'HUD'),
    'Commands': ('Comandos', 'Comandos'),
    'General Server Config': ('Configuración del servidor', 'Configuração do servidor'),
    'General User Config': ('Configuración del cliente', 'Configuração do cliente'),
    'Combat Config': ('Configuración de combate', 'Configuração de combate'),
    'Skills Config': ('Configuración de habilidades', 'Configuração de habilidades'),
    'Entities Config': ('Configuración de entidades', 'Configuração de entidades'),
    'Gravity Config': ('Configuración de gravedad', 'Configuração de gravidade'),
    'Dynamic Growth': ('Crecimiento dinámico', 'Crescimento dinâmico'),
    'Permissions': ('Permisos', 'Permissões'), 'Gamerules': ('Gamerules', 'Gamerules'),
    'Notice to Server Owners': ('Aviso para dueños de servidores', 'Aviso para donos de servidores'),
    'Reloading and Updating Changes': ('Recargar y actualizar cambios', 'Recarregar e atualizar mudanças'),
    'How to JSON': ('Cómo usar JSON', 'Como usar JSON'),
    'Locating Specific Folders': ('Encontrar carpetas', 'Encontrar pastas'),
    'Custom Races': ('Razas personalizadas', 'Raças personalizadas'), 'Custom Forms': ('Formas personalizadas', 'Formas personalizadas'),
    'Custom Quests': ('Misiones personalizadas', 'Missões personalizadas'),
    'Custom Wishes': ('Deseos personalizados', 'Desejos personalizados'),
    'NPC Placement and Alignment': ('Ubicación y alineamiento de NPCs', 'Posicionamento e índole de NPCs'),
    'NPC Dialogue': ('Diálogos de NPCs', 'Diálogos de NPCs'),
    'Space Pod Destinations': ('Destinos de la nave espacial', 'Destinos da nave espacial'),
    'Weapon Attributes': ('Atributos de armas', 'Atributos de armas'),
    'Custom Models and Assets': ('Modelos y recursos propios', 'Modelos e recursos próprios'),
    'Developer Scope and Prerequisites': ('Alcance y requisitos', 'Escopo e pré-requisitos'),
    'Add-on Getting Started': ('Primeros pasos con addons', 'Primeiros passos com addons'),
    'Implementation and Events': ('Implementación y eventos', 'Implementação e eventos'),
    'Creating a DMZ Addon': ('Crear un addon de DMZ', 'Criar um addon de DMZ'),
    'Contributing': ('Cómo contribuir', 'Como contribuir'), 'Security Policy': ('Política de seguridad', 'Política de segurança'),
    'Sidequests': ('Misiones secundarias', 'Missões secundárias'),
    'Ki Attacks': ('Ataques de Ki', 'Ataques de Ki'), 'Strike Attacks': ('Super Golpes', 'Ataques de Golpe'),
    'Evasion Techniques': ('Técnicas de evasión', 'Técnicas de evasão'),
}


def registry_labels() -> dict:
    merged = {}
    for path in sorted((ROOT / 'docs' / 'registry').glob('*-labels.tsv')):
        for line in path.read_text(encoding='utf-8').splitlines():
            parts = [part.strip() for part in line.split('	')]
            if len(parts) >= 3 and parts[0] and not parts[0].startswith('#'):
                merged[parts[0]] = (parts[1] or parts[0], parts[2] or parts[0])
    return merged


def official_names() -> dict:
    names = {}
    for name in ('official-names.tsv', 'name-overrides.tsv'):
        path = ROOT / 'docs' / 'registry' / name
        if not path.exists():
            continue
        for line in path.read_text(encoding='utf-8').splitlines():
            parts = [part.strip() for part in line.split(chr(9))]
            if len(parts) >= 3 and parts[0] and not parts[0].startswith('#'):
                names[parts[0]] = (parts[1] or parts[0], parts[2] or parts[0])
    return names


def labels_lua() -> str:
    rows = []
    merged = registry_labels()
    merged.update(LABELS)
    merged.update(HUB_NAMES)
    merged.update(NAMES)
    merged.update(official_names())
    for key in sorted(merged):
        es, pt = merged[key]
        rows.append(f"\t[ {lua_str(key)} ] = {{ en = {lua_str(key)}, es = {lua_str(es)}, pt = {lua_str(pt)} }},")
    return 'return {\n' + '\n'.join(rows) + '\n}\n'


def lua_str(value: str) -> str:
    return "'" + value.replace('\\', '\\\\').replace("'", "\\'") + "'"


def section_key(section: str, sections) -> str:
    fields = {field for _, names in sections for field in names}
    return f'{section} info' if section in fields else section


def infobox(name: str, kind: str, category: str, sections) -> str:
    lines = [
        '<includeonly>{{#invoke:Infobox|main',
        f'|kind=dmz-{kind}',
        '|sep=,',
        '|title={{#if:{{{title|}}}|{{{title}}}|{{#invoke:Labels|name}}}}',
        '|image={{#invoke:Labels|image|{{{image|}}}}}',
        '|caption={{{caption|}}}',
        '|sections=Summary, ' + ', '.join(section_key(s, sections) for s, _ in sections),
        '',
        '|Summary=Quote',
        '|Summary_nolabel=yes',
        '|Quote_nolabel=yes',
        "|Quote={{#if:{{{quote|}}}|''{{{quote}}}''}}",
    ]
    for section, fields in sections:
        key = section_key(section, sections)
        lines.append('')
        lines.append(f'|{key}=' + ', '.join(fields))
        lines.append(f'|{key}_label={{{{#invoke:Labels|get|{section}}}}}')
        if section in COLLAPSIBLE:
            lines.append(f'|{key}_collapsible=yes')
        for field in fields:
            lines.append(f'|{field}_label={{{{#invoke:Labels|get|{field}}}}}')
            if field in NUMERIC:
                lines.append(f'|{field}={{{{#if:{{{{{{{field}|}}}}}}|{{{{formatnum:{{{{{{{field}}}}}}}}}}}}}}}')
            elif field in CODE:
                lines.append(f'|{field}={{{{#if:{{{{{{{field}|}}}}}}|<code>{{{{{{{field}}}}}}}</code>}}}}')
            elif field == 'Respawn':
                lines.append('|Respawn={{#if:{{{Respawn|}}}|{{{Respawn}}}|{{#invoke:Labels|get|1 hour after defeat}}}}')
    lines.append(f'}}}}[[Category:{category}{{{{#translation:}}}}]]</includeonly><noinclude>{{{{Documentation}}}}</noinclude>')
    return '\n'.join(lines) + '\n'


def doc(name: str, sections) -> str:
    params = ['title', 'image', 'caption', 'quote'] + [f for _, fields in sections for f in fields]
    usage = '{{Infobox ' + name + '\n' + '\n'.join(f'|{p}=' for p in params) + '\n}}'
    rows = '\n'.join(f'|-\n| <code>{p}</code>' for p in params)
    return (
        f'Infobox for {name.lower()} pages, built on [[Module:Infobox]] (DRUID). Every parameter is optional; empty rows are hidden. '
        'Labels are translated automatically from [[Module:Labels/data]]. Without <code>image</code> it shows <code>File:&lt;page name&gt;.png</code> '
        'when that file exists, or the placeholder otherwise, so uploading <code>File:&lt;page name&gt;.png</code> is enough to replace it.\n\n'
        '== Usage ==\n<pre>\n' + usage + '\n</pre>\n\n== Parameters ==\n{| class="wikitable"\n! Parameter\n' + rows + '\n|}\n'
    )


def main() -> None:
    template_dir = PAGES / 'Template'
    for name, (kind, category, sections) in INFOBOXES.items():
        path = template_dir / f'Infobox {name}.wiki'
        path.parent.mkdir(parents=True, exist_ok=True)
        path.write_text(infobox(name, kind, category, sections), encoding='utf-8', newline='\n')
        (template_dir / f'Infobox {name}').mkdir(exist_ok=True)
        (template_dir / f'Infobox {name}' / 'doc.wiki').write_text(doc(name, sections), encoding='utf-8', newline='\n')
    old = template_dir / 'World Boss Infobox.wiki'
    if old.exists():
        old.unlink()
    data = PAGES / 'Module' / 'Labels' / 'data.lua'
    data.write_text(labels_lua(), encoding='utf-8', newline='\n')
    print(f'{len(INFOBOXES)} infoboxes, {len(LABELS) + len(NAMES) + len(HUB_NAMES)} labels')


if __name__ == '__main__':
    main()
