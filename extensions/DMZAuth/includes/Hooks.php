<?php

namespace MediaWiki\Extension\DMZAuth;

use MediaWiki\Config\Config;
use MediaWiki\Context\RequestContext;
use MediaWiki\Hook\SkinTemplateNavigation__UniversalHook;
use MediaWiki\Html\Html;
use MediaWiki\Output\Hook\BeforePageDisplayHook;
use MediaWiki\Registration\ExtensionRegistry;
use MediaWiki\SpecialPage\Hook\AuthChangeFormFieldsHook;
use MediaWiki\SpecialPage\Hook\SpecialPage_initListHook;
use MediaWiki\SpecialPage\SpecialPage;
use MediaWiki\Title\Title;
use MediaWiki\User\Hook\UserEffectiveGroupsHook;

class Hooks implements
	UserEffectiveGroupsHook,
	BeforePageDisplayHook,
	AuthChangeFormFieldsHook,
	SpecialPage_initListHook,
	SkinTemplateNavigation__UniversalHook
{
	private const PASSWORD_PAGES = [
		'CreateAccount', 'PasswordReset', 'ChangeCredentials', 'RemoveCredentials',
		'LinkAccounts', 'UnlinkAccounts', 'ChangePassword', 'ChangeEmail',
	];

	public function __construct( private readonly Config $config ) {
	}

	public function onUserEffectiveGroups( $user, &$groups ) {
		$id = $user->getId();
		if ( !$id ) {
			return;
		}
		$discord = Services::links()->discordFor( $id );
		if ( $discord === null ) {
			return;
		}
		$current = RequestContext::getMain()->getUser()->getId() === $id;
		$granted = Services::discord()->groupsFor( $discord, false, $current );
		if ( $granted ) {
			$groups = array_values( array_unique( array_merge( $groups, $granted ) ) );
		}
	}

	public function onBeforePageDisplay( $out, $skin ): void {
		$out->addModules( 'ext.dmzAuth' );
		$out->addJsConfigVars( 'wgDMZAuth', [
			'configured' => Services::isConfigured( $this->config ),
			'missing' => Services::missingSettings( $this->config ),
			'publishableKey' => (string)$this->config->get( 'DMZClerkPublishableKey' ),
			'frontendApi' => rtrim( (string)$this->config->get( 'DMZClerkFrontendApi' ), '/' ),
			'passwordLogin' => (bool)$this->config->get( 'DMZAuthPasswordLogin' ),
		] );
	}

	public function onAuthChangeFormFields( $requests, $fieldInfo, &$formDescriptor, $action ) {
		if ( !isset( $fieldInfo['dmzclerktoken'] ) ) {
			return;
		}
		$formDescriptor['dmzclerktoken']['id'] = 'dmzauth-token';
		$formDescriptor['dmzauth-panel'] = [
			'type' => 'info',
			'raw' => true,
			'weight' => -200,
			'default' => Html::rawElement( 'div', [ 'id' => 'dmzauth-login', 'class' => 'dmzauth-login' ],
				Html::element( 'p', [], wfMessage( 'dmzauth-login-text' )->text() ) .
				Html::element( 'noscript', [], wfMessage( 'dmzauth-noscript' )->text() )
			),
		];
		if ( !$this->config->get( 'DMZAuthPasswordLogin' ) ) {
			unset( $formDescriptor['loginattempt'], $formDescriptor['rememberMe'], $formDescriptor['linkcontainer'] );
		}
	}

	public function onSpecialPage_initList( &$list ) {
		if ( $this->config->get( 'DMZAuthPasswordLogin' ) ) {
			return;
		}
		foreach ( self::PASSWORD_PAGES as $page ) {
			unset( $list[$page] );
		}
	}

	public function onSkinTemplateNavigation__Universal( $sktemplate, &$links ): void {
		$title = $sktemplate->getRelevantTitle();
		if ( !$title || !$title->canExist() ) {
			return;
		}
		$views = $links['views'] ?? [];
		$authority = $sktemplate->getAuthority();
		$canEdit = isset( $views['edit'] ) || isset( $views['ve-edit'] ) ||
			( isset( $views['translate'] ) && $authority->isAllowed( 'translate' ) );
		if ( $canEdit ) {
			return;
		}
		unset( $views['viewsource'], $views['translate'] );
		$edit = [
			'edit' => [
				'text' => $sktemplate->msg( 'edit' )->text(),
				'href' => SpecialPage::getTitleFor( 'Userlogin' )->getLocalURL( [
					'returnto' => $title->getPrefixedDBkey(),
					'returntoquery' => $this->editQuery( $title ),
				] ),
				'class' => 'dmz-edit-locked',
				'primary' => true,
			],
		];
		$position = array_search( 'view', array_keys( $views ), true );
		$position = $position === false ? 0 : $position + 1;
		$links['views'] = array_slice( $views, 0, $position, true ) + $edit + array_slice( $views, $position, null, true );
		RequestContext::getMain()->getOutput()->addJsConfigVars( 'wgDMZEditLocked', true );
	}

	private function editQuery( Title $title ): string {
		$text = $title->getText();
		$slash = strrpos( $text, '/' );
		$languages = $this->config->has( 'DMZLanguages' ) ? (array)$this->config->get( 'DMZLanguages' ) : [];
		if ( $slash !== false && in_array( substr( $text, $slash + 1 ), $languages, true ) ) {
			return '';
		}
		if ( ExtensionRegistry::getInstance()->isLoaded( 'VisualEditor' ) ) {
			$namespaces = $this->config->has( 'VisualEditorAvailableNamespaces' ) ? (array)$this->config->get( 'VisualEditorAvailableNamespaces' ) : [];
			if ( !empty( $namespaces[$title->getNamespace()] ) ) {
				return 'veaction=edit';
			}
		}
		return 'action=edit';
	}
}
