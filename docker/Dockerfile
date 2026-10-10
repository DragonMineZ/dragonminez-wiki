FROM mediawiki:1.43.11

ARG EXTRA_EXTENSIONS="Translate UniversalLanguageSelector TemplateStyles TemplateSandbox"

RUN set -eux; \
	a2enmod headers remoteip; \
	cd /var/www/html/extensions; \
	for ext in $EXTRA_EXTENSIONS; do \
		url="$(curl -fsSL "https://www.mediawiki.org/w/api.php?action=query&list=extdistbranches&edbexts=${ext}&formatversion=2&format=json" \
			| php -r '$d = json_decode(stream_get_contents(STDIN), true); echo $d["query"]["extdistbranches"]["extensions"][$argv[1]]["REL1_43"] ?? "";' "$ext")"; \
		test -n "$url"; \
		curl -fsSL "$url" | tar -xz; \
	done; \
	chown -R www-data:www-data /var/www/html/extensions

COPY docker/apache/dmz-wiki.conf /etc/apache2/conf-enabled/zz-dmz-wiki.conf
COPY docker/php/dmz-wiki.ini /usr/local/etc/php/conf.d/zz-dmz-wiki.ini
COPY docker/jobrunner.sh /usr/local/bin/dmz-jobrunner
COPY skins/DragonMineZ /var/www/html/skins/DragonMineZ
COPY extensions/DMZAuth /var/www/html/extensions/DMZAuth
COPY config/LocalSettings.php /var/www/html/LocalSettings.php

RUN set -eux; \
	chmod 0755 /usr/local/bin/dmz-jobrunner; \
	mkdir -p /var/www/data /var/www/secrets; \
	chown -R www-data:www-data /var/www/data /var/www/html/cache /var/www/html/images; \
	rm -rf /var/www/html/mw-config /var/www/html/tests /var/www/html/docs
