<?php

namespace MediaWiki\Extension\DMZAuth;

use MediaWiki\Installer\Hook\LoadExtensionSchemaUpdatesHook;

class SchemaHooks implements LoadExtensionSchemaUpdatesHook {
	public function onLoadExtensionSchemaUpdates( $updater ) {
		$updater->addExtensionTable( 'dmz_discord_link', dirname( __DIR__ ) . '/sql/dmz_discord_link.sql' );
	}
}
