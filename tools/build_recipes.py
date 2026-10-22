#!/usr/bin/env python3
import argparse
import io
import json
import math
import pathlib
import re
import sys
import zipfile

import numpy as np
from PIL import Image, ImageDraw

sys.path.insert(0, str(pathlib.Path(__file__).resolve().parent))
import build_sidequests as bs
import build_templates as bt
import validate

ROOT = bt.ROOT
FILES = ROOT / 'content' / 'files' / 'recipes'
DATA = ROOT / 'content' / 'pages' / 'Module' / 'Recipes' / 'data.lua'
LANGS = bs.LANGS

ICON = 32
SUPERSAMPLE = 4
SCALE = 2

CRAFTING_TYPES = {'minecraft:crafting_shaped', 'minecraft:crafting_shapeless'}
PATTERN_TYPE = 'dragonminez:pattern_crafting'

FORGE_TAGS = {
    'forge:seeds': ['minecraft:wheat_seeds', 'minecraft:melon_seeds', 'minecraft:pumpkin_seeds', 'minecraft:beetroot_seeds'],
}

TINTS = {
    ('minecraft:potion', 0): (0x38, 0x5D, 0xC6),
}

VIRTUAL_PAGES = {
    'minecraft:potion.curative': 'Farming#Curative Flask',
}

GEO_ITEMS = {
    'dragonminez:gravity_device': ('dragonminez:geo/block/gravitydevice.geo.json', 'dragonminez:block/custom/gravitydevice'),
    'dragonminez:pattern_station': ('dragonminez:geo/block/pattern_station.geo.json', 'dragonminez:block/custom/pattern_station'),
}

PAGE_RULES = [
    (r'^dragonminez:(radar_piece|t[12]_radar_(chip|cpu)|dball_radar|namekdball_radar|fused_dball_radar)$', 'Dragon Radar'),
    (r'^dragonminez:\w+_scouter$', 'Scouters'),
    (r'^dragonminez:gete_\w+_capsule$', 'Gete Tech'),
    (r'^dragonminez:(\w+_capsule|empty_capsule)$', 'Capsules'),
    (r'^dragonminez:pattern_gete$', 'Gete Tech'),
    (r'^dragonminez:(blank_pattern_(z|super)|armor_crafting_kit|pattern_station|kikono_station|fuel_generator|energy_cable)$', 'Armor'),
    (r'^dragonminez:kikono_\w+$', 'Kikono Materials'),
    (r'^dragonminez:gete_\w+$', 'Gete Tech'),
    (r'^dragonminez:senzu_bean_bag$', 'Senzu Bag'),
    (r'^dragonminez:senzu_\w+$', 'Senzu Bean'),
    (r'^dragonminez:(aura_lily|hermit_fern|kaioshin_fruit|katchin_sprout|meteor_flower|namek_moss|oozaru_root|zenkai_lotus|turtle_scale)$', 'Farming'),
    (r'^dragonminez:saiyan_ship$', 'Space Pod'),
    (r'^dragonminez:(car_red|car_yellow|cc576|frieza_capsule|vehicle_\w+)$', 'Vehicles'),
    (r'^dragonminez:yajirobe_katana$', "Yajirobe's Katana"),
    (r'^dragonminez:\w*(cooked|frog_legs)\w*$', 'Food'),
    (r'^dragonminez:(raw_dino_meat|raw_baby_dino_meat|dino_tail_raw)$', 'Dinosaurs'),
    (r'^dragonminez:giant_fish_raw$', 'Giant Fish'),
    (r'^dragonminez:giant_turtle_raw$', 'Giant Turtle'),
    (r'^dragonminez:(workout_weights|weight_\w+)$', 'Weights'),
    (r'^dragonminez:healing_liquid_bucket$', 'Farming'),
    (r'^dragonminez:(adobe|demon_brick|demon_rock|makai_)\w*$', 'Demon Realm'),
    (r'^dragonminez:namek_\w+$', 'Namek'),
    (r'^dragonminez:rocky_\w+$', 'Earth'),
]


def rl(value: str, default_ns: str = 'minecraft'):
    if ':' in value:
        ns, path = value.split(':', 1)
    else:
        ns, path = default_ns, value
    return ns, path


class Assets:
    def __init__(self, roots):
        self.roots = []
        for root in roots:
            root = pathlib.Path(root)
            if root.is_dir():
                self.roots.append(('dir', root))
            elif root.is_file():
                self.roots.append(('zip', zipfile.ZipFile(root)))
        self.cache = {}

    def read(self, relative: str):
        for kind, root in self.roots:
            if kind == 'dir':
                path = root / relative
                if path.is_file():
                    return path.read_bytes()
            else:
                try:
                    return root.read(relative)
                except KeyError:
                    continue
        return None

    def model(self, ident: str):
        ns, path = rl(ident)
        data = self.read(f'assets/{ns}/models/{path}.json')
        return json.loads(data) if data else None

    def texture(self, ident: str):
        if ident in self.cache:
            return self.cache[ident]
        ns, path = rl(ident)
        data = self.read(f'assets/{ns}/textures/{path}.png')
        image = None
        if data:
            image = Image.open(io.BytesIO(data)).convert('RGBA')
            if image.height > image.width:
                meta = self.read(f'assets/{ns}/textures/{path}.png.mcmeta')
                frame = 0
                if meta:
                    frames = json.loads(meta).get('animation', {}).get('frames')
                    if frames:
                        first = frames[0]
                        frame = first['index'] if isinstance(first, dict) else first
                size = image.width
                image = image.crop((0, frame * size, size, frame * size + size))
        self.cache[ident] = image
        return image


class Model:
    def __init__(self, assets: Assets, ident: str):
        self.textures = {}
        self.elements = None
        self.display = {}
        self.gui_light = None
        self.builtin = None
        self.chain = []
        seen = 0
        current = ident
        while current and seen < 20:
            seen += 1
            if current.startswith('builtin/'):
                self.builtin = current
                break
            data = assets.model(current)
            if data is None:
                self.chain.append(f'missing {current}')
                break
            self.chain.append(current)
            for key, value in data.get('textures', {}).items():
                self.textures.setdefault(key, value)
            if self.elements is None and 'elements' in data:
                self.elements = data['elements']
            for key, value in data.get('display', {}).items():
                self.display.setdefault(key, value)
            if self.gui_light is None and 'gui_light' in data:
                self.gui_light = data['gui_light']
            current = data.get('parent')
            if current and ':' not in current and not current.startswith('builtin/'):
                current = 'minecraft:' + current

    def resolve(self, ref: str):
        seen = 0
        while ref and ref.startswith('#') and seen < 20:
            ref = self.textures.get(ref[1:])
            seen += 1
        return ref


