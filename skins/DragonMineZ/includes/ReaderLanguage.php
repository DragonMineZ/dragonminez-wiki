<?php

namespace MediaWiki\Skins\DragonMineZ;

use MediaWiki\Config\Config;
use MediaWiki\Request\WebRequest;
use MediaWiki\Title\Title;

class ReaderLanguage {

	public const COOKIE_LANG = 'dmz_lang';
	public const COOKIE_THEME = 'dmz_theme';

	private const LABELS = [
		'en' => 'English',
		'es' => 'Español',
		'pt' => 'Português',
	];

	private const FLAGS = [
		'en' => 'us',
		'es' => 'es',
		'pt' => 'br',
	];

	public static function languages( Config $config ): array {
		return array_values( array_unique( array_intersect(
			(array)$config->get( 'DMZLanguages' ),
			array_keys( self::LABELS )
		) ) );
	}

	public static function sourceLanguage( Config $config ): string {
		return self::languages( $config )[0] ?? 'en';
	}

	public static function label( string $code ): string {
		return self::LABELS[$code] ?? $code;
	}

	public static function flagUrl( string $code ): string {
		return 'https://flagcdn.com/w40/' . ( self::FLAGS[$code] ?? $code ) . '.png';
	}

	public static function fromCookie( WebRequest $request, Config $config ): ?string {
		$value = $request->getCookie( self::COOKIE_LANG, '' );
		return in_array( $value, self::languages( $config ), true ) ? $value : null;
	}

	public static function fromRequest( WebRequest $request, Config $config ): string {
		$cookie = self::fromCookie( $request, $config );
		if ( $cookie !== null ) {
			return $cookie;
		}
		$languages = self::languages( $config );
		foreach ( array_keys( $request->getAcceptLang() ) as $accepted ) {
			$primary = strtolower( explode( '-', (string)$accepted )[0] );
			if ( in_array( $primary, $languages, true ) ) {
				return $primary;
			}
		}
		$default = (string)$config->get( 'DMZDefaultLanguage' );
		return in_array( $default, $languages, true ) ? $default : self::sourceLanguage( $config );
	}

	public static function splitTitle( Title $title, Config $config ): array {
		$text = $title->getText();
		$pos = strrpos( $text, '/' );
		if ( $pos !== false ) {
			$suffix = substr( $text, $pos + 1 );
			if ( in_array( $suffix, self::languages( $config ), true ) ) {
				return [ Title::makeTitle( $title->getNamespace(), substr( $text, 0, $pos ) ), $suffix ];
			}
		}
		return [ $title, null ];
	}

	public static function variants( Title $title, Config $config ): array {
		if ( $title->isSpecialPage() || !$title->canExist() ) {
			return [];
		}
		[ $base ] = self::splitTitle( $title, $config );
		if ( !$base->exists() ) {
			return [];
		}
		$source = self::sourceLanguage( $config );
		$variants = [ $source => $base ];
		$hasTranslation = false;
		foreach ( self::languages( $config ) as $code ) {
			if ( $code === $source ) {
				continue;
			}
			$candidate = $base->getSubpage( $code );
			if ( $candidate && $candidate->exists() ) {
				$variants[$code] = $candidate;
				$hasTranslation = true;
			}
		}
		return $hasTranslation ? $variants : [];
	}

	public static function pageLanguage( Title $title, Config $config ): string {
		[ , $suffix ] = self::splitTitle( $title, $config );
		return $suffix ?? self::sourceLanguage( $config );
	}
}
