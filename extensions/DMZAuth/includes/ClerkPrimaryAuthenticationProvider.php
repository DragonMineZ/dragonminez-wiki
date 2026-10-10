<?php

namespace MediaWiki\Extension\DMZAuth;

use MediaWiki\Auth\AbstractPrimaryAuthenticationProvider;
use MediaWiki\Auth\AuthenticationRequest;
use MediaWiki\Auth\AuthenticationResponse;
use MediaWiki\Auth\AuthManager;
use MediaWiki\MediaWikiServices;
use MediaWiki\User\UserRigorOptions;
use StatusValue;

class ClerkPrimaryAuthenticationProvider extends AbstractPrimaryAuthenticationProvider {
	private const PENDING = 'dmzauth-pending-link';

	public function getAuthenticationRequests( $action, array $options ) {
		return $action === AuthManager::ACTION_LOGIN ? [ new ClerkAuthenticationRequest() ] : [];
	}

	public function beginPrimaryAuthentication( array $reqs ) {
		$req = AuthenticationRequest::getRequestByClass( $reqs, ClerkAuthenticationRequest::class );
		if ( !$req || !is_string( $req->dmzclerktoken ) || $req->dmzclerktoken === '' ) {
			return AuthenticationResponse::newAbstain();
		}
		if ( !Services::isConfigured( $this->config ) ) {
			return AuthenticationResponse::newFail( wfMessage( 'dmzauth-not-configured' ) );
		}
		try {
			$claims = Services::verifier()->verify( $req->dmzclerktoken );
			$account = Services::clerkUsers()->discordAccount( $claims['sub'] );
			if ( !Services::discord()->groupsFor( $account['discordId'], true ) ) {
				$this->logger->info( 'DMZAuth: Discord member without wiki access tried to sign in' );
				return AuthenticationResponse::newFail( wfMessage( 'dmzauth-error-noaccess' ) );
			}
			$username = $this->usernameFor( $claims['sub'], $account );
		} catch ( AuthError $error ) {
			return AuthenticationResponse::newFail( wfMessage( $error->messageKey ) );
		}
		$this->manager->setAuthenticationSessionData( self::PENDING, [
			'clerk' => $claims['sub'],
			'discord' => $account['discordId'],
			'username' => $username,
		] );
		return AuthenticationResponse::newPass( $username );
	}

	public function postAuthentication( $user, AuthenticationResponse $response ) {
		$pending = $this->manager->getAuthenticationSessionData( self::PENDING );
		$this->manager->removeAuthenticationSessionData( self::PENDING );
		if (
			$user && $user->getId() && $response->status === AuthenticationResponse::PASS &&
			is_array( $pending ) && $user->getName() === $pending['username']
		) {
			Services::links()->link( $user->getId(), $pending['clerk'], $pending['discord'] );
		}
	}

	/**
	 * @param string $clerkId
	 * @param array{discordId:string,username:string} $account
	 * @return string
	 * @throws AuthError
	 */
	private function usernameFor( string $clerkId, array $account ): string {
		$services = MediaWikiServices::getInstance();
		$userFactory = $services->getUserFactory();
		$linked = Services::links()->userForClerk( $clerkId );
		if ( $linked ) {
			$user = $userFactory->newFromId( $linked );
			$user->load();
			if ( $user->isRegistered() ) {
				return $user->getName();
			}
		}
		$utils = $services->getUserNameUtils();
		$base = trim( $account['username'] );
		if ( $base === '' ) {
			$base = 'Discord ' . $account['discordId'];
		}
		$candidates = [ $base, "$base (Discord)" ];
		for ( $i = 2; $i <= 20; $i++ ) {
			$candidates[] = "$base $i";
		}
		foreach ( $candidates as $candidate ) {
			$name = $utils->getCanonical( $candidate, UserRigorOptions::RIGOR_CREATABLE );
			if ( $name !== false && !$userFactory->newFromName( $name )->isRegistered() ) {
				return $name;
			}
		}
		throw new AuthError( 'dmzauth-error-username' );
	}

	public function testUserExists( $username, $flags = 0 ) {
		return false;
	}

	public function providerAllowsAuthenticationDataChange( AuthenticationRequest $req, $checkData = true ) {
		return StatusValue::newGood( 'ignored' );
	}

	public function providerChangeAuthenticationData( AuthenticationRequest $req ) {
	}

	public function accountCreationType() {
		return self::TYPE_NONE;
	}

	public function beginPrimaryAccountCreation( $user, $creator, array $reqs ) {
		return AuthenticationResponse::newAbstain();
	}
}
