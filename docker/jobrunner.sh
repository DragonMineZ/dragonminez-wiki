#!/bin/sh
set -eu

cd /var/www/html
echo "dmz-jobrunner: started"
while true; do
	php maintenance/run.php runJobs --maxtime=60 --memory-limit=192M --result=json >/dev/null 2>&1 || echo "dmz-jobrunner: runJobs exited with $?"
	sleep "${JOBRUNNER_SLEEP:-15}"
done
