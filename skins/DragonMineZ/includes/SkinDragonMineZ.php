<?php

namespace MediaWiki\Skins\DragonMineZ;

use MediaWiki\Config\Config;
use MediaWiki\Html\Html;
use MediaWiki\SpecialPage\SpecialPage;
use MediaWiki\Title\Title;
use SkinMustache;

class SkinDragonMineZ extends SkinMustache {

	private const DISCORD = 'https://discord.com/servers/dragonmine-z-1216429657273012415';

	private const DOWNLOADS = [
		'CurseForge' => [ 'curseforge', 'https://www.curseforge.com/minecraft/mc-mods/dragonminez' ],
		'Modrinth' => [ 'modrinth', 'https://modrinth.com/mod/dragonminez' ],
	];

	private const SOCIALS = [
		[ 'Discord', self::DISCORD, 'fa-discord' ],
		[ 'GitHub', 'https://github.com/DragonMineZ/dragonminez', 'fa-github' ],
		[ 'X (Twitter)', 'https://x.com/DragonMineZ', 'fa-x-twitter' ],
		[ 'YouTube', 'https://www.youtube.com/@DragonMine-Z', 'fa-youtube' ],
		[ 'TikTok', 'https://www.tiktok.com/@dragonminez', 'fa-tiktok' ],
		[ 'CurseForge', 'https://www.curseforge.com/minecraft/mc-mods/dragonminez', 'curseforge' ],
		[ 'Modrinth', 'https://modrinth.com/mod/dragonminez', 'modrinth' ],
	];

	private array $iconCache = [];

	public static function isHome( Title $title, Config $config ): bool {
		[ $base ] = ReaderLanguage::splitTitle( $title, $config );
		return $base->isMainPage();
	}

	public function getTemplateData() {
		$data = parent::getTemplateData();
		$config = $this->getConfig();
		$title = $this->getTitle();
		$web = rtrim( (string)$config->get( 'DMZWebUrl' ), '/' );
		$assets = $config->get( 'StylePath' ) . '/DragonMineZ/resources';
		$readerLang = $this->getLanguage()->getCode();
		$variants = ReaderLanguage::variants( $title, $config );
		$pageLang = ReaderLanguage::pageLanguage( $title, $config );
		$isHome = self::isHome( $title, $config );
		$mainPage = Title::newMainPage();
		$portlets = $data['data-portlets'] ?? [];
		$sidebar = $this->sidebarPortlets( $data['data-portlets-sidebar'] ?? [], $title, $isHome );
		$languages = $this->languages( $readerLang, $variants, $pageLang );
		$isView = $this->getContext()->getActionName() === 'view';
		$rail = $isView ? $this->railHtml( $title, $isHome ) : '';

		return $data + [
			'dmz-web-url' => $web . '/',
			'dmz-hairsalon-url' => $web . '/hairsalon',
			'dmz-discord-url' => self::DISCORD,
			'dmz-wiki-home-url' => SpecialPage::getTitleFor( 'MyLanguage', $mainPage->getPrefixedDBkey() )->getLocalURL(),
			'dmz-search-url' => SpecialPage::getTitleFor( 'Search' )->getLocalURL(),
			'dmz-login-url' => SpecialPage::getTitleFor( 'Userlogin' )->getLocalURL( [
				'returnto' => $title->getPrefixedDBkey(),
			] ),
			'dmz-logo-src' => "$assets/images/dmz-title.webp",
			'dmz-hero-src' => "$assets/images/dmz-hero.webp",
			'dmz-year' => date( 'Y' ),
			'dmz-reader-language' => $readerLang,
			'is-dmz-home' => $isHome,
			'is-dmz-registered' => $this->getUser()->isRegistered(),
			'is-dmz-view' => $isView,
			'array-dmz-downloads' => $this->downloads(),
			'array-dmz-socials' => $this->socials(),
			'array-dmz-languages-menu' => array_reverse( $languages ),
			'html-dmz-page-languages' => $variants ? $this->pageLanguagePills( $languages ) : '',
			'html-dmz-translation-notice' => $this->translationNotice( $title, $readerLang, $variants, $pageLang ),
			'array-dmz-sidebar' => $sidebar,
			'has-dmz-navigation' => $sidebar !== [],
			'html-dmz-rail' => $rail,
			'has-dmz-rail' => $rail !== '',
			'is-dmz-sidebar-collapsed' => $this->getRequest()->getCookie( 'dmz_sidebar_hidden', '' ) === '1',
			'data-dmz-user' => $this->userData( $portlets ),
			'has-dmz-actions' => $this->hasItems( $portlets['data-actions'] ?? null ),
		];
	}