def rot_x(v, a):
    c, s = math.cos(a), math.sin(a)
    return (v[0], v[1] * c - v[2] * s, v[1] * s + v[2] * c)


def rot_y(v, a):
    c, s = math.cos(a), math.sin(a)
    return (v[0] * c + v[2] * s, v[1], -v[0] * s + v[2] * c)


def rot_z(v, a):
    c, s = math.cos(a), math.sin(a)
    return (v[0] * c - v[1] * s, v[0] * s + v[1] * c, v[2])


def normalize(v):
    n = math.sqrt(sum(x * x for x in v))
    return tuple(x / n for x in v)


def light_dir(v):
    v = normalize(v)
    v = rot_x(v, math.radians(135))
    v = rot_y(v, math.radians(-22.5))
    return (v[0], -v[1], v[2])


LIGHT0 = light_dir((0.2, 1.0, -0.7))
LIGHT1 = light_dir((-0.2, 1.0, 0.7))


def shade(normal) -> float:
    d0 = max(0.0, sum(a * b for a, b in zip(LIGHT0, normal)))
    d1 = max(0.0, sum(a * b for a, b in zip(LIGHT1, normal)))
    return min(1.0, (d0 + d1) * 0.6 + 0.4)


FACE_CORNERS = {
    'up': lambda f, t: [(f[0], t[1], f[2]), (t[0], t[1], f[2]), (t[0], t[1], t[2]), (f[0], t[1], t[2])],
    'down': lambda f, t: [(f[0], f[1], t[2]), (t[0], f[1], t[2]), (t[0], f[1], f[2]), (f[0], f[1], f[2])],
    'north': lambda f, t: [(t[0], t[1], f[2]), (f[0], t[1], f[2]), (f[0], f[1], f[2]), (t[0], f[1], f[2])],
    'south': lambda f, t: [(f[0], t[1], t[2]), (t[0], t[1], t[2]), (t[0], f[1], t[2]), (f[0], f[1], t[2])],
    'west': lambda f, t: [(f[0], t[1], f[2]), (f[0], t[1], t[2]), (f[0], f[1], t[2]), (f[0], f[1], f[2])],
    'east': lambda f, t: [(t[0], t[1], t[2]), (t[0], t[1], f[2]), (t[0], f[1], f[2]), (t[0], f[1], t[2])],
}

NORMALS = {
    'up': (0, 1, 0), 'down': (0, -1, 0), 'north': (0, 0, -1), 'south': (0, 0, 1), 'west': (-1, 0, 0), 'east': (1, 0, 0),
}


def default_uv(face: str, f, t):
    return {
        'down': [f[0], 16 - t[2], t[0], 16 - f[2]],
        'up': [f[0], f[2], t[0], t[2]],
        'north': [16 - t[0], 16 - t[1], 16 - f[0], 16 - f[1]],
        'south': [f[0], 16 - t[1], t[0], 16 - f[1]],
        'west': [f[2], 16 - t[1], t[2], 16 - f[1]],
        'east': [16 - t[2], 16 - t[1], 16 - f[2], 16 - f[1]],
    }[face]


def element_rotation(rotation):
    if not rotation:
        return lambda p: p, lambda n: n
    origin = rotation.get('origin', [8, 8, 8])
    angle = math.radians(rotation.get('angle', 0))
    axis = rotation.get('axis', 'y')
    rescale = rotation.get('rescale', False)
    fn = {'x': rot_x, 'y': rot_y, 'z': rot_z}[axis]
    factor = 1 / math.cos(angle) if rescale and angle else 1

    def point(p):
        local = tuple(p[i] - origin[i] for i in range(3))
        moved = fn(local, angle)
        if factor != 1:
            moved = tuple(moved[i] * (factor if 'xyz'[i] != axis else 1) for i in range(3))
        return tuple(moved[i] + origin[i] for i in range(3))

    return point, lambda n: fn(n, angle)


def solve_affine(dst, src):
    (x0, y0), (x1, y1), (x2, y2) = dst
    (u0, v0), (u1, v1), (u2, v2) = src
    det = (x1 - x0) * (y2 - y0) - (x2 - x0) * (y1 - y0)
    if abs(det) < 1e-9:
        return None
    a = ((u1 - u0) * (y2 - y0) - (u2 - u0) * (y1 - y0)) / det
    b = ((u2 - u0) * (x1 - x0) - (u1 - u0) * (x2 - x0)) / det
    c = u0 - a * x0 - b * y0
    d = ((v1 - v0) * (y2 - y0) - (v2 - v0) * (y1 - y0)) / det
    e = ((v2 - v0) * (x1 - x0) - (v1 - v0) * (x2 - x0)) / det
    f = v0 - d * x0 - e * y0
    return (a, b, c, d, e, f)


class View:
    def __init__(self, display: dict, lit: bool):
        gui = display.get('gui', {})
        self.rx, self.ry, self.rz = (math.radians(a) for a in gui.get('rotation', [0, 0, 0]))
        self.t = [v / 16 for v in gui.get('translation', [0, 0, 0])]
        self.s = gui.get('scale', [1, 1, 1])
        self.lit = lit
        self.unit = ICON * SUPERSAMPLE / 16

    def rotate(self, v):
        return rot_x(rot_y(rot_z(v, self.rz), self.ry), self.rx)

    def project(self, p):
        local = tuple((p[i] - 8) / 16 * self.s[i] for i in range(3))
        r = self.rotate(local)
        q = tuple(r[i] + self.t[i] for i in range(3))
        return (8 + 16 * q[0]) * self.unit, (8 - 16 * q[1]) * self.unit, q[2]

    def face(self, corners, normal, tex, texture, shaded=True, tint=None):
        normal = self.rotate(normal)
        if normal[2] <= 1e-6:
            return None
        brightness = shade(normal) if self.lit and shaded else 1.0
        return [self.project(c) for c in corners], tex, texture, brightness, tint


