<?php

namespace MediaWiki\Extension\DMZAuth;

use MediaWiki\Config\Config;
use MediaWiki\Logger\LoggerFactory;
use MediaWiki\MediaWikiServices;
use Wikimedia\ObjectCache\BagOStuff;

class Services {
	public static function cache(): BagOStuff {
		return MediaWikiServices::getInstance()->getObjectCacheFactory()->getLocalClusterInstance();
	}

	public static function config(): Config {
		return MediaWikiServices::getInstance()->getMainConfig();
	}

	public static function isConfigured( Config $config ): bool {
		return $config->get( 'DMZClerkPublishableKey' ) !== ''
			&& $config->get( 'DMZClerkSecretKey' ) !== ''
			&& $config->get( 'DMZDiscordGuildId' ) !== ''
			&& $config->get( 'DMZDiscordBotToken' ) !== '';
	}

	/**
	 * @param Config $config
	 * @return string[]
	 */
	public static function authorizedParties( Config $config ): array {
		$parties = (array)$config->get( 'DMZClerkAuthorizedParties' );
		if ( !$parties ) {
			$parties = [ $config->get( 'CanonicalServer' ) ];
		}
		return array_values( array_map( static fn ( $p ) => rtrim( (string)$p, '/' ), $parties ) );
	}

	public static function verifier(): ClerkTokenVerifier {
		$config = self::config();
		return new ClerkTokenVerifier(
			(string)$config->get( 'DMZClerkFrontendApi' ),
			self::authorizedParties( $config ),
			MediaWikiServices::getInstance()->getHttpRequestFactory(),
			self::cache()
		);
	}

	public static function clerkUsers(): ClerkUsers {
		return new ClerkUsers(
			(string)self::config()->get( 'DMZClerkSecretKey' ),
			(string)self::config()->get( 'DMZClerkBackendApi' ),
			MediaWikiServices::getInstance()->getHttpRequestFactory()
		);
	}

	public static function discord(): DiscordAccess {
		$config = self::config();
		return new DiscordAccess(
			(string)$config->get( 'DMZDiscordApi' ),
			(string)$config->get( 'DMZDiscordGuildId' ),
			(string)$config->get( 'DMZDiscordBotToken' ),
			(array)$config->get( 'DMZDiscordGroupRoles' ),
			(int)$config->get( 'DMZDiscordRoleTTL' ),
			MediaWikiServices::getInstance()->getHttpRequestFactory(),
			self::cache(),
			LoggerFactory::getInstance( 'DMZAuth' )
		);
	}

	public static function links(): LinkStore {
		return new LinkStore(
			MediaWikiServices::getInstance()->getConnectionProvider(),
			self::cache()
		);
	}
}
