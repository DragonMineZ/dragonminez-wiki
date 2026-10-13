# Servidor

Cómo está armada la wiki en producción, cómo se instala, cómo se configura el login y cómo se despliega.

## Arquitectura

```
Visitante ──HTTPS──▶ Cloudflare ──▶ proxy inverso del host
                                                │
                                                ▼
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
| Base de datos | **SQLite** | No agrega un proceso servidor en una VPS chica, está soportado oficialmente por MediaWiki y alcanza de sobra para una wiki de lectura pública con pocos editores. Se puede migrar a MariaDB con `dumpBackup`/`importDump` si algún día hace falta. |
| Proxy y TLS | **El proxy que ya tenga el host** | La wiki no abre puertos públicos propios: la publica el proxy del host (Dokploy/Traefik, o un túnel de Cloudflare apuntando al puerto local de `compose.yaml`). |
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

Confirma memoria, disco, Docker, puertos ocupados y cómo está configurado el proxy. No contiene secretos, pero no hace falta publicar la salida.

### Fase 1: instalación

1. Clonar este repo en `/opt/dragonminez-wiki` y entrar.
2. `cp .env.example .env` y revisar los valores (`MW_SERVER`, `DMZ_COOKIE_DOMAIN`, SMTP opcional).
3. Instalar (pide el usuario y la contraseña del primer administrador; la contraseña nunca queda en disco):

   ```bash
   sudo bash scripts/install.sh
   ```

4. Publicar el host en el túnel:
   - **Túnel administrado desde el dashboard** (cloudflared con `--token`): Zero Trust → Networks → Tunnels → el túnel del host → *Public Hostname* → `wiki.dragonminez.com` → `HTTP` → `localhost:8091`.
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
     <usuario administrador>
   ```

   Guardarla solo en variables de entorno locales de quien publica o en los *secrets* de GitHub (`MW_BOT_USER=<usuario>@sync`, `MW_BOT_PASSWORD`), nunca en el repo.
7. Recomendado: activar la verificación en dos pasos (OATHAuth) en las cuentas de administrador desde `Special:Preferences`.

## Acceso con Discord (Clerk)

1. Variables de entorno (en Dokploy, pestaña *Environment* de la app; sin Dokploy, en `.env`):
   - `DMZ_CLERK_PUBLISHABLE_KEY`: la `pk_live_…` de la instancia de producción de dragonminez.com (Clerk → *API Keys*; es pública).
   - `DMZ_DISCORD_GUILD_ID`: ID del servidor de Discord (modo desarrollador → clic derecho en el servidor → *Copiar ID del servidor*).
   - `DMZ_CLERK_SECRET_KEY`: la `sk_live_…` de la misma pantalla de Clerk.
   - `DMZ_DISCORD_BOT_TOKEN`: el token de un bot que ya esté en el servidor: solo lee miembros y roles por la API REST, no necesita intents privilegiados.

   Los dos secretos también pueden ir en `data/secrets/secrets.php` (`$dmzClerkSecretKey`, `$dmzDiscordBotToken`); si están en los dos lados, gana el archivo. Nunca en el repo.
2. Redesplegar. El contenedor `jobrunner` corre `update --quick` al arrancar, que crea la tabla `dmz_discord_link` (sin Dokploy: `sudo bash scripts/update.sh`).
3. En Clerk, comprobar que `https://wiki.dragonminez.com` está entre los orígenes permitidos de la instancia de producción (los subdominios de dragonminez.com suelen estarlo; si el modal de Clerk no abre, agregarlo con `PATCH /v1/instance` → `allowed_origins`).

| Rol en Discord | Grupos en la wiki | Puede |
|---|---|---|
| Wiki Maintainer | `editor` | crear y editar páginas, subir archivos, mover, traducir y marcar páginas para traducción. **No** borra ni protege. |
| Moderator | `editor` + `moderator` | todo lo anterior, más borrar, restaurar y proteger páginas. |
| Dueño del servidor o rol con permiso de Administrador | `editor` + `moderator` + `sysop` + `interface-admin` + `bureaucrat` | administración completa (bloqueos, interfaz, CSS/JS del sitio, filtros). |

Se cambia con `$wgDMZDiscordGroupRoles` (nombres o IDs de rol; `@administrator` = dueño o permiso de Administrador). Los roles se cachean `$wgDMZDiscordRoleTTL` segundos (300). Si Discord no responde, se mantiene el último resultado conocido hasta 24 h para no dejar a nadie afuera por una caída; al iniciar sesión siempre se consulta en vivo.

**Emergencia:** `MW_PASSWORD_LOGIN=1` en `.env` y reiniciar devuelve el login con usuario y contraseña (por ejemplo, si Clerk o Discord están caídos). La cuenta de administrador de la instalación y sus BotPasswords (`push_pages.py`, `translations.py`) funcionan siempre, porque el login de bots no pasa por este proveedor.

## Operación

| Tarea | Comando |
|---|---|
| Actualizar MediaWiki / skin / config | `sudo bash scripts/update.sh` (hace backup antes) |
| Backup manual | `sudo bash scripts/backup.sh` |
| Restaurar | `sudo bash scripts/restore.sh data/backups/<fecha>` |
| Logs | `docker compose logs -f wiki` |
| Script de mantenimiento | `docker compose exec -u www-data wiki php maintenance/run.php <script>` |

Todo comando de mantenimiento corre como `www-data`: si corre como root, SQLite y la caché quedan con archivos que Apache no puede escribir.

## Despliegue automático

La base de datos de la VPS nunca se migra desde una PC: el repo es la fuente de todo y la wiki se actualiza por dos caminos.

| Qué cambió | Workflow | Qué hace |
|---|---|---|
| `skins/`, `extensions/`, `config/`, `docker/` | `.github/workflows/image.yml` | Construye la imagen en GHCR y avisa a Dokploy (`DOKPLOY_WEBHOOK_URL`) para redesplegar. |
| `content/` (páginas, imágenes, traducciones) | `.github/workflows/content.yml` | `tools/sync_content.py`: publica por la API solo lo que cambió en el push, marca para traducción las páginas fuente cambiadas, espera a que se vacíe la cola, importa las traducciones y commitea al repo los marcadores `<!--T:n-->` nuevos que asignó la wiki. |

Para el workflow de contenido hacen falta dos *secrets* del repo (`Settings → Secrets and variables → Actions`): `MW_BOT_USER` y `MW_BOT_PASSWORD`, una BotPassword con los grants de la sección de instalación (con la forma `<usuario>@sync`). Cualquiera con permisos de administrador en la wiki puede crearla desde `Special:BotPasswords` sin entrar a la VPS. `Actions → Sync content → Run workflow` permite relanzarlo a mano, en modo *dry run* (solo lista) o *full* (todo el contenido).

Lo mismo a mano desde una PC, con las variables de entorno de la BotPassword:

```bash
python tools/sync_content.py --base <commit anterior> --dry-run
python tools/sync_content.py --base <commit anterior>
python tools/sync_content.py --full
```

Notas: borrar o renombrar un archivo del repo no borra la página en la wiki (se hace a mano). Si Cloudflare tiene *Bot Fight Mode*, puede bloquear las llamadas desde GitHub a `/api.php`: en ese caso, una regla WAF que haga *skip* para esa ruta. La primera carga completa de traducciones conviene hacerla con el procedimiento de [CONTENT.md](CONTENT.md#traducciones) (jobrunner parado), no desde el workflow.

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