def rasterize(faces):
    size = ICON * SUPERSAMPLE
    color = np.zeros((size, size, 4), dtype=np.float32)
    depth = np.full((size, size), -np.inf, dtype=np.float32)
    for pts, tex, texture, brightness, tint in faces:
        mask = Image.new('L', (size, size), 0)
        ImageDraw.Draw(mask).polygon([(p[0], p[1]) for p in pts], fill=255)
        ys, xs = np.nonzero(np.array(mask))
        if len(xs) == 0:
            continue
        screen = [(pts[i][0], pts[i][1]) for i in (0, 1, 3)]
        uv = solve_affine(screen, [tex[0], tex[1], tex[3]])
        zplane = solve_affine(screen, [(pts[i][2], 0) for i in (0, 1, 3)])
        if uv is None or zplane is None:
            continue
        px, py = xs + 0.5, ys + 0.5
        u = uv[0] * px + uv[1] * py + uv[2]
        v = uv[3] * px + uv[4] * py + uv[5]
        z = zplane[0] * px + zplane[1] * py + zplane[2]
        us = [t[0] for t in tex]
        vs = [t[1] for t in tex]
        u = np.clip(u, min(us), max(us) - 1e-3)
        v = np.clip(v, min(vs), max(vs) - 1e-3)
        pixels = np.array(texture, dtype=np.float32)
        ui = np.clip(np.floor(u).astype(int), 0, texture.width - 1)
        vi = np.clip(np.floor(v).astype(int), 0, texture.height - 1)
        sample = pixels[vi, ui]
        keep = (sample[:, 3] > 25) & (z > depth[ys, xs])
        if not keep.any():
            continue
        sample = sample[keep]
        factor = np.array([brightness * (tint[i] / 255 if tint else 1) for i in range(3)], dtype=np.float32)
        sample[:, :3] *= factor
        sample[:, 3] = 255
        color[ys[keep], xs[keep]] = sample
        depth[ys[keep], xs[keep]] = z[keep]
    image = Image.fromarray(np.clip(color, 0, 255).astype(np.uint8), 'RGBA')
    return image.convert('RGBa').resize((ICON, ICON), Image.BOX).convert('RGBA')