	private function sidebarPortlets( array $sidebar, Title $title, bool $isHome ): array {
		$all = array_values( array_filter( array_merge(
			[ $sidebar['data-portlets-first'] ?? null ],
			$sidebar['array-portlets-rest'] ?? []
		) ) );
		$saved = $this->savedSidebarState();
		$current = $this->currentKeys( $title );
		$portlets = [];
		foreach ( $all as $index => $portlet ) {
			if ( !empty( $portlet['is-empty'] ) ) {
				continue;
			}
			$id = $portlet['id'] ?? '';
			$open = $index === 0 || $this->portletContains( $portlet, $current );
			if ( isset( $saved[$id] ) ) {
				$open = $saved[$id];
			}
			$portlet['is-dmz-open'] = $open;
			$portlets[] = $portlet;
		}
		return $portlets;
	}

	private function savedSidebarState(): array {
		$raw = (string)$this->getRequest()->getCookie( 'dmz_sidebar', '', '' );
		$state = [];
		foreach ( explode( '~', $raw ) as $pair ) {
			if ( preg_match( '/^([A-Za-z0-9_.-]+)\.([01])$/', $pair, $m ) ) {
				$state[$m[1]] = $m[2] === '1';
			}
		}
		return $state;
	}

	private function currentKeys( Title $title ): array {
		[ $base ] = ReaderLanguage::splitTitle( $title, $this->getConfig() );
		return [
			$base->getPrefixedDBkey() => true,
			$title->getPrefixedDBkey() => true,
		];
	}

	private function portletContains( array $portlet, array $current ): bool {
		$prefix = str_replace( '$1', '', (string)$this->getConfig()->get( 'ArticlePath' ) );
		foreach ( $portlet['array-items'] ?? [] as $item ) {
			foreach ( $item['array-links'] ?? [] as $link ) {
				foreach ( $link['array-attributes'] ?? [] as $attribute ) {
					if ( ( $attribute['key'] ?? '' ) !== 'href' ) {
						continue;
					}
					$href = (string)$attribute['value'];
					if ( !str_starts_with( $href, $prefix ) ) {
						continue;
					}
					$key = rawurldecode( strtok( substr( $href, strlen( $prefix ) ), '?#' ) );
					$key = preg_replace( '/^Special:MyLanguage\//', '', str_replace( ' ', '_', $key ) );
					if ( isset( $current[$key] ) ) {
						return true;
					}
				}
			}
		}
		return false;
	}

	private function railHtml( Title $title, bool $isHome ): string {
		$config = $this->getConfig();
		$rail = new Rail( $this->getContext(), $config );
		$cards = [ $this->versionCard() ];
		if ( !$isHome && $title->isContentPage() && $title->exists() ) {
			$related = $rail->localize( $rail->related( $title, $this->getOutput()->getCategories( 'normal' ) ) );
			$cards[] = $this->railCard( 'hub', $this->msg( 'dmz-rail-related' )->text(), $related );
		}
		$cards[] = $this->railCard( 'trending_up', $this->msg( 'dmz-rail-popular' )->text(), $rail->localize( $rail->popular() ) );
		$recent = $rail->recent();
		$times = [];
		foreach ( $recent as [ $base, $timestamp ] ) {
			$times[$base->getPrefixedDBkey()] = $rail->humanTime( $timestamp );
		}
		$recentItems = $rail->localize( array_column( $recent, 0 ) );
		foreach ( $recentItems as &$item ) {
			[ $base ] = ReaderLanguage::splitTitle( $item['title'], $config );
			$item['meta'] = $times[$base->getPrefixedDBkey()] ?? null;
		}
		unset( $item );
		$cards[] = $this->railCard( 'update', $this->msg( 'dmz-rail-recent' )->text(), $recentItems );
		return implode( '', array_filter( $cards ) );
	}

