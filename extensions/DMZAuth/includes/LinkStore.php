<?php

namespace MediaWiki\Extension\DMZAuth;

use Wikimedia\ObjectCache\BagOStuff;
use Wikimedia\Rdbms\IConnectionProvider;

class LinkStore {
	private const TABLE = 'dmz_discord_link';

	public function __construct(
		private readonly IConnectionProvider $db,
		private readonly BagOStuff $cache
	) {
	}

	public function userForClerk( string $clerkId ): int {
		return (int)$this->db->getPrimaryDatabase()->newSelectQueryBuilder()
			->select( 'dl_user' )
			->from( self::TABLE )
			->where( [ 'dl_clerk' => $clerkId ] )
			->caller( __METHOD__ )
			->fetchField();
	}

	public function discordFor( int $userId ): ?string {
		if ( $userId <= 0 ) {
			return null;
		}
		$key = $this->cache->makeKey( 'dmzauth-link', $userId );
		$cached = $this->cache->get( $key );
		if ( is_string( $cached ) ) {
			return $cached === '' ? null : $cached;
		}
		$discord = $this->db->getReplicaDatabase()->newSelectQueryBuilder()
			->select( 'dl_discord' )
			->from( self::TABLE )
			->where( [ 'dl_user' => $userId ] )
			->caller( __METHOD__ )
			->fetchField();
		$value = $discord === false ? '' : (string)$discord;
		$this->cache->set( $key, $value, 3600 );
		return $value === '' ? null : $value;
	}

	public function link( int $userId, string $clerkId, string $discordId ): void {
		$dbw = $this->db->getPrimaryDatabase();
		$dbw->newDeleteQueryBuilder()
			->deleteFrom( self::TABLE )
			->where( $dbw->expr( 'dl_clerk', '=', $clerkId )->or( 'dl_user', '=', $userId ) )
			->caller( __METHOD__ )
			->execute();
		$dbw->newInsertQueryBuilder()
			->insertInto( self::TABLE )
			->row( [ 'dl_user' => $userId, 'dl_clerk' => $clerkId, 'dl_discord' => $discordId ] )
			->caller( __METHOD__ )
			->execute();
		$this->cache->delete( $this->cache->makeKey( 'dmzauth-link', $userId ) );
	}
}
