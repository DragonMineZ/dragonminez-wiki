<?php

namespace MediaWiki\Skins\DragonMineZ;

use DOMDocument;
use DOMXPath;
use MediaWiki\Config\Config;
use MediaWiki\MediaWikiServices;
use MediaWiki\Output\OutputPage;
use MediaWiki\Parser\Sanitizer;
use MediaWiki\Title\Title;
use PageImages\PageImages;

class SocialMeta {
	public const PROPERTY = 'dmzDescription';
	private const LIMIT = 200;
	private const IMAGE_WIDTH = 600;
	private const PLACEHOLDERS = [ 'Placeholder.png', 'Placeholder-wide.png' ];
	private const MIN_LENGTH = 40;
	private const SKIP = 'ancestor::table or ancestor::*[contains(concat(" ", normalize-space(@class), " "), " druid-container ")]'
		. ' or ancestor::*[contains(@class, "dmz-note")] or ancestor::*[contains(@class, "navbox")]'
		. ' or ancestor::*[contains(@class, "dmz-recipe")] or ancestor::*[contains(@class, "toc")]';
	private const LOCALES = [ 'en' => 'en_US', 'es' => 'es_LA', 'pt' => 'pt_BR' ];

	public static function description( string $html ): string {
		if ( trim( $html ) === '' ) {
			return '';
		}
		$doc = new DOMDocument();
		$previous = libxml_use_internal_errors( true );
		$doc->loadHTML( '<?xml encoding="utf-8"?><div>' . $html . '</div>', LIBXML_NOERROR | LIBXML_NOWARNING );
		libxml_clear_errors();
		libxml_use_internal_errors( $previous );
		$xpath = new DOMXPath( $doc );
		foreach ( $xpath->query( '//p[not(' . self::SKIP . ')]' ) as $paragraph ) {
			foreach ( $xpath->query( './/sup[contains(@class, "reference")] | .//style | .//script', $paragraph ) as $noise ) {
				$noise->parentNode->removeChild( $noise );
			}
			$text = trim( preg_replace( '/\s+/u', ' ', $paragraph->textContent ) );
			if ( mb_strlen( $text ) >= self::MIN_LENGTH ) {
				return self::shorten( $text );
			}
		}
		return '';
	}

	private static function shorten( string $text ): string {
		if ( mb_strlen( $text ) <= self::LIMIT ) {
			return $text;
		}
		$cut = mb_substr( $text, 0, self::LIMIT );
		$space = mb_strrpos( $cut, ' ' );
		if ( $space !== false && $space > self::LIMIT * 0.6 ) {
			$cut = mb_substr( $cut, 0, $space );
		}
		return rtrim( $cut, " ,;:.-–—(" ) . '…';
	}

	private static function image( OutputPage $out, Config $config, ?Title $title, string $name ): void {
		$urlUtils = MediaWikiServices::getInstance()->getUrlUtils();
		$file = $title && class_exists( PageImages::class ) ? PageImages::getPageImage( $title ) : false;
		if ( $file && !in_array( $file->getName(), self::PLACEHOLDERS, true ) ) {
			$thumb = $file->getWidth() > self::IMAGE_WIDTH ? $file->transform( [ 'width' => self::IMAGE_WIDTH ] ) : null;
			$url = $thumb ? $thumb->getUrl() : $file->getUrl();
			$width = $thumb ? $thumb->getWidth() : $file->getWidth();
			$height = $thumb ? $thumb->getHeight() : $file->getHeight();
		} else {
			$url = (string)$config->get( 'PageImagesOpenGraphFallbackImage' );
			$width = $height = 0;
		}
		if ( $url === '' ) {
			return;
		}
		$out->addMeta( 'og:image', (string)$urlUtils->expand( $url, PROTO_CANONICAL ) );
		if ( $width && $height ) {
			$out->addMeta( 'og:image:width', (string)$width );
			$out->addMeta( 'og:image:height', (string)$height );
		}
		$out->addMeta( 'og:image:alt', $name );
	}

	public static function add( OutputPage $out, Config $config ): void {
		$title = $out->getTitle();
		if ( !$title || !$title->canExist() || $out->getContext()->getActionName() !== 'view' ) {
			return;
		}
		$site = (string)$config->get( 'Sitename' );
		[ $base ] = ReaderLanguage::splitTitle( $title, $config );
		$home = $base->isMainPage();
		$name = trim( Sanitizer::stripAllTags( $out->getPageTitle() ) );
		if ( $home || $name === '' ) {
			$name = $site;
		}
		$description = $home ? '' : (string)$out->getProperty( self::PROPERTY );
		if ( $description === '' ) {
			$description = $out->msg( 'dmz-home-hero-subtitle' )->inLanguage( $title->getPageLanguage() )->text();
		}
		$lang = $title->getPageLanguage()->getCode();

		$out->addMeta( 'description', $description );
		$out->addMeta( 'og:type', $home ? 'website' : 'article' );
		self::image( $out, $config, $home ? null : $title, $name );
		$out->addMeta( 'og:site_name', $site );
		$out->addMeta( 'og:title', $name );
		$out->addMeta( 'og:description', $description );
		$out->addMeta( 'og:url', $title->getCanonicalURL() );
		$out->addMeta( 'og:locale', self::LOCALES[$lang] ?? 'en_US' );
		$out->addMeta( 'twitter:card', 'summary' );
		$out->addMeta( 'twitter:title', $name );
		$out->addMeta( 'twitter:description', $description );
	}
}
