#!/usr/bin/env bash
set -euo pipefail

cd "$(dirname "$0")/.."
WWW_UID=33

if [ ! -f .env ]; then
	echo "Copy .env.example to .env and review it first." >&2
	exit 1
fi
if [ -f data/db/dmzwiki.sqlite ]; then
	echo "data/db/dmzwiki.sqlite already exists. The wiki is installed; use scripts/update.sh instead." >&2
	exit 1
fi

mkdir -p data/db data/images data/secrets data/backups
chmod 750 data/secrets

if [ ! -f data/secrets/secrets.php ]; then
	umask 077
	printf "<?php\n\$wgSecretKey = '%s';\n\$wgUpgradeKey = '%s';\n" "$(openssl rand -hex 32)" "$(openssl rand -hex 8)" > data/secrets/secrets.php
	umask 022
fi

read -rp "First administrator username: " ADMIN_USER
read -rsp "Password for ${ADMIN_USER} (10+ characters, not reused anywhere): " ADMIN_PASS
echo
if [ "${#ADMIN_PASS}" -lt 10 ]; then
	echo "Password too short." >&2
	exit 1
fi
PASSFILE="$(mktemp -p data/secrets .adminpass.XXXXXX)"
trap 'rm -f "$PASSFILE"' EXIT
printf '%s' "$ADMIN_PASS" > "$PASSFILE"
unset ADMIN_PASS

docker compose build wiki

docker compose run --rm --no-deps -T \
	-e ADMIN_USER="$ADMIN_USER" \
	-e PASSFILE="/var/www/secrets/$(basename "$PASSFILE")" \
	--entrypoint bash wiki -c '
		set -euo pipefail
		cd /var/www/html
		mv LocalSettings.php /tmp/LocalSettings.dmz.php
		php maintenance/run.php install \
			--dbtype=sqlite --dbpath=/var/www/data --dbname=dmzwiki \
			--server="$MW_SERVER" --scriptpath="" --lang=en \
			--passfile="$PASSFILE" --skins="" \
			"DragonMineZ Wiki" "$ADMIN_USER"
		rm -f LocalSettings.php
		mv /tmp/LocalSettings.dmz.php LocalSettings.php
		php maintenance/run.php update --quick
		php maintenance/run.php createAndPromote --force --sysop --bureaucrat --interface-admin "$ADMIN_USER"
	'

chown -R "$WWW_UID:$WWW_UID" data/db data/images
chown -R "root:$WWW_UID" data/secrets
chmod 640 data/secrets/*.php

docker compose up -d
echo
echo "Wiki is up on 127.0.0.1:${WIKI_PORT:-8091}. Next: point the cloudflared tunnel at it (see README)."
