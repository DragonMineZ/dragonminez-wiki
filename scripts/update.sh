#!/usr/bin/env bash
set -euo pipefail

cd "$(dirname "$0")/.."

scripts/backup.sh
git pull --ff-only
docker compose build --pull wiki
docker compose up -d
docker compose exec -T -u www-data wiki php maintenance/run.php update --quick
docker compose exec -T -u www-data wiki php maintenance/run.php rebuildLocalisationCache --lang=en,es,pt --quiet
docker image prune -f >/dev/null
echo "Update finished. Check Special:Version for the running versions."
