<?php

namespace MediaWiki\Skins\DragonMineZ;

use MediaWiki\Config\Config;
use MediaWiki\Deferred\DeferredUpdates;
use MediaWiki\Hook\InternalParseBeforeLinksHook;
use MediaWiki\Hook\SkinBuildSidebarHook;
use MediaWiki\Hook\UserGetLanguageObjectHook;
use MediaWiki\Html\Html;
use MediaWiki\MediaWikiServices;
use MediaWiki\Output\Hook\BeforePageDisplayHook;
use MediaWiki\Output\Hook\OutputPageBodyAttributesHook;
use MediaWiki\Page\Hook\PageViewUpdatesHook;
use MediaWiki\Title\Title;

class Hooks implements
	BeforePageDisplayHook,
	UserGetLanguageObjectHook,
	OutputPageBodyAttributesHook,
	SkinBuildSidebarHook,
	PageViewUpdatesHook,
	InternalParseBeforeLinksHook
{
	private const ICON_NAMES = [
		'account_circle', 'arrow_outward', 'article', 'arrow_upward', 'check', 'chevron_right', 'close',
		'dark_mode', 'download', 'edit', 'edit_note', 'error', 'expand_more', 'history',
		'info', 'light_mode', 'lightbulb', 'login', 'logout', 'menu', 'more_horiz',
		'report', 'search', 'settings', 'toc', 'translate', 'warning',
		'bolt', 'construction', 'dns', 'extension', 'menu_book', 'person', 'public', 'skull', 'swords',
		'dock_to_right', 'expand_less', 'hub', 'subdirectory_arrow_right', 'trending_up', 'update', 'image', 'keyboard', 'terminal', 'link', 'category', 'star', 'groups', 'school', 'map', 'inventory_2', 'auto_awesome', 'local_fire_department', 'shield', 'military_tech', 'pets', 'favorite', 'bolt', 'castle', 'rocket_launch', 'sports_martial_arts', 'emoji_events', 'diamond', 'science', 'tune', 'code', 'help', 'flag', 'apps', 'handshake', 'rocket',
		'shuffle', 'account_tree', 'inventory',
	];

	public function __construct( private readonly Config $config ) {
	}

	public function onUserGetLanguageObject( $user, &$code, $context ) {
		$request = $context->getRequest();
		if ( $request->getRawVal( 'uselang' ) !== null ) {
			return;
		}
		$cookie = ReaderLanguage::fromCookie( $request, $this->config );
		if ( $cookie !== null ) {
			$code = $cookie;
			return;
		}
		if ( !$user->isRegistered() ) {
			$code = ReaderLanguage::fromRequest( $request, $this->config );
		}
	}

	public function onBeforePageDisplay( $out, $skin ): void {
		if ( $skin->getSkinName() !== 'dragonminez' ) {
			return;
		}
		$out->addHtmlClasses( [ 'dark', 'skin-theme-clientpref-night' ] );
		$out->addHeadItem( 'dmz-theme', Html::inlineScript( $this->themeScript() ) );
		$out->addMeta( 'theme-color', '#0a0a0b' );

		$out->addHeadItem( 'dmz-preconnect', implode( "\n", [
			Html::element( 'link', [ 'rel' => 'preconnect', 'href' => 'https://fonts.googleapis.com' ] ),
			Html::element( 'link', [ 'rel' => 'preconnect', 'href' => 'https://fonts.gstatic.com', 'crossorigin' => '' ] ),
			Html::element( 'link', [ 'rel' => 'preconnect', 'href' => 'https://cdnjs.cloudflare.com', 'crossorigin' => '' ] ),
		] ) );
		$names = array_values( array_unique( self::ICON_NAMES ) );
		sort( $names );
		$icons = 'https://fonts.googleapis.com/css2?family=Material+Symbols+Rounded:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200'
			. '&icon_names=' . implode( ',', $names ) . '&display=block';
		$out->addLink( [ 'rel' => 'stylesheet', 'href' => $icons ] );
		$out->addLink( [
			'rel' => 'stylesheet',
			'href' => 'https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.2/css/all.min.css',
			'integrity' => 'sha512-Evv84Mr4kqVGRNSgIGL/F/aIDqQb7xQ2vcrdIwxfjThSH8CSR7PBEakCr51Ck+w+/U6swU2Im1vVX0SVk9ABhg==',
			'crossorigin' => 'anonymous',
			'referrerpolicy' => 'no-referrer',
		] );

		$languages = ReaderLanguage::languages( $this->config );
		$translations = [];
		foreach ( ReaderLanguage::variants( $out->getTitle(), $this->config ) as $code => $title ) {
			$translations[$code] = $title->getLocalURL();
		}
		$out->addJsConfigVars( [
			'wgDMZCookieDomain' => (string)$this->config->get( 'DMZCookieDomain' ),
			'wgDMZLanguages' => $languages,
			'wgDMZTranslations' => $translations ?: null,
		] );
	}

	public function onPageViewUpdates( $wikipage, $user ) {
		if ( $user->isRegistered() || !$wikipage->getTitle()->isContentPage() ) {
			return;
		}
		$pageId = $wikipage->getId();
		$sample = max( 1, (int)$this->config->get( 'DMZViewSample' ) );
		if ( !$pageId || ( $sample > 1 && mt_rand( 1, $sample ) !== 1 ) ) {
			return;
		}
		DeferredUpdates::addCallableUpdate( static function () use ( $pageId, $sample ) {
			$dbw = MediaWikiServices::getInstance()->getConnectionProvider()->getPrimaryDatabase();
			$dbw->upsert(
				'dmz_page_views',
				[ 'dpv_page' => $pageId, 'dpv_views' => $sample ],
				'dpv_page',
				[ 'dpv_views = dpv_views + ' . $sample ],
				__METHOD__
			);
		} );
	}

	public function onInternalParseBeforeLinks( $parser, &$text, $stripState ) {
		if ( !preg_match_all( '/\[\[\s*:?\s*Special\s*:\s*MyLanguage\s*\/([^\]|#\n]+)/i', $text, $matches ) ) {
			return;
		}
		$self = null;
		$page = $parser->getPage();
		if ( $page ) {
			[ $self ] = ReaderLanguage::splitTitle( Title::newFromPageReference( $page ), $this->config );
		}
		$targets = [];
		foreach ( array_unique( $matches[1] ) as $name ) {
			$title = Title::newFromText( trim( str_replace( '_', ' ', $name ) ) );
			if ( $title && !$title->isExternal() && $title->getNamespace() >= 0 && !( $self && $self->equals( $title ) ) ) {
				$targets[$title->getPrefixedDBkey()] = $title;
			}
		}
		if ( !$targets ) {
			return;
		}
		$services = MediaWikiServices::getInstance();
		$services->getLinkBatchFactory()->newLinkBatch( $targets )->execute();
		$linkCache = $services->getLinkCache();
		$output = $parser->getOutput();
		foreach ( $targets as $title ) {
			$output->addLink( $title, $linkCache->getGoodLinkID( $title ) );
		}
	}

	public function onSkinBuildSidebar( $skin, &$bar ) {
		if ( $skin->getSkinName() !== 'dragonminez' ) {
			return;
		}
		$lang = $skin->getLanguage()->getCode();
		if ( $lang === ReaderLanguage::sourceLanguage( $this->config ) ) {
			return;
		}
		$page = Title::makeTitle( NS_MEDIAWIKI, 'Sidebar/' . $lang );
		if ( !$page->exists() ) {
			return;
		}
		$localized = [];
		$skin->addToSidebarPlain( $localized, $skin->msg( 'sidebar' )->inLanguage( $lang )->plain() );
		if ( $localized !== [] ) {
			$bar = $localized;
		}
	}

	public function onOutputPageBodyAttributes( $out, $sk, &$bodyAttrs ): void {
		if ( $sk->getSkinName() !== 'dragonminez' ) {
			return;
		}
		$classes = [ $sk->getUser()->isRegistered() ? 'dmz-user' : 'dmz-anon' ];
		if ( SkinDragonMineZ::isHome( $out->getTitle(), $this->config ) ) {
			$classes[] = 'dmz-home';
		}
		$bodyAttrs['class'] = trim( ( $bodyAttrs['class'] ?? '' ) . ' ' . implode( ' ', $classes ) );
	}

	private function themeScript(): string {
		return '(function(){var d=document.documentElement,t=null;'
			. 'try{var m=document.cookie.match(/(?:^|;\\s*)' . ReaderLanguage::COOKIE_THEME . '=(light|dark)/);'
			. 't=m?m[1]:localStorage.getItem("theme");}catch(e){}'
			. 'var q=location.search.match(/[?&]dmztheme=(light|dark)/);if(q){t=q[1];}'
			. 'if(t==="light"){d.classList.remove("dark","skin-theme-clientpref-night");d.classList.add("skin-theme-clientpref-day");}'
			. '})();';
	}
}
