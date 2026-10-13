# DragonMineZ Wiki

Código, skin y contenido de [wiki.dragonminez.com](https://wiki.dragonminez.com): MediaWiki 1.43 con el diseño de [dragonminez.com](https://dragonminez.com), en inglés, español y portugués.

## Estructura

| Carpeta | Contenido |
|---|---|
| `content/pages/` | Páginas de la wiki: wikitext, módulos Lua, CSS y JS |
| `content/files/` | Imágenes que se suben como `File:` |
| `content/translations/` | Traducciones al español y al portugués |
| `skins/DragonMineZ/` | Skin de la wiki |
| `extensions/DMZAuth/` | Login con Discord a través de Clerk |
| `config/`, `docker/`, `compose.yaml` | Configuración y contenedores |
| `tools/` | Scripts para publicar, traducir y generar contenido |
| `docs/` | Documentación |

## Publicación

Cada push a `main` se publica solo:

- `skins/`, `extensions/`, `config/` o `docker/`: se construye la imagen y se redespliega.
- `content/`: se publica en la wiki solo lo que cambió.

## Documentación

- [docs/SERVER.md](docs/SERVER.md): instalación, login con Discord, operación y despliegue.
- [docs/CONTENT.md](docs/CONTENT.md): contenido, herramientas, traducciones y plantillas.
- [docs/IA.md](docs/IA.md) y [docs/STYLE.md](docs/STYLE.md): mapa de páginas y guía de estilo.

El contenido de la wiki se publica bajo [CC BY-SA 4.0](https://creativecommons.org/licenses/by-sa/4.0/).
