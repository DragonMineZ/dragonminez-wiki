# DragonMineZ Wiki

Infraestructura, skin y contenido base de la wiki oficial de DragonMineZ en `wiki.dragonminez.com`: MediaWiki 1.43 LTS autohospedado, con el mismo diseño que [dragonminez.com](https://dragonminez.com) y contenido en inglés, español y portugués.

## Arquitectura

```
Visitante ──HTTPS──▶ Cloudflare ──túnel──▶ cloudflared (host, el mismo del panel del bot)
                                                │
                                                ▼  http://127.0.0.1:8091
                         ┌──────────────── contenedor "wiki" ────────────────┐
                         │ Apache + PHP 8.3 (mod_php) + MediaWiki 1.43.11     │
                         │ skin DragonMineZ · LuaSandbox · APCu               │
                         └────────────────────────┬──────────────────────────┘
                         contenedor "jobrunner" ──┤  (misma imagen, cola de trabajos)
                                                  ▼
                         data/db      SQLite (dmzwiki.sqlite + caché + cola)
                         data/images  archivos subidos
                         data/secrets secrets.php (claves), nunca en git
```

### Decisiones

| Tema | Decisión | Por qué |
|---|---|---|
| Base de datos | **SQLite** | La VPS tiene 2 GB y ya corre Postgres, el bot y la web. SQLite no agrega un proceso servidor, está soportado oficialmente por MediaWiki y alcanza de sobra para una wiki de lectura pública con pocos editores. Se puede migrar a MariaDB con `dumpBackup`/`importDump` si algún día hace falta. |
| Proxy y TLS | **El túnel de cloudflared existente** | El panel del bot ya sale por cloudflared. La wiki escucha solo en `127.0.0.1:8091`; no hay nginx ni puertos abiertos nuevos. |
| Skin | **Skin propio `DragonMineZ`** (SkinMustache) | Copia el header, footer, menú flotante, paleta (`global.css` de la web), tipografía Onest, iconos Material Symbols y componentes (pills, chips, tarjetas, dropdowns con blur). Layout de wiki clásica: navegación en paneles plegables a la izquierda, artículo con índice (TOC) plegable dentro de la página y columna derecha con versión actual, artículos relacionados, más visitados y cambios recientes. Ningún otro skin está cargado y la preferencia de skin está oculta. |
| Más visitados | Contador propio (`dmz_page_views`) | HitCounters no soporta SQLite. El skin cuenta 1 de cada `$wgDMZViewSample` (4) vistas anónimas de artículos en una actualización diferida; mientras no hay datos usa la lista de `MediaWiki:Dmz-rail-popular-pages`. La tabla se crea con `update.php`. |
| Tema | Oscuro por defecto + claro, igual que la web | Cookie `dmz_theme` en `.dragonminez.com`, compartida con la web (ver integraciones). |
| Idiomas | Contenido en `en` (fuente) + traducciones `es` y `pt` con **Translate** | Cada página traducible tiene `Página/es` y `Página/pt`. Translate marca como desactualizada cada unidad cuyo inglés cambió, así en cada update solo se traduce lo nuevo. La interfaz sigue la cookie `dmz_lang` (la misma del selector de banderas de la web). |
| Acceso | Discord a través de Clerk (extensión propia `DMZAuth`) | Sin usuario y contraseña. El botón **Editar** está siempre visible; quien no tiene permiso ve un aviso y el botón *Iniciar sesión con Discord* (el mismo modal de Clerk que la Peluquería). Solo pueden entrar y editar los miembros del Discord con **Wiki Maintainer**, **Moderator** o un rol con permiso de **Administrador**. Los permisos no se guardan en la wiki: se recalculan desde Discord cada 5 minutos, así que quitar el rol quita el acceso. |

### Presupuesto de memoria

| Proceso | Límite |
|---|---|
| `wiki` (Apache prefork, máx. 10 hijos) | 768 MB (`mem_limit`) |
| `jobrunner` | 256 MB |
| Uso típico en reposo | ~150–250 MB entre los dos |

Si `scripts/vps-inventory.sh` muestra menos de ~1 GB libre o no hay swap, crear un swapfile de 2 GB antes de instalar.

## Puesta en marcha en la VPS

### Fase 0: inventario

```bash
bash scripts/vps-inventory.sh
```

Pegar la salida en el chat; no contiene secretos. Confirma memoria, disco, Docker, puertos ocupados y cómo está configurado cloudflared.

### Fase 1: instalación

1. Clonar este repo en `/opt/dragonminez-wiki` y entrar.
2. `cp .env.example .env` y revisar los valores (`MW_SERVER`, `DMZ_COOKIE_DOMAIN`, SMTP opcional).
3. Instalar (pide el usuario y la contraseña del primer administrador; la contraseña nunca queda en disco):

   ```bash
   sudo bash scripts/install.sh
   ```

4. Publicar el host en el túnel:
   - **Túnel administrado desde el dashboard** (cloudflared con `--token`): Zero Trust → Networks → Tunnels → el túnel del panel → *Public Hostname* → `wiki.dragonminez.com` → `HTTP` → `localhost:8091`.
   - **Túnel con `config.yml`**: agregar antes del `- service: http_status:404` final:

     ```yaml
       - hostname: wiki.dragonminez.com
         service: http://localhost:8091
     ```

     y `sudo systemctl restart cloudflared`.
5. Backups diarios:

   ```bash
   sudo cp scripts/systemd/dmz-wiki-backup.* /etc/systemd/system/
   sudo systemctl daemon-reload && sudo systemctl enable --now dmz-wiki-backup.timer
   ```

   Para copiar fuera de la VPS, configurar `rclone` y poner el destino en `BACKUP_RCLONE_REMOTE`. Probar una restauración una vez con `scripts/restore.sh data/backups/<fecha>`.
6. Cuenta bot para publicar contenido desde este repo (la web ya no acepta usuario y contraseña, así que se crea por consola; el script imprime la contraseña generada una sola vez):

   ```bash
   docker compose exec -u www-data wiki php maintenance/run.php createBotPassword \
     --appid sync --grants basic,highvolume,editpage,createeditmovepage,uploadfile,uploadeditmovefile,editinterface,editsiteconfig \
     Admin
   ```

   Guardarla solo en variables de entorno locales de quien publica (`MW_BOT_USER=Admin@sync`, `MW_BOT_PASSWORD`), nunca en el repo ni en el chat.
7. Recomendado: activar la verificación en dos pasos (OATHAuth) en las cuentas de administrador desde `Special:Preferences`.

### Acceso con Discord (Clerk)

1. En `.env`: `DMZ_CLERK_PUBLISHABLE_KEY` (la `pk_live_…` de dragonminez.com, es pública) y `DMZ_DISCORD_GUILD_ID` (ID del servidor de Discord).
2. En `data/secrets/secrets.php` (nunca en el repo ni en el chat):

   ```php
   $dmzClerkSecretKey = 'sk_live_…';
   $dmzDiscordBotToken = '…';
   ```

   El bot puede ser cualquiera que ya esté en el servidor (por ejemplo el de dragonminez-ai): solo lee miembros y roles por la API REST, no necesita intents privilegiados.
3. `sudo bash scripts/update.sh` (crea la tabla `dmz_discord_link`).
4. En Clerk, comprobar que `https://wiki.dragonminez.com` está entre los orígenes permitidos de la instancia de producción (los subdominios de dragonminez.com suelen estarlo; si el modal de Clerk no abre, agregarlo con `PATCH /v1/instance` → `allowed_origins`).

| Rol en Discord | Grupos en la wiki | Puede |
|---|---|---|
| Wiki Maintainer | `editor` | crear y editar páginas, subir archivos, mover, traducir y marcar páginas para traducción. **No** borra ni protege. |
| Moderator | `editor` + `moderator` | todo lo anterior, más borrar, restaurar y proteger páginas. |
| Dueño del servidor o rol con permiso de Administrador | `editor` + `moderator` + `sysop` + `interface-admin` + `bureaucrat` | administración completa (bloqueos, interfaz, CSS/JS del sitio, filtros). |

Se cambia con `$wgDMZDiscordGroupRoles` (nombres o IDs de rol; `@administrator` = dueño o permiso de Administrador). Los roles se cachean `$wgDMZDiscordRoleTTL` segundos (300). Si Discord no responde, se mantiene el último resultado conocido hasta 24 h para no dejar a nadie afuera por una caída; al iniciar sesión siempre se consulta en vivo.

**Emergencia:** `MW_PASSWORD_LOGIN=1` en `.env` y reiniciar devuelve el login con usuario y contraseña (por ejemplo, si Clerk o Discord están caídos). La cuenta `Admin` de la instalación y sus BotPasswords (`push_pages.py`, `translations.py`) funcionan siempre, porque el login de bots no pasa por este proveedor.

### Operación

| Tarea | Comando |
|---|---|
| Actualizar MediaWiki / skin / config | `sudo bash scripts/update.sh` (hace backup antes) |
| Backup manual | `sudo bash scripts/backup.sh` |
| Restaurar | `sudo bash scripts/restore.sh data/backups/<fecha>` |
| Logs | `docker compose logs -f wiki` |
| Script de mantenimiento | `docker compose exec -u www-data wiki php maintenance/run.php <script>` |

Todo comando de mantenimiento corre como `www-data`: si corre como root, SQLite y la caché quedan con archivos que Apache no puede escribir.

## Contenido

`content/pages/<Espacio de nombres>/<Título>.<ext>` refleja páginas de la wiki (`Main` = espacio principal; `.wiki` wikitext, `.lua` módulos, `.css`/`.js`/`.json` se publican con la extensión en el título). `content/files/` son archivos a subir (`File:<nombre>`).

```bash
python tools/push_pages.py --api https://wiki.dragonminez.com/api.php --dry-run
python tools/push_pages.py --api https://wiki.dragonminez.com/api.php
python tools/push_pages.py --api https://wiki.dragonminez.com/api.php --only "Races" --only "Template:Infobox*"
```

### Organización

La wiki se organiza por **entidades**, no por los documentos de la GitHub Wiki: cada concepto tiene un **hub** que explica qué es y cómo funciona en general (`Races`, `Transformations`, `Masters`, `World Bosses`, `Sagas`, `Items`, `Configuration`…) y cada entidad tiene su propia página con infobox (`Saiyan`, `Master Roshi`, `Janemba`, `Frieza Saga`, `Senzu Bean`…). El mapa completo de títulos y los campos de cada infobox están en `docs/IA.md`; las reglas de redacción y de traducción en `docs/STYLE.md`.

- Cada infobox agrega su categoría (`Category:Races`, `Category:Masters`…, en las traducciones `Category:Races/es`).
- Imágenes: el infobox y las tarjetas usan `File:<Página>.png` si existe; si no, `File:Placeholder.png` (o `Placeholder-wide.png` en tarjetas). Para poner la imagen real basta con subir `File:<Página>.png`, sin tocar la página.
- Nombres traducidos: `Module:Labels/data` (generado) traduce etiquetas de infobox y nombres de páginas; `{{L|Página}}` enlaza con el nombre en el idioma del lector.

### Herramientas

| Comando | Qué hace |
|---|---|
| `python tools/build_templates.py` | Regenera los `Template:Infobox *` (+ `/doc`) y `Module:Labels/data` (une `docs/registry/*-labels.tsv` con las tablas curadas del script). |
| `python tools/build_categories.py` | Crea las páginas `Category:*` (+ `/es`, `/pt`) de toda categoría en uso, con un enlace a su hub. `--force` las reescribe. |
| `python tools/validate.py [--offline]` | Revisa `<translate>` mal anidados, enlaces internos sin `Special:MyLanguage`, enlaces a páginas que no existen en el repo y, con la wiki, errores de render y plantillas faltantes. |
| `python tools/translations.py mark\|export\|import ...` | Ciclo de traducción (ver abajo). `--every-page` recorre todas las páginas de contenido. |
| `python tools/build_recipes.py --mod <repo del mod> [--vanilla <pack 1.20.1 o client jar>]` | Regenera `Module:Recipes/data`, los íconos de ítems (`content/files/recipes/`, bloques en isométrico y modelos GeckoLib incluidos) y los fondos de interfaz desde las recetas del mod (crafteo, Pattern Station, Kikono Station, hornos, fogata y pociones). Sin `--vanilla` usa el `client-extra.jar` de la caché de ForgeGradle. Correrlo cuando cambien recetas, texturas o nombres y publicar con `push_pages.py` (sube también los archivos). |

### Traducciones

Fuente en inglés; traducciones a español (latino neutro, *tú*, como dragonminez.com) y portugués de Brasil (*você*). Cada página traducible se divide en unidades (`<!--T:n-->` en el archivo fuente) y cada unidad traducida vive en la wiki como `Translations:<Página>/<n>/<idioma>`.

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

Si no es la primera carga (ya había traducciones y cambió el inglés), con el jobrunner parado hay que correr los trabajos de `mark` antes del `import`, por lo explicado más abajo:

```bash
docker compose exec -u www-data wiki php maintenance/run.php runJobs --type UpdateTranslatablePageJob
docker compose exec -u www-data wiki php maintenance/run.php runJobs --type UpdateMessageJob
```

**En cada update del contenido:** editar el inglés, publicar, `mark` (asigna números a las unidades nuevas y escribe los marcadores en el repo), `export` (solo lo nuevo o desactualizado), traducir esos JSON, `check_translations.py`, `import` y commitear todo.

Entre `mark` e `import` la cola de trabajos tiene que haberse vaciado (el `jobrunner` lo hace solo en un par de minutos; con `showJobs` se ve si queda algo). Los trabajos que encola `mark` marcan como desactualizadas las traducciones de las unidades que cambiaron: si corren después del `import`, marcan también las traducciones nuevas. Si pasa, basta con repetir el `import` de esas páginas: guarda el mismo texto y quita la marca.

### Plantillas y estilos disponibles

- Infoboxes DRUID: `{{Infobox Race}}`, `Class`, `Form`, `Master`, `Dimension`, `Structure`, `Mob`, `World Boss`, `Raid`, `Tournament`, `Saga`, `Dragon`, `Item`, `Weapon`, `Armor`, `Skill`, `Technique`, `Fusion`, `Effect` (campos en `docs/IA.md` y en el `/doc` de cada una).
- Pestañas de formas en cualquier infobox (`Module:Infobox/Hooks`): `|forms=Janemba; Super Janemba` y, por cada forma después de la primera, `|<Forma>_image=Archivo.png` más los campos que cambian (`|Super Janemba_Health=8820000`). La primera forma usa la imagen y los datos normales; una forma hereda los campos que no redefine, y `none` oculta el campo en esa forma. Las etiquetas de las pestañas salen de `Module:Labels/data` (agregar el nombre de la forma a un `docs/registry/*-labels.tsv`).
- `{{Note|type=info|tip|warning|danger|config|title=…|texto}}` reemplaza los `>` de la GitHub Wiki.
- `{{Card|Página|texto}}` dentro de `<div class="dmz-cards">` (o `dmz-cards dmz-cards--tall` para retratos): grilla de tarjetas con imagen.
- `{{L|Página}}`, `{{Main|Página}}`, `{{See also|A|B}}`, `{{Config|Página|clave}}`, `{{Key|R}}`, `{{Command|/dmzlocate ...}}`, `{{Navbox}}` (y los `Template:Navbox *` de cada dominio).
- `{{Recipe|id del ítem|...}}`: la receta dibujada como en el juego, con nombres en el idioma del lector y enlaces (ver `Template:Recipe/doc`). `{{#invoke:Recipes|patterns|z}}` (o `super`) lista los patrones; `{{#invoke:Recipes|screen|fuel_generator}}` (o `gravity_device`) dibuja el menú de esa máquina. Las recetas nunca se escriben a mano en las páginas.
- `Crafting Finder` (en la barra lateral): buscador con autocompletado de todo ítem fabricable (incluidas las 256 piezas de armadura); al elegir uno pide `{{#invoke:Recipes|tree|id}}` por la API y muestra el árbol completo con los materiales base totales. El JS está en `skins/DragonMineZ/resources/finder.js`; el enlace `#dragonminez:id` se puede compartir.
- Tablas: `class="wikitable"` (el skin las redondea y agrega scroll horizontal en móvil).
- Portada: `.dmz-start`, `.dmz-section-title`/`.dmz-section-lead`, `.dmz-portals`/`.dmz-portal` con `data-icon` y `.dmz-portal__links`, `.dmz-feature`, `.dmz-button`, `.dmz-discord-cta`.
- Barra lateral: `MediaWiki:Sidebar` (+ `/es`, `/pt`; el skin usa la del idioma del lector). Cada `* encabezado` es un panel plegable; los encabezados `dmz-sidebar-*` son mensajes del skin.
- Iconos: solo los nombres listados en `ICON_NAMES` de `skins/DragonMineZ/includes/Hooks.php` (se descarga un subconjunto de Material Symbols). Para usar uno nuevo, agregarlo a esa lista.

## Integraciones

- **dragonminez-web**: `integrations/dragonminez-web/shared-preferences.patch` hace que la web lea y escriba las cookies `dmz_theme` y `dmz_lang` en `.dragonminez.com`, así tema e idioma se comparten con la wiki. Al pasar a producción, el link *Wiki* de `src/components/Header.astro` pasa a `https://wiki.dragonminez.com/`.
- **dragonminez-ai**: `integrations/dragonminez-ai/mediawiki-sync.patch` (ver su README) cambia la sincronización del bot a la API de MediaWiki: solo páginas fuente en inglés (sin traducciones ni portada), wikitext limpio de marcas de Translate, links `https://wiki.dragonminez.com/wiki/Special:MyLanguage/<Título_con_guiones_bajos>` (cada usuario cae en su idioma), nuevo ajuste `WIKI_API_URL`, `wiki_git_url` eliminado y un cron cada 6 horas en lugar del evento `gollum`. La primera sincronización borra del vector store los archivos de la GitHub Wiki: correrla recién con la wiki de producción completa. Después, el workflow `wiki-sync.yml` del repo del mod y su secreto `DRAGONMINEZ_AI_DISPATCH_TOKEN` quedan obsoletos.

## Lab local (Windows)

Para probar el skin sin la VPS: PHP 8.3 portable + el tarball de MediaWiki 1.43.11 + las extensiones REL1_43 en una carpeta de lab.

```powershell
tools/lab/lab.ps1 -LabDir <carpeta> -Action install
tools/lab/lab.ps1 -LabDir <carpeta> -Action serve      # http://localhost:8080
tools/lab/shots.ps1 -OutDir <carpeta de capturas>      # capturas con Edge headless
```

El lab usa el mismo `config/LocalSettings.php` que producción. En Windows, Scribunto usa Lua standalone y necesita quitar las comillas extra del comando en `LuaStandaloneInterpreter.php` (solo en el lab).

## Pendiente de decidir

- Licencia del contenido (configurada como CC BY-SA 4.0).
- SMTP para recuperar contraseñas (sin SMTP, un admin la cambia con `changePassword.php`).
- Lista de administradores iniciales.
- Si este repo se sube a GitHub (recomendado privado o público sin `data/`).
