#!/usr/bin/env bash
set -euo pipefail

cd "$(dirname "$0")/.."
set -a
. ./.env
set +a

KEEP_DAYS="${BACKUP_KEEP_DAYS:-14}"
STAMP="$(date -u +%Y%m%d-%H%M%S)"
DEST="data/backups/${STAMP}"
mkdir -p "$DEST"

docker compose exec -T -u www-data wiki php -r '
	$db = new PDO("sqlite:/var/www/data/dmzwiki.sqlite");
	$db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
	@unlink("/var/www/data/.backup.sqlite");
	$db->exec("VACUUM INTO \x27/var/www/data/.backup.sqlite\x27");
'
mv data/db/.backup.sqlite "${DEST}/dmzwiki.sqlite"
gzip -9 "${DEST}/dmzwiki.sqlite"

docker compose exec -T -u www-data wiki php maintenance/run.php dumpBackup --current --quiet \
	| gzip -9 > "${DEST}/pages-current.xml.gz"

tar -C data -czf "${DEST}/images.tar.gz" images
cp data/secrets/secrets.php "${DEST}/secrets.php"
chmod 600 "${DEST}/secrets.php"
(cd "$DEST" && sha256sum ./* > SHA256SUMS)

find data/backups -mindepth 1 -maxdepth 1 -type d -name '20*' -mtime +"${KEEP_DAYS}" -exec rm -rf {} +

if [ -n "${BACKUP_RCLONE_REMOTE:-}" ]; then
	rclone copy "$DEST" "${BACKUP_RCLONE_REMOTE%/}/${STAMP}"
fi

echo "Backup written to ${DEST}"