	private function railCard( string $icon, string $heading, array $items ): string {
		if ( $items === [] ) {
			return '';
		}
		$list = '';
		foreach ( $items as $item ) {
			$inner = Html::element( 'span', [ 'class' => 'dmz-rail-card__text' ], $item['text'] );
			if ( !empty( $item['meta'] ) ) {
				$inner .= Html::element( 'span', [ 'class' => 'dmz-rail-card__meta' ], $item['meta'] );
			}
			$list .= Html::rawElement( 'li', [],
				Html::rawElement( 'a', [ 'class' => 'dmz-rail-card__link', 'href' => $item['title']->getLocalURL() ], $inner )
			);
		}
		return Html::rawElement( 'section', [ 'class' => 'dmz-panel dmz-rail-card' ],
			Html::rawElement( 'h2', [ 'class' => 'dmz-rail-card__title' ],
				Html::element( 'span', [ 'class' => 'material-symbols-rounded', 'aria-hidden' => 'true' ], $icon )
				. Html::element( 'span', [], $heading )
			) . Html::rawElement( 'ul', [ 'class' => 'dmz-rail-card__list' ], $list )
		);
	}

	private function versionCard(): string {
		$version = (string)$this->getConfig()->get( 'DMZModVersion' );
		$changelog = SpecialPage::getTitleFor( 'MyLanguage', 'Changelog' )->getLocalURL();
		$buttons = Html::rawElement( 'a', [ 'class' => 'dmz-pill dmz-pill--primary', 'href' => $changelog ],
			Html::element( 'span', [ 'class' => 'material-symbols-rounded', 'aria-hidden' => 'true' ], 'article' )
			. Html::element( 'span', [], $this->msg( 'dmz-rail-changelog' )->text() )
		);
		foreach ( self::DOWNLOADS as $name => [ $icon, $url ] ) {
			$buttons .= Html::rawElement( 'a', [
				'class' => 'dmz-pill dmz-pill--icon',
				'href' => $url,
				'target' => '_blank',
				'rel' => 'noopener noreferrer',
				'title' => $name,
				'aria-label' => $name,
			], $this->icon( $icon ) );
		}
		return Html::rawElement( 'section', [ 'class' => 'dmz-panel dmz-rail-card dmz-rail-version' ],
			Html::element( 'p', [ 'class' => 'dmz-rail-version__label' ], $this->msg( 'dmz-rail-version' )->text() )
			. Html::element( 'p', [ 'class' => 'dmz-rail-version__number' ], 'DragonMineZ ' . $version )
			. Html::rawElement( 'div', [ 'class' => 'dmz-rail-version__actions' ], $buttons )
		);
	}

	private function hasItems( ?array $portlet ): bool {
		return $portlet !== null && !empty( $portlet['array-items'] );
	}

	private function userData( array $portlets ): ?array {
		$user = $this->getUser();
		if ( !$user->isRegistered() ) {
			return null;
		}
		$name = $user->getName();
		return [
			'name' => $name,
			'initial' => mb_strtoupper( mb_substr( $name, 0, 1 ) ),
			'url' => $user->getUserPage()->getLocalURL(),
			'data-menu' => $portlets['data-user-menu'] ?? null,
			'data-notifications' => $this->hasItems( $portlets['data-notifications'] ?? null )
				? $portlets['data-notifications'] : null,
		];
	}

