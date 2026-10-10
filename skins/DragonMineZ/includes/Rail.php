<?php

namespace MediaWiki\Skins\DragonMineZ;

use MediaWiki\Config\Config;
use MediaWiki\Context\IContextSource;
use MediaWiki\MediaWikiServices;
use MediaWiki\Parser\Sanitizer;
use MediaWiki\Title\Title;
use MediaWiki\Utils\MWTimestamp;

class Rail {

	public const LIMIT = 6;

	public function __construct(
		private readonly IContextSource $context,
		private readonly Config $config
	) {
	}

	public function related( Title $title, array $categories ): array {
		[ $base ] = ReaderLanguage::splitTitle( $title, $this->config );
		$keys = [];
		foreach ( $categories as $name ) {
			$category = Title::makeTitleSafe( NS_CATEGORY, $name );
			if ( $category ) {
				[ $categoryBase ] = ReaderLanguage::splitTitle( $category, $this->config );
				$keys[$category->getDBkey()] = true;
				$keys[$categoryBase->getDBkey()] = true;
			}
		}
		$cache = MediaWikiServices::getInstance()->getMainWANObjectCache();
		$fromCategories = [];
		if ( $keys ) {
			$names = array_keys( $keys );
			sort( $names );
			$fromCategories = $cache->getWithSetCallback(
				$cache->makeKey( 'dmz-rail-related', md5( implode( '|', $names ) ) ),
				3600,
				fn () => $this->pagesInCategories( $names )
			);
		}
		$fromLinks = $title->getArticleID() ? $cache->getWithSetCallback(
			$cache->makeKey( 'dmz-rail-links', $title->getArticleID(), $title->getLatestRevID() ),
			3600,
			fn () => $this->outgoingLinks( $title->getArticleID() )
		) : [];
		$exclude = [ $base->getDBkey() => true, Title::newMainPage()->getDBkey() => true ];
		return $this->baseTitles( array_merge( $fromCategories, $fromLinks ), $exclude );
	}

	public function popular(): array {
		$cache = MediaWikiServices::getInstance()->getMainWANObjectCache();
		$keys = $cache->getWithSetCallback(
			$cache->makeKey( 'dmz-rail-popular' ),
			3600,
			fn () => $this->mostViewed()
		);
		if ( count( $keys ) < self::LIMIT ) {
			$curated = $this->context->msg( 'dmz-rail-popular-pages' )->inContentLanguage()->plain();
			foreach ( preg_split( '/\R/', $curated ) as $line ) {
				$line = trim( $line, " *\t" );
				if ( $line !== '' ) {
					$keys[] = str_replace( ' ', '_', $line );
				}
			}
		}
		return $this->baseTitles( $keys, [ Title::newMainPage()->getDBkey() => true ] );
	}

	public function recent(): array {
		$cache = MediaWikiServices::getInstance()->getMainWANObjectCache();
		$rows = $cache->getWithSetCallback(
			$cache->makeKey( 'dmz-rail-recent' ),
			300,
			fn () => $this->recentChanges()
		);
		$seen = [ Title::newMainPage()->getDBkey() => true ];
		$out = [];
		foreach ( $rows as [ $key, $timestamp ] ) {
			$title = Title::makeTitle( NS_MAIN, $key );
			[ $base ] = ReaderLanguage::splitTitle( $title, $this->config );
			if ( isset( $seen[$base->getDBkey()] ) ) {
				continue;
			}
			$seen[$base->getDBkey()] = true;
			$out[] = [ $base, $timestamp ];
			if ( count( $out ) >= self::LIMIT ) {
				break;
			}
		}
		return $out;
	}

	public function localize( array $bases ): array {
		$services = MediaWikiServices::getInstance();
		$lang = $this->context->getLanguage()->getCode();
		$source = ReaderLanguage::sourceLanguage( $this->config );
		$batch = $services->getLinkBatchFactory()->newLinkBatch();
		foreach ( $bases as $base ) {
			$batch->addObj( $base );
			if ( $lang !== $source ) {
				$batch->addObj( $base->getSubpage( $lang ) );
			}
		}
		$batch->execute();
		$targets = [];
		foreach ( $bases as $base ) {
			$variant = $lang !== $source ? $base->getSubpage( $lang ) : null;
			if ( $variant && $variant->exists() ) {
				$targets[] = [ $base, $variant ];
			} elseif ( $base->exists() ) {
				$targets[] = [ $base, $base ];
			}
		}
		$withIds = array_filter( array_map( static fn ( $pair ) => $pair[1], $targets ), static fn ( $t ) => $t->getArticleID() > 0 );
		$props = $withIds ? $services->getPageProps()->getProperties( $withIds, 'displaytitle' ) : [];
		$items = [];
		foreach ( $targets as [ $base, $target ] ) {
			$display = $props[$target->getArticleID()] ?? null;
			$text = $display !== null ? trim( Sanitizer::stripAllTags( $display ) ) : '';
			if ( $text === '' || $target->equals( $base ) ) {
				$text = $base->getText();
			}
			$items[] = [ 'title' => $target, 'text' => $text ];
		}
		return $items;
	}

