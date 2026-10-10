<?php

namespace MediaWiki\Extension\DMZAuth;

use MediaWiki\Http\HttpRequestFactory;
use Wikimedia\ObjectCache\BagOStuff;

class ClerkTokenVerifier {
	private const LEEWAY = 10;

	/**
	 * @param string $frontendApi
	 * @param string[] $authorizedParties
	 * @param HttpRequestFactory $http
	 * @param BagOStuff $cache
	 */
	public function __construct(
		private readonly string $frontendApi,
		private readonly array $authorizedParties,
		private readonly HttpRequestFactory $http,
		private readonly BagOStuff $cache
	) {
	}

	/**
	 * @param string $jwt
	 * @return array Verified claims
	 * @throws AuthError
	 */
	public function verify( string $jwt ): array {
		$parts = explode( '.', trim( $jwt ) );
		if ( count( $parts ) !== 3 ) {
			throw new AuthError( 'dmzauth-error-token' );
		}
		[ $head, $body, $signature ] = $parts;
		$header = json_decode( self::base64url( $head ), true );
		$claims = json_decode( self::base64url( $body ), true );
		if ( !is_array( $header ) || !is_array( $claims ) || ( $header['alg'] ?? '' ) !== 'RS256' ) {
			throw new AuthError( 'dmzauth-error-token' );
		}
		$pem = $this->publicKey( (string)( $header['kid'] ?? '' ) );
		if ( $pem === null || openssl_verify( "$head.$body", self::base64url( $signature ), $pem, OPENSSL_ALGO_SHA256 ) !== 1 ) {
			throw new AuthError( 'dmzauth-error-token' );
		}
		$now = time();
		if ( !isset( $claims['exp'] ) || (int)$claims['exp'] < $now - self::LEEWAY ) {
			throw new AuthError( 'dmzauth-error-expired' );
		}
		if ( isset( $claims['nbf'] ) && (int)$claims['nbf'] > $now + self::LEEWAY ) {
			throw new AuthError( 'dmzauth-error-token' );
		}
		if ( ( $claims['iss'] ?? '' ) !== rtrim( $this->frontendApi, '/' ) ) {
			throw new AuthError( 'dmzauth-error-token' );
		}
		if ( isset( $claims['azp'] ) && !in_array( rtrim( (string)$claims['azp'], '/' ), $this->authorizedParties, true ) ) {
			throw new AuthError( 'dmzauth-error-token' );
		}
		if ( !isset( $claims['sub'] ) || !is_string( $claims['sub'] ) || $claims['sub'] === '' ) {
			throw new AuthError( 'dmzauth-error-token' );
		}
		return $claims;
	}

	private function publicKey( string $kid ): ?string {
		$key = $this->cache->makeGlobalKey( 'dmzauth-jwks', md5( $this->frontendApi ) );
		$keys = $this->cache->get( $key );
		if ( !is_array( $keys ) || !isset( $keys[$kid] ) ) {
			$keys = $this->fetchKeys();
			if ( $keys ) {
				$this->cache->set( $key, $keys, 3600 );
			}
		}
		return $keys[$kid] ?? null;
	}

	private function fetchKeys(): array {
		$url = rtrim( $this->frontendApi, '/' ) . '/.well-known/jwks.json';
		$json = $this->http->get( $url, [ 'timeout' => 10 ], __METHOD__ );
		$data = $json ? json_decode( $json, true ) : null;
		$keys = [];
		foreach ( $data['keys'] ?? [] as $jwk ) {
			if ( ( $jwk['kty'] ?? '' ) === 'RSA' && isset( $jwk['kid'], $jwk['n'], $jwk['e'] ) ) {
				$keys[$jwk['kid']] = self::rsaPem( self::base64url( $jwk['n'] ), self::base64url( $jwk['e'] ) );
			}
		}
		return $keys;
	}

	public static function rsaPem( string $modulus, string $exponent ): string {
		$integer = static function ( string $bytes ): string {
			if ( ord( $bytes[0] ) > 0x7f ) {
				$bytes = "\x00" . $bytes;
			}
			return "\x02" . self::length( strlen( $bytes ) ) . $bytes;
		};
		$rsa = self::sequence( $integer( $modulus ) . $integer( $exponent ) );
		$bits = "\x03" . self::length( strlen( $rsa ) + 1 ) . "\x00" . $rsa;
		$algorithm = self::sequence( "\x06\x09\x2a\x86\x48\x86\xf7\x0d\x01\x01\x01\x05\x00" );
		$der = self::sequence( $algorithm . $bits );
		return "-----BEGIN PUBLIC KEY-----\n" . chunk_split( base64_encode( $der ), 64, "\n" ) . "-----END PUBLIC KEY-----\n";
	}

	private static function sequence( string $content ): string {
		return "\x30" . self::length( strlen( $content ) ) . $content;
	}

	private static function length( int $length ): string {
		if ( $length < 0x80 ) {
			return chr( $length );
		}
		$bytes = ltrim( pack( 'N', $length ), "\x00" );
		return chr( 0x80 | strlen( $bytes ) ) . $bytes;
	}

	public static function base64url( string $value ): string {
		$value = strtr( $value, '-_', '+/' );
		return (string)base64_decode( $value . str_repeat( '=', ( 4 - strlen( $value ) % 4 ) % 4 ), true );
	}
}
