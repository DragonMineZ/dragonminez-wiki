<?php

namespace MediaWiki\Extension\DMZAuth;

use MediaWiki\Http\HttpRequestFactory;
use Psr\Log\LoggerInterface;
use Wikimedia\ObjectCache\BagOStuff;

class DiscordAccess {
	private const ADMINISTRATOR = 0x8;
	private const LAST_GOOD_TTL = 86400;

	/**
	 * @param string $api
	 * @param string $guildId
	 * @param string $botToken
	 * @param array<string,string[]> $groupRoles
	 * @param int $ttl
	 * @param HttpRequestFactory $http
	 * @param BagOStuff $cache
	 * @param LoggerInterface $logger
	 */
	public function __construct(
		private readonly string $api,
		private readonly string $guildId,
		private readonly string $botToken,
		private readonly array $groupRoles,
		private readonly int $ttl,
		private readonly HttpRequestFactory $http,
		private readonly BagOStuff $cache,
		private readonly LoggerInterface $logger
	) {
	}

	public function isConfigured(): bool {
		return $this->guildId !== '' && $this->botToken !== '';
	}

	/**
	 * Wiki groups that the member's current Discord roles grant.
	 *
	 * @param string $discordId
	 * @param bool $fresh Skip the short cache (used at login)
	 * @param bool $network Allow calling Discord when nothing is cached
	 * @return string[]
	 */
	public function groupsFor( string $discordId, bool $fresh = false, bool $network = true ): array {
		if ( !$this->isConfigured() || !ctype_digit( $discordId ) ) {
			return [];
		}
		$key = $this->cache->makeGlobalKey( 'dmzauth-groups', $this->guildId, $discordId );
		$lastGoodKey = $this->cache->makeGlobalKey( 'dmzauth-groups-lastgood', $this->guildId, $discordId );
		if ( !$fresh ) {
			$cached = $this->cache->get( $key );
			if ( is_array( $cached ) ) {
				return $cached;
			}
		}
		if ( !$network ) {
			$lastGood = $this->cache->get( $lastGoodKey );
			return is_array( $lastGood ) ? $lastGood : [];
		}
		$groups = $this->lookup( $discordId );
		if ( $groups === null ) {
			$lastGood = $this->cache->get( $lastGoodKey );
			return $fresh || !is_array( $lastGood ) ? [] : $lastGood;
		}
		$this->cache->set( $key, $groups, max( 30, $this->ttl ) );
		$this->cache->set( $lastGoodKey, $groups, self::LAST_GOOD_TTL );
		return $groups;
	}

	/**
	 * @param string $discordId
	 * @return string[]|null Null when Discord could not be reached
	 */
	private function lookup( string $discordId ): ?array {
		[ $status, $member ] = $this->call( "/guilds/{$this->guildId}/members/$discordId" );
		if ( $status === 404 ) {
			return [];
		}
		if ( $status !== 200 || !is_array( $member ) ) {
			return null;
		}
		$roles = $this->guildRoles();
		$guild = $this->guild();
		if ( $roles === null || $guild === null ) {
			return null;
		}
		$memberRoles = array_map( 'strval', $member['roles'] ?? [] );
		$isAdmin = isset( $guild['owner_id'] ) && (string)$guild['owner_id'] === $discordId;
		$names = [];
		foreach ( $memberRoles as $roleId ) {
			if ( !isset( $roles[$roleId] ) ) {
				continue;
			}
			$names[] = mb_strtolower( $roles[$roleId]['name'] );
			if ( ( (int)$roles[$roleId]['permissions'] & self::ADMINISTRATOR ) !== 0 ) {
				$isAdmin = true;
			}
		}
		$groups = [];
		foreach ( $this->groupRoles as $group => $entries ) {
			foreach ( (array)$entries as $entry ) {
				$entry = trim( (string)$entry );
				if (
					( $entry === '@administrator' && $isAdmin ) ||
					in_array( $entry, $memberRoles, true ) ||
					in_array( mb_strtolower( $entry ), $names, true )
				) {
					$groups[] = (string)$group;
					break;
				}
			}
		}
		return $groups;
	}

	/**
	 * @return array<string,array{name:string,permissions:string}>|null
	 */
	private function guildRoles(): ?array {
		$key = $this->cache->makeGlobalKey( 'dmzauth-guild-roles', $this->guildId );
		$cached = $this->cache->get( $key );
		if ( is_array( $cached ) ) {
			return $cached;
		}
		[ $status, $data ] = $this->call( "/guilds/{$this->guildId}/roles" );
		if ( $status !== 200 || !is_array( $data ) ) {
			return null;
		}
		$roles = [];
		foreach ( $data as $role ) {
			$roles[(string)$role['id']] = [
				'name' => (string)( $role['name'] ?? '' ),
				'permissions' => (string)( $role['permissions'] ?? '0' ),
			];
		}
		$this->cache->set( $key, $roles, 600 );
		return $roles;
	}

	private function guild(): ?array {
		$key = $this->cache->makeGlobalKey( 'dmzauth-guild', $this->guildId );
		$cached = $this->cache->get( $key );
		if ( is_array( $cached ) ) {
			return $cached;
		}
		[ $status, $data ] = $this->call( "/guilds/{$this->guildId}" );
		if ( $status !== 200 || !is_array( $data ) ) {
			return null;
		}
		$guild = [ 'owner_id' => (string)( $data['owner_id'] ?? '' ) ];
		$this->cache->set( $key, $guild, 3600 );
		return $guild;
	}

	/**
	 * @param string $path
	 * @return array{0:int,1:mixed}
	 */
	protected function call( string $path ): array {
		$request = $this->http->create( rtrim( $this->api, '/' ) . $path, [ 'method' => 'GET', 'timeout' => 10 ], __METHOD__ );
		$request->setHeader( 'Authorization', 'Bot ' . $this->botToken );
		$request->setHeader( 'User-Agent', 'DiscordBot (https://wiki.dragonminez.com, 1.0)' );
		$request->execute();
		$status = $request->getStatus();
		if ( $status !== 200 && $status !== 404 ) {
			$this->logger->warning( 'Discord API answered {status} for {path}', [ 'status' => $status, 'path' => preg_replace( '/\d{5,}/', '<id>', $path ) ] );
		}
		return [ $status, json_decode( (string)$request->getContent(), true ) ];
	}
}