	public function humanTime( string $timestamp ): string {
		$lang = $this->context->getLanguage();
		return $lang->getHumanTimestamp( new MWTimestamp( $timestamp ), null, $this->context->getUser() );
	}

	private function baseTitles( array $keys, array $exclude ): array {
		$seen = $exclude;
		$out = [];
		foreach ( $keys as $key ) {
			$title = Title::makeTitleSafe( NS_MAIN, (string)$key );
			if ( !$title ) {
				continue;
			}
			[ $base ] = ReaderLanguage::splitTitle( $title, $this->config );
			if ( isset( $seen[$base->getDBkey()] ) ) {
				continue;
			}
			$seen[$base->getDBkey()] = true;
			$out[] = $base;
			if ( count( $out ) >= self::LIMIT ) {
				break;
			}
		}
		return $out;
	}

	private function pagesInCategories( array $categoryKeys ): array {
		$dbr = MediaWikiServices::getInstance()->getConnectionProvider()->getReplicaDatabase();
		$result = $dbr->newSelectQueryBuilder()
			->select( [ 'page_title', 'shared' => 'COUNT(*)' ] )
			->from( 'categorylinks' )
			->join( 'page', null, 'page_id = cl_from' )
			->where( [ 'cl_to' => $categoryKeys, 'page_namespace' => NS_MAIN, 'page_is_redirect' => 0 ] )
			->groupBy( 'page_title' )
			->orderBy( [ 'shared', 'page_title' ], 'DESC' )
			->limit( 60 )
			->caller( __METHOD__ )
			->fetchResultSet();
		$keys = [];
		foreach ( $result as $row ) {
			$keys[] = $row->page_title;
		}
		return $keys;
	}

	private function outgoingLinks( int $pageId ): array {
		$dbr = MediaWikiServices::getInstance()->getConnectionProvider()->getReplicaDatabase();
		$result = $dbr->newSelectQueryBuilder()
			->select( 'lt_title' )
			->from( 'pagelinks' )
			->join( 'linktarget', null, 'lt_id = pl_target_id' )
			->join( 'page', null, [ 'page_namespace = lt_namespace', 'page_title = lt_title' ] )
			->where( [ 'pl_from' => $pageId, 'lt_namespace' => NS_MAIN, 'page_is_redirect' => 0 ] )
			->limit( 40 )
			->caller( __METHOD__ )
			->fetchResultSet();
		$keys = [];
		foreach ( $result as $row ) {
			$keys[] = $row->lt_title;
		}
		return $keys;
	}

	private function mostViewed(): array {
		$dbr = MediaWikiServices::getInstance()->getConnectionProvider()->getReplicaDatabase();
		$result = $dbr->newSelectQueryBuilder()
			->select( [ 'page_title', 'views' => 'dpv_views' ] )
			->from( 'dmz_page_views' )
			->join( 'page', null, 'page_id = dpv_page' )
			->where( [ 'page_namespace' => NS_MAIN, 'page_is_redirect' => 0 ] )
			->orderBy( 'dpv_views', 'DESC' )
			->limit( 60 )
			->caller( __METHOD__ )
			->fetchResultSet();
		$totals = [];
		foreach ( $result as $row ) {
			[ $base ] = ReaderLanguage::splitTitle( Title::makeTitle( NS_MAIN, $row->page_title ), $this->config );
			$key = $base->getDBkey();
			$totals[$key] = ( $totals[$key] ?? 0 ) + (int)$row->views;
		}
		arsort( $totals );
		return array_keys( $totals );
	}

	private function recentChanges(): array {
		$dbr = MediaWikiServices::getInstance()->getConnectionProvider()->getReplicaDatabase();
		$result = $dbr->newSelectQueryBuilder()
			->select( [ 'rc_title', 'rc_timestamp' ] )
			->from( 'recentchanges' )
			->where( [ 'rc_namespace' => NS_MAIN, 'rc_type' => [ RC_EDIT, RC_NEW ] ] )
			->orderBy( 'rc_timestamp', 'DESC' )
			->limit( 80 )
			->caller( __METHOD__ )
			->fetchResultSet();
		$rows = [];
		foreach ( $result as $row ) {
			$rows[] = [ $row->rc_title, $row->rc_timestamp ];
		}
		return $rows;
	}
}