def render_elements(model: Model, assets: Assets, item_id: str):
    view = View(model.display, model.gui_light != 'front')
    faces = []
    for element in model.elements:
        f, t = element['from'], element['to']
        point, normal_fn = element_rotation(element.get('rotation'))
        for name, face in element.get('faces', {}).items():
            texture_id = model.resolve(face.get('texture', ''))
            texture = assets.texture(texture_id) if texture_id else None
            if texture is None:
                return None, f'texture {face.get("texture")} -> {texture_id} not found'
            uv = face.get('uv') or default_uv(name, f, t)
            factor = texture.width / 16
            tex = [(uv[0], uv[1]), (uv[2], uv[1]), (uv[2], uv[3]), (uv[0], uv[3])]
            k = (face.get('rotation', 0) // 90) % 4
            mapped = [(tex[(i - k) % 4][0] * factor, tex[(i - k) % 4][1] * factor) for i in range(4)]
            corners = [point(c) for c in FACE_CORNERS[name](f, t)]
            tint = TINTS.get((item_id, face.get('tintindex', -1)))
            built = view.face(corners, normal_fn(NORMALS[name]), mapped, texture, element.get('shade', True), tint)
            if built:
                faces.append(built)
    return rasterize(faces), None


def box_uv(u, v, size):
    w, h, d = size
    return {
        'east': (u, v + d, d, h),
        'north': (u + d, v + d, w, h),
        'west': (u + d + w, v + d, d, h),
        'south': (u + d + w + d, v + d, w, h),
        'up': (u + d, v, w, d),
        'down': (u + d + w, v + d, w, -d),
    }


def geo_rotation(pivot, rotation):
    if not rotation or not any(rotation):
        return lambda p: p, lambda n: n
    origin = (-pivot[0], pivot[1], pivot[2])
    ax, ay, az = math.radians(-rotation[0]), math.radians(-rotation[1]), math.radians(rotation[2])

    def turn(v):
        return rot_z(rot_y(rot_x(v, ax), ay), az)

    def point(p):
        moved = turn(tuple(p[i] - origin[i] for i in range(3)))
        return tuple(moved[i] + origin[i] for i in range(3))

    return point, turn


def render_geo(assets: Assets, item_id: str, display: dict):
    geo_path, texture_id = GEO_ITEMS[item_id]
    ns, path = rl(geo_path)
    raw = assets.read(f'assets/{ns}/{path}')
    texture = assets.texture(texture_id)
    if raw is None or texture is None:
        return None, f'geo {geo_path} or texture {texture_id} not found'
    geometry = json.loads(raw)['minecraft:geometry'][0]
    scale_u = texture.width / geometry['description'].get('texture_width', texture.width)
    scale_v = texture.height / geometry['description'].get('texture_height', texture.height)
    bones = {bone['name']: bone for bone in geometry.get('bones', [])}
    view = View(display, True)
    faces = []
    for bone in geometry.get('bones', []):
        chain = []
        current = bone
        while current is not None:
            chain.append(geo_rotation(current.get('pivot', [0, 0, 0]), current.get('rotation')))
            current = bones.get(current.get('parent'))
        for cube in bone.get('cubes', []):
            ox, oy, oz = cube['origin']
            sx, sy, sz = cube['size']
            grow = cube.get('inflate', 0)
            f = (-(ox + sx) - grow, oy - grow, oz - grow)
            t = (-ox + grow, oy + sy + grow, oz + sz + grow)
            own = geo_rotation(cube.get('pivot', [0, 0, 0]), cube.get('rotation'))
            steps = [own] + chain
            uvs = cube.get('uv', [0, 0])
            if isinstance(uvs, list):
                rects = box_uv(uvs[0], uvs[1], (sx, sy, sz))
            else:
                rects = {name: (*face['uv'], *face.get('uv_size', [0, 0])) for name, face in uvs.items()}
            for name, rect in rects.items():
                u, v, w, h = rect
                if w == 0 or h == 0:
                    continue
                tex = [((u) * scale_u, (v) * scale_v), ((u + w) * scale_u, v * scale_v),
                       ((u + w) * scale_u, (v + h) * scale_v), (u * scale_u, (v + h) * scale_v)]
                corners = FACE_CORNERS[name](f, t)
                normal = NORMALS[name]
                for point, turn in steps:
                    corners = [point(c) for c in corners]
                    normal = turn(normal)
                corners = [(c[0] + 8, c[1] + 0.16, c[2] + 8) for c in corners]
                built = view.face(corners, normal, tex, texture)
                if built:
                    faces.append(built)
    return rasterize(faces), None


def render_generated(model: Model, assets: Assets, item_id: str):
    layers = []
    index = 0
    while f'layer{index}' in model.textures:
        texture = assets.texture(model.resolve(f'#layer{index}'))
        if texture is None:
            return None, f'layer{index} {model.textures[f"layer{index}"]} not found'
        tint = TINTS.get((item_id, index))
        if tint:
            r, g, b, a = texture.split()
            r = r.point(lambda x, m=tint[0]: x * m // 255)
            g = g.point(lambda x, m=tint[1]: x * m // 255)
            b = b.point(lambda x, m=tint[2]: x * m // 255)
            texture = Image.merge('RGBA', (r, g, b, a))
        layers.append(texture)
        index += 1
    if not layers:
        return None, 'no layers'
    side = max(layer.width for layer in layers)
    canvas = Image.new('RGBA', (side, side), (0, 0, 0, 0))
    for layer in layers:
        canvas.alpha_composite(layer.resize((side, side), Image.NEAREST))
    return canvas.resize((ICON, ICON), Image.NEAREST), None


def render_item(assets: Assets, item_id: str):
    if item_id in VIRTUAL:
        info = VIRTUAL[item_id]
        TINTS[(info['base'], 0)] = info['tint']
        try:
            return render_item(assets, info['base'])
        finally:
            TINTS[(info['base'], 0)] = (0x38, 0x5D, 0xC6)
    ns, path = rl(item_id)
    ident = f'{ns}:item/{path}'
    raw = assets.model(ident) or {}
    gui = raw.get('perspectives', {}).get('gui', {}).get('parent') if raw.get('loader') == 'forge:separate_transforms' else None
    model = Model(assets, gui or ident)
    if item_id in GEO_ITEMS:
        return render_geo(assets, item_id, model.display)
    if model.builtin == 'builtin/generated' or (model.elements is None and 'layer0' in model.textures):
        return render_generated(model, assets, item_id)
    if model.elements:
        return render_elements(model, assets, item_id)
    return None, f'{model.builtin or "no elements"} via {" > ".join(model.chain)}'


VIRTUAL = {}


def potion_item(entry):
    potion = re.search(r'Potion:"([a-z0-9_.-]+):([a-z0-9_./-]+)"', entry.get('nbt', ''))
    if not potion:
        return entry['item']
    ident = f'{entry["item"]}.{potion.group(2)}'
    color = re.search(r'CustomPotionColor:(\d+)', entry['nbt'])
    rgb = int(color.group(1)) if color else 0x385DC6
    kind = rl(entry['item'])[1]
    VIRTUAL[ident] = {
        'base': entry['item'],
        'tint': ((rgb >> 16) & 255, (rgb >> 8) & 255, rgb & 255),
        'key': f'item.minecraft.{kind}.effect.{potion.group(2)}',
    }
    return ident


def ingredient_items(entry, tags):
    if isinstance(entry, list):
        out = []
        for part in entry:
            out.extend(ingredient_items(part, tags))
        return out
    if entry.get('type') == 'forge:nbt' and 'item' in entry:
        return [potion_item(entry)]
    if 'item' in entry:
        return [entry['item']]
    return tags(entry['tag'])


class Tags:
    def __init__(self, mod: pathlib.Path):
        self.roots = [mod / 'src/main/resources/data', mod / 'src/generated/resources/data']
        self.cache = {}

    def __call__(self, tag: str):
        if tag in self.cache:
            return self.cache[tag]
        ns, path = rl(tag)
        values = list(FORGE_TAGS.get(tag, []))
        for root in self.roots:
            file = root / ns / 'tags' / 'items' / f'{path}.json'
            if file.exists():
                for value in json.loads(file.read_text(encoding='utf-8')).get('values', []):
                    value = value['id'] if isinstance(value, dict) else value
                    values.extend(self(value[1:]) if value.startswith('#') else [value])
        self.cache[tag] = values
        return values


COOKING = {
    'minecraft:smelting': 'smelting', 'minecraft:blasting': 'blasting',
    'minecraft:smoking': 'smoking', 'minecraft:campfire_cooking': 'campfire',
}
KIKONO_TYPE = 'dragonminez:kikono_crafting'
FUELS = ['minecraft:coal', 'minecraft:charcoal', 'minecraft:coal_block', 'minecraft:lava_bucket', 'minecraft:blaze_rod']
VANILLA_POTIONS = {'water': 0x385DC6, 'regeneration': 0xCD5CAB}
KIKONO_PIECES = ['helmet', 'chestplate', 'leggings', 'boots']
KIKONO_SHOWCASE = ['goku', 'vegeta_z', 'piccolo', 'bardock_dbz', 'trunks_z', 'gohan_super', 'broly_z', 'goku_super']
STATIONS = {
    'crafting': 'minecraft:crafting_table', 'pattern': 'dragonminez:pattern_station',
    'kikono': 'dragonminez:kikono_station', 'smelting': 'minecraft:furnace', 'blasting': 'minecraft:blast_furnace',
    'smoking': 'minecraft:smoker', 'campfire': 'minecraft:campfire', 'brewing': 'minecraft:brewing_stand',
}


def vanilla_potion(name: str) -> str:
    ident = f'minecraft:potion.{name}'
    rgb = VANILLA_POTIONS[name]
    VIRTUAL[ident] = {
        'base': 'minecraft:potion',
        'tint': ((rgb >> 16) & 255, (rgb >> 8) & 255, rgb & 255),
        'key': f'item.minecraft.potion.effect.{name}',
    }
    return ident


def load_recipes(mod: pathlib.Path):
    wanted = CRAFTING_TYPES | {PATTERN_TYPE, KIKONO_TYPE} | set(COOKING)
    recipes = {}
    for folder in ('src/generated/resources/data/dragonminez/recipes', 'src/main/resources/data/dragonminez/recipes'):
        for path in sorted((mod / folder).glob('*.json')):
            data = json.loads(path.read_text(encoding='utf-8'))
            if data.get('type') in wanted:
                recipes[f'dragonminez:{path.stem}'] = data
    return recipes


def grid_of(data, tags, size):
    grid = {}
    if 'pattern' in data:
        for r, row in enumerate(data['pattern']):
            for c, char in enumerate(row):
                if char != ' ':
                    grid[str(r * size + c + 1)] = ingredient_items(data['key'][char], tags)
    else:
        for i, entry in enumerate(data['ingredients']):
            grid[str(i + 1)] = ingredient_items(entry, tags)
    return grid


def result_of(data):
    result = data.get('result') or data.get('output')
    if isinstance(result, str):
        return result, 1
    return result['item'], result.get('count', 1)


def find_vanilla(explicit):
    if explicit:
        return [explicit]
    candidates = sorted(pathlib.Path.home().glob('.gradle/caches/forge_gradle/minecraft_repo/versions/1.20.1/client-extra.jar'))
    return [str(c) for c in candidates]


def frame_panel(texture: Image.Image, gui_size, width: int, height: int):
    gw, gh = gui_size
    b = 4
    panel = Image.new('RGBA', (width, height), texture.getpixel((b + 2, b + 2)))
    panel.paste(texture.crop((0, 0, b, b)), (0, 0))
    panel.paste(texture.crop((gw - b, 0, gw, b)), (width - b, 0))
    panel.paste(texture.crop((0, gh - b, b, gh)), (0, height - b))
    panel.paste(texture.crop((gw - b, gh - b, gw, gh)), (width - b, height - b))
    panel.paste(texture.crop((b, 0, b + 1, b)).resize((width - 2 * b, b), Image.NEAREST), (b, 0))
    panel.paste(texture.crop((b, gh - b, b + 1, gh)).resize((width - 2 * b, b), Image.NEAREST), (b, height - b))
    panel.paste(texture.crop((0, b, b, b + 1)).resize((b, height - 2 * b), Image.NEAREST), (0, b))
    panel.paste(texture.crop((gw - b, b, gw, b + 1)).resize((b, height - 2 * b), Image.NEAREST), (width - b, b))
    return panel


class Panel:
    def __init__(self, texture, gui_size, width, height):
        self.image = frame_panel(texture, gui_size, width, height)
        self.layout = {'slots': {}}

    def blit(self, texture, box, at):
        self.image.alpha_composite(texture.crop(box), (int(at[0]), int(at[1])))

    def slot(self, name, at, big=False):
        inset = 5 if big else 1
        self.layout['slots'][name] = [(at[0] + inset) * SCALE, (at[1] + inset) * SCALE]

    def point(self, key, at):
        self.layout[key] = [int(at[0] * SCALE), int(at[1] * SCALE)]

    def save(self, name, **extra):
        FILES.mkdir(parents=True, exist_ok=True)
        w, h = self.image.size
        self.image.resize((w * SCALE, h * SCALE), Image.NEAREST).save(FILES / name, optimize=True)
        layout = {'file': name, 'width': w * SCALE, 'height': h * SCALE}
        layout.update(self.layout)
        layout.update(extra)
        return layout


def grid_layout(texture, gui_size, grid_box, size, arrow_box, result_box, name):
    pad, gap = 7, 8
    grid_w, grid_h = grid_box[2] - grid_box[0], grid_box[3] - grid_box[1]
    arrow_w, arrow_h = arrow_box[2] - arrow_box[0], arrow_box[3] - arrow_box[1]
    result_w, result_h = result_box[2] - result_box[0], result_box[3] - result_box[1]
    width = pad + grid_w + gap + arrow_w + gap + result_w + pad
    panel = Panel(texture, gui_size, width, pad + grid_h + pad)
    panel.blit(texture, grid_box, (pad, pad))
    mid = pad + grid_h // 2
    arrow_x = pad + grid_w + gap
    panel.blit(texture, arrow_box, (arrow_x, mid - arrow_h // 2))
    result_x = arrow_x + arrow_w + gap
    panel.blit(texture, result_box, (result_x, mid - result_h // 2))
    for r in range(size):
        for c in range(size):
            panel.slot(str(r * size + c + 1), (pad + c * 18, pad + r * 18))
    panel.slot('result', (result_x, mid - result_h // 2), big=True)
    panel.point('shapeless', (arrow_x + arrow_w / 2, pad + 2))
    return panel.save(name)


def kikono_layout(texture):
    panel = Panel(texture, (176, 166), 176, 82)
    panel.blit(texture, (4, 4, 172, 78), (4, 4))
    panel.blit(texture, (177, 29, 189, 81), (9, 21))
    for r in range(3):
        for c in range(3):
            panel.slot(str(r * 3 + c + 1), (27 + c * 18, 16 + r * 18))
    panel.slot('pattern', (88, 16))
    panel.slot('template', (88, 52))
    panel.slot('result', (140, 34))
    panel.point('time', (121, 56))
    return panel.save('Recipe GUI kikono.png', energy=[9 * SCALE, 21 * SCALE, 12 * SCALE, 52 * SCALE])


def furnace_layout(texture, name, fuel_items):
    pad = 7
    ox, oy = 50, 11
    panel = Panel(texture, (176, 166), pad * 2 + 92, pad * 2 + 65)

    def at(x, y):
        return (x - ox + pad, y - oy + pad)

    panel.blit(texture, (ox, oy, 142, 76), (pad, pad))
    panel.blit(texture, (176, 0, 190, 14), at(56, 36))
    panel.slot('input', at(55, 16))
    panel.slot('result', at(111, 30), big=True)
    panel.point('time', at(91, 53))
    layout = panel.save(name)
    fuel = at(55, 52)
    layout['fixed'] = [{'pos': [(fuel[0] + 1) * SCALE, (fuel[1] + 1) * SCALE], 'items': fuel_items}]
    return layout


def campfire_layout(crafting):
    pad, gap = 7, 6
    width = pad + 18 + gap + 16 + gap + 22 + gap + 26 + pad
    height = 52
    row = 16
    panel = Panel(crafting, (176, 166), width, height)
    x = pad
    panel.blit(crafting, (29, 16, 47, 34), (x, row + 13 - 9))
    panel.slot('input', (x, row + 13 - 9))
    x += 18 + gap
    station = (x, row + 13 - 8)
    x += 16 + gap
    panel.blit(crafting, (90, 35, 112, 50), (x, row + 13 - 7))
    panel.point('time', (x + 11, row + 23))
    x += 22 + gap
    panel.blit(crafting, (119, 30, 145, 56), (x, row))
    panel.slot('result', (x, row), big=True)
    layout = panel.save('Recipe GUI campfire.png')
    layout['fixed'] = [{'pos': [station[0] * SCALE, station[1] * SCALE], 'items': ['minecraft:campfire'], 'plain': True}]
    return layout


def brewing_layout(texture, crafting):
    pad = 7
    ox, oy = 12, 11

    def at(x, y):
        return (x - ox + pad, y - oy + pad)

    arrow_x = pad + 114 + 8
    result_x = arrow_x + 22 + 8
    panel = Panel(texture, (176, 166), result_x + 26 + pad, pad * 2 + 69)
    panel.blit(texture, (ox, oy, 126, 80), (pad, pad))
    panel.blit(texture, (176, 29, 194, 33), at(60, 44))
    panel.blit(crafting, (90, 35, 112, 50), (arrow_x, 52))
    panel.blit(crafting, (119, 30, 145, 56), (result_x, 46))
    panel.slot('ingredient', at(78, 16))
    panel.slot('bottle1', at(55, 50))
    panel.slot('bottle2', at(78, 57))
    panel.slot('bottle3', at(101, 50))
    panel.slot('result', (result_x, 46), big=True)
    layout = panel.save('Recipe GUI brewing.png')
    fuel = at(16, 16)
    layout['fixed'] = [{'pos': [(fuel[0] + 1) * SCALE, (fuel[1] + 1) * SCALE], 'items': ['minecraft:blaze_powder']}]
    return layout


def nine_slice(texture, box, width, height, border_x, border_y):
    src = texture.crop(box)
    sw, sh = src.size
    out = Image.new('RGBA', (width, height), (0, 0, 0, 0))
    xs = [(0, border_x, 0, border_x), (border_x, sw - border_x, border_x, width - border_x), (sw - border_x, sw, width - border_x, width)]
    ys = [(0, border_y, 0, border_y), (border_y, sh - border_y, border_y, height - border_y), (sh - border_y, sh, height - border_y, height)]
    for sx0, sx1, dx0, dx1 in xs:
        for sy0, sy1, dy0, dy1 in ys:
            if dx1 > dx0 and dy1 > dy0 and sx1 > sx0 and sy1 > sy0:
                piece = src.crop((sx0, sy0, sx1, sy1)).resize((dx1 - dx0, dy1 - dy0), Image.NEAREST)
                out.alpha_composite(piece, (dx0, dy0))
    return out


def screen_panel(texture):
    panel = Panel(texture, (176, 166), 176, 80)
    panel.blit(texture, (4, 4, 172, 76), (4, 4))
    panel.blit(texture, (177, 29, 189, 81), (154, 21))
    return panel


def text(x, y, value, align='left', color='#404040', outline=False):
    entry = {'x': int(x * SCALE), 'y': int(y * SCALE), 'text': value, 'align': align, 'color': color}
    if outline:
        entry['outline'] = True
    return entry


def build_screens(mod_assets: Assets, vanilla_assets: Assets, names: bs.Names):
    screens = {}
    fuel = mod_assets.texture('dragonminez:gui/screen/fuel_generator_gui')
    panel = screen_panel(fuel)
    panel.blit(fuel, (177, 1, 191, 15), (81, 19))
    layout = panel.save('Screen fuel generator.png', energy=[154 * SCALE, 21 * SCALE, 12 * SCALE, 52 * SCALE])
    layout['fixed'] = [{'pos': [81 * SCALE, 39 * SCALE], 'items': FUELS}]
    layout['texts'] = [text(8, 6, names.key('block.dragonminez.fuel_generator'))]
    screens['fuel_generator'] = layout

    gravity = mod_assets.texture('dragonminez:gui/screen/gravity_device_gui')
    widgets = vanilla_assets.texture('minecraft:gui/widgets')
    panel = screen_panel(gravity)
    box = Image.new('RGBA', (52, 18), (0xA0, 0xA0, 0xA0, 255))
    box.paste((0, 0, 0, 255), (1, 1, 51, 17))
    panel.image.alpha_composite(box, (39, 19))
    panel.image.alpha_composite(nine_slice(widgets, (0, 66, 200, 86), 40, 18, 20, 4), (95, 19))
    panel.image.alpha_composite(nine_slice(widgets, (0, 66, 200, 86), 95, 18, 20, 4), (40, 42))
    layout = panel.save('Screen gravity device.png', energy=[154 * SCALE, 21 * SCALE, 12 * SCALE, 52 * SCALE])
    layout['texts'] = [
        text(88, 6, names.key('block.dragonminez.gravity_device'), 'center', '#ffffff', True),
        text(44, 24, {lang: '10' for lang in LANGS}, 'left', '#e0e0e0'),
        text(115, 24, names.key('gui.dragonminez.gravity_device.set'), 'center', '#ffffff', True),
        text(87.5, 47, names.key('gui.dragonminez.gravity_device.turn_on'), 'center', '#ffffff', True),
        text(88, 64, names.key('gui.dragonminez.gravity_device.idle'), 'center', '#aaaaaa', True),
    ]
    screens['gravity_device'] = layout
    return screens


def build_layouts(mod_assets: Assets, vanilla_assets: Assets):
    crafting = vanilla_assets.texture('minecraft:gui/container/crafting_table')
    pattern = mod_assets.texture('dragonminez:gui/screen/pattern_station_gui')
    layouts = {
        'crafting': grid_layout(crafting, (176, 166), (29, 16, 83, 70), 3, (90, 35, 112, 50), (119, 30, 145, 56), 'Recipe GUI crafting.png'),
        'pattern': grid_layout(pattern, (298, 146), (7, 23, 115, 131), 6, (182, 25, 204, 40), (212, 19, 238, 45), 'Recipe GUI pattern.png'),
        'kikono': kikono_layout(mod_assets.texture('dragonminez:gui/screen/kikono_station_gui')),
        'smelting': furnace_layout(vanilla_assets.texture('minecraft:gui/container/furnace'), 'Recipe GUI furnace.png', FUELS),
        'blasting': furnace_layout(vanilla_assets.texture('minecraft:gui/container/blast_furnace'), 'Recipe GUI blast furnace.png', FUELS),
        'smoking': furnace_layout(vanilla_assets.texture('minecraft:gui/container/smoker'), 'Recipe GUI smoker.png', FUELS),
        'campfire': campfire_layout(crafting),
        'brewing': brewing_layout(vanilla_assets.texture('minecraft:gui/container/brewing_stand'), crafting),
    }
    for kind, layout in layouts.items():
        layout['station'] = STATIONS[kind]
    return layouts


def icon_name(item_id: str) -> str:
    ns, path = rl(item_id)
    return f'Item {ns} {path}.png'


def page_for(item_id: str, names: bs.Names, pages: set):
    if item_id in bs.ITEM_PAGES:
        return bs.ITEM_PAGES[item_id]
    for pattern, page in PAGE_RULES:
        if re.match(pattern, item_id):
            return page
    english = names.thing('item', item_id)['en']
    if english in pages:
        return english
    return None


I18N = ROOT / 'docs' / 'registry' / 'recipes-i18n.tsv'


class RecipeNames:
    def __init__(self, names: bs.Names):
        self.names = names
        self.rows = {}
        if I18N.exists():
            for line in I18N.read_text(encoding='utf-8').splitlines():
                parts = line.split(chr(9))
                if len(parts) >= 4 and parts[0] and not parts[0].startswith('#'):
                    self.rows[parts[0]] = (parts[2].strip(), parts[3].strip())
        self.missing = {}

    def item(self, item_id: str):
        name = self.names.thing('item', item_id)
        ns, path = rl(item_id)
        if ns == 'minecraft':
            return name
        for key in (f'item.{ns}.{path}', f'block.{ns}.{path}'):
            if key not in self.names.en:
                continue
            official = [bs.strip_codes(self.names.mod[lang].get(key, '')) for lang in ('es', 'pt')]
            if all(official):
                return name
            self.missing[key] = name['en']
            es, pt = self.rows.get(key, ('', ''))
            return {'en': name['en'], 'es': official[0] or es or name['en'], 'pt': official[1] or pt or name['en']}
        return name

    def write(self) -> int:
        header = chr(9).join(['# key', 'en', 'es', 'pt']) + '  (item and block names with no official Crowdin translation, used by Module:Recipes; empty = English)'
        lines = [header]
        empty = 0
        for key in sorted(self.missing):
            es, pt = self.rows.get(key, ('', ''))
            if not es or not pt:
                empty += 1
            lines.append(chr(9).join([key, self.missing[key], es, pt]))
        I18N.write_text(chr(10).join(lines) + chr(10), encoding='utf-8', newline=chr(10))
        return empty


def vanilla_key(names: bs.Names, key: str):
    if key not in names.mc['en']:
        return None
    return {lang: names.mc[lang].get(key, names.mc['en'][key]) for lang in LANGS}


def drops_itself(mod: pathlib.Path, block: str, result: str) -> bool:
    ns, path = rl(block)
    for folder in ('src/main/resources', 'src/generated/resources'):
        table = mod / folder / 'data' / ns / 'loot_tables' / 'blocks' / f'{path}.json'
        if table.exists() and f'"{result}"' in table.read_text(encoding='utf-8'):
            return True
    return False


def collect(mod: pathlib.Path, tags):
    recipes = load_recipes(mod)
    out = {}
    by_result = {}
    cooking = {}
    kikono = {piece: [] for piece in KIKONO_PIECES}
    for ident, data in sorted(recipes.items()):
        kind = data['type']
        result, count = result_of(data)
        if kind in COOKING:
            group = (COOKING[kind], result, data.get('cookingtime'))
            entry = cooking.setdefault(group, {'kind': COOKING[kind], 'slots': {'input': []}, 'result': [result]})
            for item in ingredient_items(data['ingredient'], tags):
                if item not in entry['slots']['input']:
                    entry['slots']['input'].append(item)
            if data.get('cookingtime'):
                entry['time'] = data['cookingtime']
            continue
        if kind == KIKONO_TYPE:
            slots = {str(i): ingredient_items(data[f'slot_{i}'], tags) for i in range(1, 10) if f'slot_{i}' in data}
            slots['pattern'] = ingredient_items(data['pattern'], tags)
            slots['template'] = ingredient_items(data['template'], tags)
            entry = {'kind': 'kikono', 'slots': slots, 'result': [result],
                     'time': data.get('crafting_time', 100), 'energy': data.get('energy_cost', 1000)}
            piece = next((p for p in KIKONO_PIECES if result.endswith(f'_armor_{p}')), None)
            if piece:
                kikono[piece].append((ident, entry))
                continue
            out[ident] = entry
            by_result.setdefault(result, []).append(ident)
            continue
        entry = {
            'kind': 'pattern' if kind == PATTERN_TYPE else 'crafting',
            'slots': grid_of(data, tags, 6 if kind == PATTERN_TYPE else 3),
            'result': [result],
        }
        if count > 1:
            entry['count'] = count
        if kind == 'minecraft:crafting_shapeless':
            entry['shapeless'] = True
        out[ident] = entry
        by_result.setdefault(result, []).append(ident)

    for (kind, result, _), entry in sorted(cooking.items(), key=lambda item: (item[0][0], item[0][1], item[0][2] or 0)):
        if any(drops_itself(mod, block, result) for block in entry['slots']['input']):
            entry['alternate'] = True
        ident = f'{kind}/{result}'
        while ident in out:
            ident += '+'
        out[ident] = entry
        by_result.setdefault(result, []).append(ident)

    armor = {}
    for piece, entries in kikono.items():
        for _, entry in entries:
            armor[entry['result'][0]] = {'pattern': entry['slots']['pattern'][0], 'piece': piece}
        by_set = {ident.split(':', 1)[1].split('_armor_')[0]: entry for ident, entry in entries}
        chosen = [s for s in KIKONO_SHOWCASE if s in by_set]
        chosen += [s for s in sorted(by_set) if s not in chosen]
        chosen = chosen[:8]
        if not chosen:
            continue
        first = by_set[chosen[0]]
        slots = dict(first['slots'])
        slots['pattern'] = [by_set[s]['slots']['pattern'][0] for s in chosen]
        out[f'kikono/{piece}'] = {
            'kind': 'kikono', 'slots': slots, 'result': [by_set[s]['result'][0] for s in chosen],
            'time': first['time'], 'energy': first['energy'],
        }

    water = vanilla_potion('water')
    regeneration = vanilla_potion('regeneration')
    curative = 'minecraft:potion.curative'
    if curative not in VIRTUAL:
        VIRTUAL[curative] = {'base': 'minecraft:potion', 'tint': (0x9D, 0xFF, 0x00), 'key': 'item.minecraft.potion.effect.curative'}
    for ident, ingredient, base, result in (
        ('brewing/curative_flask', 'dragonminez:namek_moss', water, curative),
        ('brewing/heart_medicine', 'dragonminez:senzu_bean', regeneration, 'dragonminez:heart_medicine'),
    ):
        out[ident] = {'kind': 'brewing', 'slots': {'ingredient': [ingredient], 'bottle1': [base], 'bottle2': [base], 'bottle3': [base]},
                      'result': [result], 'count': 3}
        by_result.setdefault(result, []).append(ident)

    for entry in out.values():
        if entry['kind'] != 'crafting' or entry.get('count', 1) == 1:
            continue
        inputs = {item for items in entry['slots'].values() for item in items}
        if len(inputs) != 1:
            continue
        source = next(iter(inputs))
        result = entry['result'][0]
        for other in by_result.get(source, []):
            packed = {item for items in out[other]['slots'].values() for item in items}
            if packed == {result}:
                entry['unpack'] = True
    return out, by_result, armor


def main() -> int:
    parser = argparse.ArgumentParser(description='Render recipe icons and write Module:Recipes/data from the mod recipes.')
    parser.add_argument('--mod', required=True, help='path to the DragonMineZ mod repository')
    parser.add_argument('--vanilla', help='vanilla 1.20.1 assets: a resource pack folder or the client jar (default: ForgeGradle cache)')
    parser.add_argument('--glossary', default=str(ROOT / '.cache' / 'glossary'))
    args = parser.parse_args()

    mod = pathlib.Path(args.mod)
    vanilla_roots = find_vanilla(args.vanilla)
    mod_assets = Assets([mod / 'src/main/resources', mod / 'src/generated/resources'])
    vanilla_assets = Assets(vanilla_roots)
    assets = Assets([mod / 'src/main/resources', mod / 'src/generated/resources'] + vanilla_roots)
    names = bs.Names(mod, pathlib.Path(args.glossary))
    labels = RecipeNames(names)
    tags = Tags(mod)
    pages = {title for title, _ in validate.titles_from_files()}

    recipes, by_result, armor = collect(mod, tags)
    layouts = build_layouts(mod_assets, vanilla_assets)
    screens = build_screens(mod_assets, vanilla_assets, names)

    used = set()
    for armor_id, info in armor.items():
        used.update([armor_id, info['pattern']])
    for recipe in recipes.values():
        used.update(recipe['result'])
        for items in recipe['slots'].values():
            used.update(items)
    for layout in list(layouts.values()) + list(screens.values()):
        if 'station' in layout:
            used.add(layout['station'])
        for fixed in layout.get('fixed', []):
            used.update(fixed['items'])

    for old in FILES.glob('Item *.png'):
        old.unlink()
    items = {}
    failures = []
    for item_id in sorted(used):
        image, problem = render_item(assets, item_id)
        if image is None:
            failures.append(f'{item_id}: {problem}')
            image = Image.new('RGBA', (ICON, ICON), (0, 0, 0, 0))
        image.save(FILES / icon_name(item_id), optimize=True)
        if item_id in VIRTUAL:
            key = VIRTUAL[item_id]['key']
            name = vanilla_key(names, key) or names.key(key) or names.thing('item', VIRTUAL[item_id]['base'])
            entry = {'name': name, 'icon': icon_name(item_id)}
            if VIRTUAL_PAGES.get(item_id):
                entry['page'] = VIRTUAL_PAGES[item_id]
            elif name['en'] and item_id.startswith('minecraft:potion.') and vanilla_key(names, key):
                entry['url'] = 'https://minecraft.wiki/w/' + name['en'].replace(' ', '_')
            items[item_id] = entry
            continue
        entry = {'name': labels.item(item_id), 'icon': icon_name(item_id)}
        if item_id.startswith('minecraft:'):
            entry['url'] = 'https://minecraft.wiki/w/' + entry['name']['en'].replace(' ', '_')
        else:
            page = page_for(item_id, names, pages)
            if page:
                entry['page'] = page
        items[item_id] = entry

    for recipe in recipes.values():
        if recipe['kind'] != 'pattern':
            continue
        blank = next((v[0] for v in recipe['slots'].values() if v[0].startswith('dragonminez:blank_pattern_')), None)
        if blank:
            recipe['set'] = 'z' if blank.endswith('_z') else 'super'
            item = items[recipe['result'][0]]
            if 'page' not in item:
                item['page'] = 'Z Armor Sets' if recipe['set'] == 'z' else 'Super Armor Sets'
    for recipe in recipes.values():
        if recipe['kind'] != 'kikono':
            continue
        for pattern, result in zip(recipe['slots']['pattern'], recipe['result']):
            page = items.get(pattern, {}).get('page')
            if page and 'page' not in items[result]:
                items[result]['page'] = page
    for armor_id, info in armor.items():
        page = items.get(info['pattern'], {}).get('page')
        if page and 'page' not in items[armor_id]:
            items[armor_id]['page'] = page

    data = {
        'layouts': layouts,
        'screens': screens,
        'items': items,
        'recipes': dict(sorted(recipes.items())),
        'byResult': {k: v for k, v in sorted(by_result.items())},
        'armor': dict(sorted(armor.items())),
        'tools': ['dragonminez:armor_crafting_kit'],
    }
    DATA.parent.mkdir(parents=True, exist_ok=True)
    DATA.write_text('return ' + bs.to_lua(data) + '\n', encoding='utf-8', newline='\n')

    pending = labels.write()
    kinds = {}
    for recipe in recipes.values():
        kinds[recipe['kind']] = kinds.get(recipe['kind'], 0) + 1
    unmapped = sorted(i for i, e in items.items() if not i.startswith('minecraft:') and 'page' not in e)
    print(f'{len(recipes)} recipes {kinds}, {len(items)} items -> {DATA.relative_to(ROOT)}, icons in {FILES.relative_to(ROOT)}')
    if failures:
        print(f'{len(failures)} icon(s) could not be rendered:')
        for line in failures:
            print('  ' + line)
    if pending:
        print(f'{pending} name(s) still need a Spanish or Portuguese translation in {I18N.relative_to(ROOT)}')
    if unmapped:
        print(f'{len(unmapped)} mod item(s) without a wiki page: ' + ', '.join(unmapped))
    return 0


if __name__ == '__main__':
    sys.exit(main())
