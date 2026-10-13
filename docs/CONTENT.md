# Contenido

`content/pages/<Espacio de nombres>/<Título>.<ext>` refleja páginas de la wiki (`Main` = espacio principal; `.wiki` wikitext, `.lua` módulos, `.css`/`.js`/`.json` se publican con la extensión en el título). `content/files/` son archivos a subir (`File:<nombre>`).

```bash
python tools/push_pages.py --api https://wiki.dragonminez.com/api.php --dry-run
python tools/push_pages.py --api https://wiki.dragonminez.com/api.php
python tools/push_pages.py --api https://wiki.dragonminez.com/api.php --only "Races" --only "Template:Infobox*"
```

## Organización

La wiki se organiza por **entidades**, no por los documentos de la GitHub Wiki: cada concepto tiene un **hub** que explica qué es y cómo funciona en general (`Races`, `Transformations`, `Masters`, `World Bosses`, `Sagas`, `Items`, `Configuration`…) y cada entidad tiene su propia página con infobox (`Saiyan`, `Master Roshi`, `Janemba`, `Frieza Saga`, `Senzu Bean`…). El mapa completo de títulos y los campos de cada infobox están en `docs/IA.md`; las reglas de redacción y de traducción en `docs/STYLE.md`.

- Cada infobox agrega su categoría (`Category:Races`, `Category:Masters`…, en las traducciones `Category:Races/es`).
- Imágenes: el infobox y las tarjetas usan `File:<Página>.png` si existe; si no, `File:Placeholder.png` (o `Placeholder-wide.png` en tarjetas). Para poner la imagen real basta con subir `File:<Página>.png`, sin tocar la página.
- Nombres traducidos: `Module:Labels/data` (generado) traduce etiquetas de infobox y nombres de páginas; `{{L|Página}}` enlaza con el nombre en el idioma del lector.

## Herramientas

| Comando | Qué hace |
|---|---|
| `python tools/build_templates.py` | Regenera los `Template:Infobox *` (+ `/doc`) y `Module:Labels/data` (une `docs/registry/*-labels.tsv` con las tablas curadas del script). |
| `python tools/build_categories.py` | Crea las páginas `Category:*` (+ `/es`, `/pt`) de toda categoría en uso, con un enlace a su hub. `--force` las reescribe. |
| `python tools/validate.py [--offline]` | Revisa `<translate>` mal anidados, enlaces internos sin `Special:MyLanguage`, enlaces a páginas que no existen en el repo y, con la wiki, errores de render y plantillas faltantes. |
| `python tools/translations.py mark\|export\|import ...` | Ciclo de traducción (ver abajo). `--every-page` recorre todas las páginas de contenido. |
| `python tools/build_recipes.py --mod <repo del mod> [--vanilla <pack 1.20.1 o client jar>]` | Regenera `Module:Recipes/data`, los íconos de ítems (`content/files/recipes/`, bloques en isométrico y modelos GeckoLib incluidos) y los fondos de interfaz desde las recetas del mod (crafteo, Pattern Station, Kikono Station, hornos, fogata y pociones). Sin `--vanilla` usa el `client-extra.jar` de la caché de ForgeGradle. Correrlo cuando cambien recetas, texturas o nombres y publicar con `push_pages.py` (sube también los archivos). |

## Traducciones

Fuente en inglés; traducciones a español (latino neutro, *tú*, como dragonminez.com) y portugués de Brasil (*você*). Cada página traducible se divide en unidades (`<!--T:n-->` en el archivo fuente) y cada unidad traducida vive en la wiki como `Translations:<Página>/<n>/<idioma>`.

Por dentro cada traducción es la página `<Página>/es` o `<Página>/pt`, pero se sirve en `/es/wiki/<Página>` y `/pt/wiki/<Página>` (la portada en `/es/` y `/pt/`). El skin arma esas URLs (`GetLocalURL`), las enruta (`WebRequestPathInfoRouter`) y redirige las viejas (`/wiki/<Página>/es`) y la copia `/wiki/<Página>/en` de Translate a su forma canónica. Además lleva a cada lector a la versión de su idioma: cookie `dmz_lang` compartida con dragonminez.com o, si no hay, el idioma del navegador; sin ninguno de los dos no redirige, así los buscadores indexan cada versión.

