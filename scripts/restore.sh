#!/usr/bin/env bash
set -euo pipefail

cd "$(dirname "$0")/.."
WWW_UID=33
SRC="${1:-}"

if [ -z "$SRC" ] || [ ! -f "${SRC}/dmzwiki.sqlite.gz" ]; then
	echo "Usage: scripts/restore.sh data/backups/<stamp>" >&2
	exit 1
fi
(cd "$SRC" && sha256sum -c SHA256SUMS)

read -rp "This replaces the current database and images with ${SRC}. Type RESTORE to continue: " CONFIRM
[ "$CONFIRM" = "RESTORE" ] || { echo "Aborted."; exit 1; }

docker compose stop wiki jobrunner

SAFETY="data/backups/pre-restore-$(date -u +%Y%m%d-%H%M%S)"
mkdir -p "$SAFETY"
cp -a data/db "$SAFETY/db"
tar -C data -czf "$SAFETY/images.tar.gz" images

gunzip -c "${SRC}/dmzwiki.sqlite.gz" > data/db/dmzwiki.sqlite
rm -f data/db/dmzwiki.sqlite-wal data/db/dmzwiki.sqlite-shm data/db/wikicache.sqlite
find data/images -mindepth 1 -delete
tar -C data -xzf "${SRC}/images.tar.gz"
chown -R "$WWW_UID:$WWW_UID" data/db data/images

docker compose up -d
docker compose exec -T -u www-data wiki php maintenance/run.php update --quick
echo "Restored from ${SRC}. The previous state is kept in ${SAFETY}."