	private function downloads(): array {
		$items = [];
		foreach ( self::DOWNLOADS as $name => [ $icon, $url ] ) {
			$items[] = [
				'name' => $name,
				'url' => $url,
				'html-icon' => $this->icon( $icon ),
			];
		}
		return $items;
	}

	private function socials(): array {
		$items = [];
		foreach ( self::SOCIALS as [ $label, $url, $icon ] ) {
			$isSvg = !str_starts_with( $icon, 'fa-' );
			$items[] = [
				'label' => $label,
				'url' => $url,
				'html-icon' => $isSvg
					? $this->icon( $icon )
					: Html::element( 'i', [ 'class' => "fa-brands $icon", 'aria-hidden' => 'true' ] ),
			];
		}
		return $items;
	}

	private function languages( string $readerLang, array $variants, string $pageLang ): array {
		$config = $this->getConfig();
		$items = [];
		foreach ( ReaderLanguage::languages( $config ) as $code ) {
			$target = $variants[$code] ?? null;
			$items[] = [
				'code' => $code,
				'label' => ReaderLanguage::label( $code ),
				'flag-src' => ReaderLanguage::flagUrl( $code ),
				'href' => $target ? $target->getLocalURL( [ 'dmzlang' => $code ] ) : null,
				'is-reader' => $code === $readerLang,
				'is-page' => $code === $pageLang,
				'is-available' => $variants === [] || $target !== null,
			];
		}
		return $items;
	}

	private function pageLanguagePills( array $languages ): string {
		$html = '';
		foreach ( $languages as $item ) {
			$inner = Html::element( 'img', [
				'src' => $item['flag-src'],
				'alt' => '',
				'width' => 20,
				'height' => 20,
				'loading' => 'lazy',
			] ) . Html::element( 'span', [], $item['label'] );
			if ( $item['href'] === null ) {
				$html .= Html::rawElement( 'span', [
					'class' => 'dmz-lang-pill is-disabled',
					'lang' => $item['code'],
				], $inner );
				continue;
			}
			$html .= Html::rawElement( 'a', [
				'class' => [ 'dmz-lang-pill', 'is-active' => $item['is-page'] ],
				'href' => $item['href'],
				'data-dmz-lang' => $item['code'],
				'hreflang' => $item['code'],
				'lang' => $item['code'],
				'aria-current' => $item['is-page'] ? 'page' : null,
			], $inner );
		}
		return $html;
	}

	private function translationNotice( Title $title, string $readerLang, array $variants, string $pageLang ): ?string {
		if ( $readerLang === $pageLang || isset( $variants[$readerLang] ) || !$title->isContentPage() || !$title->exists() ) {
			return null;
		}
		if ( $this->getContext()->getActionName() !== 'view' ) {
			return null;
		}
		$text = $this->msg( 'dmz-translation-missing', ReaderLanguage::label( $readerLang ), ReaderLanguage::label( $pageLang ) )->text();
		return Html::rawElement(
			'div',
			[ 'class' => 'dmz-translation-notice', 'lang' => $readerLang ],
			Html::element( 'span', [ 'class' => 'material-symbols-rounded dmz-notice__icon', 'aria-hidden' => 'true' ], 'info' )
				. Html::element( 'span', [ 'class' => 'dmz-notice__text' ], $text )
		);
	}

	private function icon( string $name ): string {
		if ( !isset( $this->iconCache[$name] ) ) {
			$path = __DIR__ . "/../resources/icons/$name.svg";
			$svg = is_readable( $path ) ? (string)file_get_contents( $path ) : '';
			$svg = preg_replace( '/^.*?(<svg\b)/s', '$1', $svg );
			$this->iconCache[$name] = trim( (string)$svg );
		}
		return $this->iconCache[$name];
	}
}