- `content/translations/{es,pt}/<Página>.json`: la traducción de cada unidad (`source`, `translation`, `outdated`). Es la fuente de verdad de las traducciones.
- `docs/registry/glossary.tsv`: textos oficiales del juego (en_us del mod + Crowdin es-ES/pt-BR). Ítems, técnicas, habilidades, menús y teclas se traducen igual que en el juego. Se regenera con `python tools/build_glossary.py --mod <repo del mod>`, que también escribe `docs/registry/official-names.tsv` (nombres oficiales de páginas, con prioridad en `Module:Labels/data`) — las correcciones manuales van en `docs/registry/name-overrides.tsv`.
- `python tools/check_translations.py [páginas…]`: compara cada unidad con su original (enlaces, plantillas, `<code>`, números, negritas, líneas) y lista lo que falte o no coincida.

**Cargar las traducciones en una wiki** (por ejemplo, producción después del deploy):

```bash
python tools/push_pages.py --api https://wiki.dragonminez.com/api.php
python tools/translations.py mark --every-page --api https://wiki.dragonminez.com/api.php
python tools/translations.py import --every-page --api https://wiki.dragonminez.com/api.php
```

Como los archivos ya traen los marcadores `<!--T:n-->`, la wiki conserva los mismos números de unidad y el import encaja sin conflictos.

La primera carga completa son ~21.700 ediciones (una por unidad e idioma): hora y media contra el lab, algo más contra producción por la latencia. Se puede cortar y relanzar cuando sea, porque el import salta las unidades que ya tienen ese mismo texto.

Translate encola un re-render de la página traducida **por cada unidad guardada** (no se deduplican), así que una carga grande deja miles de renders repetidos para el `jobrunner` (media CPU): con la primera carga, más de un día de trabajo. Para cargas grandes, parar el jobrunner antes del import y, al terminar, cambiar esos renders por uno solo por página e idioma (en la VPS):

```bash
docker compose stop jobrunner
# ... push_pages / mark / import desde la PC ...
docker compose exec -u www-data wiki php maintenance/run.php manageJobs --type RenderTranslationPageJob --action delete
docker compose exec -u www-data wiki php maintenance/run.php ./extensions/Translate/scripts/refresh-translatable-pages.php --jobqueue
docker compose start jobrunner
```

`refresh-translatable-pages` deja un render por página e idioma en lugar de miles. Las ediciones chicas del día a día no necesitan esto.

Con el workflow (`Sync content` → *full*) el jobrunner queda encendido, porque los trabajos de `mark` tienen que correr antes del `import`; al terminar el workflow alcanza con los comandos `manageJobs` y `refresh-translatable-pages` de arriba.

Si no es la primera carga (ya había traducciones y cambió el inglés), con el jobrunner parado hay que correr los trabajos de `mark` antes del `import`, por lo explicado más abajo:

```bash
docker compose exec -u www-data wiki php maintenance/run.php runJobs --type UpdateTranslatablePageJob
docker compose exec -u www-data wiki php maintenance/run.php runJobs --type UpdateMessageJob
```

**En cada update del contenido:** editar el inglés, publicar, `mark` (asigna números a las unidades nuevas y escribe los marcadores en el repo), `export` (solo lo nuevo o desactualizado), traducir esos JSON, `check_translations.py`, `import` y commitear todo.

Entre `mark` e `import` la cola de trabajos tiene que haberse vaciado (el `jobrunner` lo hace solo en un par de minutos; con `showJobs` se ve si queda algo). Los trabajos que encola `mark` marcan como desactualizadas las traducciones de las unidades que cambiaron: si corren después del `import`, marcan también las traducciones nuevas. Si pasa, basta con repetir el `import` de esas páginas: guarda el mismo texto y quita la marca.

El `import` solo quita esa marca a una unidad si su `source` en el JSON coincide con el inglés actual de la wiki y no tiene `outdated: true`. Así una traducción vieja nunca pasa por actualizada. Si la wiki no tenía traducción para esa unidad, la sube marcada como desactualizada (`!!FUZZY!!`).

Las traducciones que alguien hace o corrige en la wiki (`Special:Translate`) vuelven solas a estos JSON con el sync de contenido (ver "Despliegue automático" en [SERVER.md](SERVER.md)), lo mismo que las páginas, imágenes y páginas nuevas.

## Plantillas y estilos disponibles

