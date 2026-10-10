<?php

namespace MediaWiki\Extension\DMZAuth;

use RuntimeException;

class AuthError extends RuntimeException {
	public function __construct( public readonly string $messageKey ) {
		parent::__construct( $messageKey );
	}
}
