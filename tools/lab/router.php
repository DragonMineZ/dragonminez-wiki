<?php

$root = $_SERVER['DOCUMENT_ROOT'];
$uri = parse_url( $_SERVER['REQUEST_URI'], PHP_URL_PATH ) ?: '/';

if ( preg_match( '#^/([a-z_]+\.php)(/.*)?$#', $uri, $m ) && is_file( "$root/{$m[1]}" ) ) {
	$_SERVER['SCRIPT_NAME'] = '/' . $m[1];
	$_SERVER['SCRIPT_FILENAME'] = "$root/{$m[1]}";
	$_SERVER['PHP_SELF'] = $uri;
	if ( isset( $m[2] ) ) {
		$_SERVER['PATH_INFO'] = $m[2];
	} else {
		unset( $_SERVER['PATH_INFO'] );
	}
	chdir( $root );
	require "$root/{$m[1]}";
	return true;
}

if ( $uri !== '/' && is_file( $root . $uri ) ) {
	return false;
}

$_SERVER['SCRIPT_NAME'] = '/index.php';
$_SERVER['SCRIPT_FILENAME'] = "$root/index.php";
$_SERVER['PHP_SELF'] = '/index.php';
chdir( $root );
require "$root/index.php";
return true;
