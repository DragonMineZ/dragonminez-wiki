<?php

namespace MediaWiki\Skins\DragonMineZ;

use MediaWiki\Installer\Hook\LoadExtensionSchemaUpdatesHook;

class SchemaHooks implements LoadExtensionSchemaUpdatesHook {

	public function onLoadExtensionSchemaUpdates( $updater ) {
		$updater->addExtensionTable( 'dmz_page_views', __DIR__ . '/../sql/dmz_page_views.sql' );
	}
}