- Infoboxes DRUID: `{{Infobox Race}}`, `Class`, `Form`, `Master`, `Dimension`, `Structure`, `Mob`, `World Boss`, `Raid`, `Tournament`, `Saga`, `Dragon`, `Item`, `Weapon`, `Armor`, `Skill`, `Technique`, `Fusion`, `Effect` (campos en `docs/IA.md` y en el `/doc` de cada una).
- Pestañas de formas en cualquier infobox (`Module:Infobox/Hooks`): `|forms=Janemba; Super Janemba` y, por cada forma después de la primera, `|<Forma>_image=Archivo.png` más los campos que cambian (`|Super Janemba_Health=8820000`). La primera forma usa la imagen y los datos normales; una forma hereda los campos que no redefine, y `none` oculta el campo en esa forma. Las etiquetas de las pestañas salen de `Module:Labels/data` (agregar el nombre de la forma a un `docs/registry/*-labels.tsv`). Las pestañas se muestran en una sola fila desplazable con flechas (`bindTabStrips` en `skins/DragonMineZ/resources/skin.js`). En las páginas de razas las pestañas son los tipos de cuerpo (`docs/registry/race-bodies.tsv`; Bio-Androide en orden 1, 4, 2, 5, 3, 6).
- Transformaciones de una raza: `{{Form group|saiyan|oozaru}}` abre un grupo plegable (el primero de la raza sale abierto), `{{Race form|saiyan|oozaru|oozaru|level=|cost=|story=|power=|def=|drain=|text=<translate>…</translate>}}` dibuja una forma con su render a un costado (los lados se alternan), sus stats y la descripción, y `{{Form group end}}` cierra el grupo. Nombre, imagen, velocidad, stamina por ataque, velocidad de ataque y tamaño salen de `Module:Forms/data`, que genera `python tools/build_race_forms.py --config <config/dragonminez/races> --mod <repo del mod> [--keyed <renders recortados>]` (con `--keyed` también copia los renders a `content/files`). `drain` vacío o `—` muestra "Sin consumo de ki".
- `{{Note|type=info|tip|warning|danger|config|title=…|texto}}` reemplaza los `>` de la GitHub Wiki.
- `{{Card|Página|texto}}` dentro de `<div class="dmz-cards">` (o `dmz-cards dmz-cards--tall` para retratos): grilla de tarjetas con imagen.
- `{{L|Página}}`, `{{Main|Página}}`, `{{See also|A|B}}`, `{{Config|Página|clave}}`, `{{Key|R}}`, `{{Command|/dmzlocate ...}}`, `{{Navbox}}` (y los `Template:Navbox *` de cada dominio).
- `{{Recipe|id del ítem|...}}`: la receta dibujada como en el juego, con nombres en el idioma del lector y enlaces (ver `Template:Recipe/doc`). `{{#invoke:Recipes|patterns|z}}` (o `super`) lista los patrones; `{{#invoke:Recipes|screen|fuel_generator}}` (o `gravity_device`) dibuja el menú de esa máquina. Las recetas nunca se escriben a mano en las páginas.
- `Crafting Finder` (en la barra lateral): buscador con autocompletado de todo ítem fabricable (incluidas las 256 piezas de armadura); al elegir uno pide `{{#invoke:Recipes|tree|id}}` por la API y muestra el árbol completo con los materiales base totales. El JS está en `skins/DragonMineZ/resources/finder.js`; el enlace `#dragonminez:id` se puede compartir.
- Tablas: `class="wikitable"` (el skin las redondea y agrega scroll horizontal en móvil).
- Portada: `.dmz-start`, `.dmz-section-title`/`.dmz-section-lead`, `.dmz-portals`/`.dmz-portal` con `data-icon` y `.dmz-portal__links`, `.dmz-feature`, `.dmz-button`, `.dmz-discord-cta`.
- Barra lateral: `MediaWiki:Sidebar` (+ `/es`, `/pt`; el skin usa la del idioma del lector). Cada `* encabezado` es un panel plegable; los encabezados `dmz-sidebar-*` son mensajes del skin.
- Iconos: solo los nombres listados en `ICON_NAMES` de `skins/DragonMineZ/includes/Hooks.php` (se descarga un subconjunto de Material Symbols). Para usar uno nuevo, agregarlo a esa lista.
