#!/bin/sh
# The only command the wiki's GitHub deploy key may run on the VPS (docs/SERVER.md, "Despliegue sin Dokploy").
# Installed once at /usr/local/sbin/dmz-wiki-deploy, owned by root, so the key cannot change it.
# It deploys what is on main: fetch compose.yaml, pull the image GitHub Actions built, restart the containers.
set -eu

cd /opt/dragonminez-wiki

# One deploy at a time (a hand-run deploy and the CI deploy can overlap).
exec 9> .deploy.lock
flock 9

# The query string defeats the CDN cache, so a deploy right after a push sees the new file.
curl -fsSL "https://raw.githubusercontent.com/DragonMineZ/dragonminez-wiki/main/compose.yaml?t=$(date +%s)" -o compose.yaml.new
# Refuse a broken file before it replaces the working one.
docker compose -f compose.yaml.new config -q
mv compose.yaml.new compose.yaml

docker compose pull
docker compose up -d --remove-orphans
docker image prune -f > /dev/null
docker compose ps
