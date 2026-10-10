<?php

namespace MediaWiki\Extension\DMZAuth;

use MediaWiki\Auth\AuthenticationRequest;

class ClerkAuthenticationRequest extends AuthenticationRequest {
	/** @var string|null */
	public $dmzclerktoken;

	public function getFieldInfo() {
		return [
			'dmzclerktoken' => [
				'type' => 'hidden',
				'value' => '',
				'label' => wfMessage( 'dmzauth-login-title' ),
				'help' => wfMessage( 'dmzauth-login-text' ),
			],
		];
	}
}
