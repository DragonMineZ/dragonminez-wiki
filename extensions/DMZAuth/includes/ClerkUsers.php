<?php

namespace MediaWiki\Extension\DMZAuth;

use MediaWiki\Http\HttpRequestFactory;

class ClerkUsers {
	public function __construct(
		private readonly string $secretKey,
		private readonly string $backendApi,
		private readonly HttpRequestFactory $http
	) {
	}

	/**
	 * @param string $clerkUserId
	 * @return array{discordId: string, username: string}
	 * @throws AuthError
	 */
	public function discordAccount( string $clerkUserId ): array {
		if ( $this->secretKey === '' || !preg_match( '/^user_[A-Za-z0-9]+$/', $clerkUserId ) ) {
			throw new AuthError( 'dmzauth-not-configured' );
		}
		$request = $this->http->create( rtrim( $this->backendApi, '/' ) . '/users/' . $clerkUserId, [ 'method' => 'GET', 'timeout' => 10 ], __METHOD__ );
		$request->setHeader( 'Authorization', 'Bearer ' . $this->secretKey );
		$status = $request->execute();
		if ( !$status->isOK() ) {
			throw new AuthError( 'dmzauth-error-service' );
		}
		$user = json_decode( $request->getContent(), true );
		foreach ( $user['external_accounts'] ?? [] as $account ) {
			$provider = (string)( $account['provider'] ?? '' );
			if ( ( $provider === 'oauth_discord' || $provider === 'discord' ) && !empty( $account['provider_user_id'] ) ) {
				return [
					'discordId' => (string)$account['provider_user_id'],
					'username' => (string)( $account['username'] ?? $user['username'] ?? '' ),
				];
			}
		}
		throw new AuthError( 'dmzauth-error-nodiscord' );
	}
}
