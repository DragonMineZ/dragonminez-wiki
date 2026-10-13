<?php

if ( !defined( 'MEDIAWIKI' ) ) {
	exit;
}

$dmzEnv = static function ( string $name, ?string $default = null ): ?string {
	$value = getenv( $name );
	return ( $value === false || $value === '' ) ? $default : $value;
};
$dmzFlag = static fn ( string $name, bool $default = false ): bool =>
	filter_var( $dmzEnv( $name, $default ? '1' : '0' ), FILTER_VALIDATE_BOOLEAN );

$dmzSecretsFile = $dmzEnv( 'MW_SECRETS_FILE', '/var/www/secrets/secrets.php' );
if ( !is_readable( $dmzSecretsFile ) ) {
	http_response_code( 503 );
	exit( "Missing $dmzSecretsFile. Run scripts/install.sh first.\n" );
}
require $dmzSecretsFile;

$wgSitename = 'DragonMineZ Wiki';
$wgMetaNamespace = 'DragonMineZ_Wiki';
$wgServer = $dmzEnv( 'MW_SERVER', 'https://wiki.dragonminez.com' );
$wgCanonicalServer = $wgServer;
$wgScriptPath = '';
$wgArticlePath = '/wiki/$1';
$wgUsePathInfo = true;
$wgResourceBasePath = $wgScriptPath;
$wgMainPageIsDomainRoot = true;
$wgExternalLinkTarget = '_blank';

$wgLanguageCode = 'en';
$wgLocaltimezone = 'UTC';
$wgDefaultUserOptions['timecorrection'] = 'ZoneInfo|0|UTC';

$wgLogos = [
	'1x' => "$wgResourceBasePath/skins/DragonMineZ/resources/images/favicon.svg",
	'icon' => "$wgResourceBasePath/skins/DragonMineZ/resources/images/favicon.svg",
];
$wgFavicon = "$wgResourceBasePath/skins/DragonMineZ/resources/images/favicon.svg";

$wgDBtype = 'sqlite';
$wgDBname = 'dmzwiki';
$wgDBserver = '';
$wgDBuser = '';
$wgDBpassword = '';
$wgSQLiteDataDir = $dmzEnv( 'MW_DATA_DIR', '/var/www/data' );
$wgObjectCaches[CACHE_DB] = [
	'class' => SqlBagOStuff::class,
	'loggroup' => 'SQLBagOStuff',
	'server' => [
		'type' => 'sqlite',
		'dbname' => 'wikicache',
		'tablePrefix' => '',
		'variables' => [ 'synchronous' => 'NORMAL' ],
		'dbDirectory' => $wgSQLiteDataDir,
		'trxMode' => 'IMMEDIATE',
		'flags' => 0,
	],
];
$wgJobTypeConf['default'] = [
	'class' => JobQueueDB::class,
	'claimTTL' => 3600,
	'server' => [
		'type' => 'sqlite',
		'dbname' => "{$wgDBname}_jobqueue",
		'tablePrefix' => '',
		'variables' => [ 'synchronous' => 'NORMAL' ],
		'dbDirectory' => $wgSQLiteDataDir,
		'trxMode' => 'IMMEDIATE',
		'flags' => 0,
	],
];
$wgResourceLoaderUseObjectCacheForDeps = true;

$dmzAccel = function_exists( 'apcu_fetch' ) && ini_get( 'apc.enabled' );
$wgMainCacheType = $dmzAccel ? CACHE_ACCEL : CACHE_DB;
$wgMessageCacheType = $dmzAccel ? CACHE_ACCEL : CACHE_DB;
$wgParserCacheType = CACHE_DB;
$wgSessionCacheType = CACHE_DB;
$wgCacheDirectory = $dmzEnv( 'MW_CACHE_DIR', "$IP/cache" );
$wgUseFileCache = false;
$wgJobRunRate = 0;
$wgCdnServersNoPurge = [ '127.0.0.1', '::1', '10.0.0.0/8', '172.16.0.0/12', '192.168.0.0/16' ];

$wgEnableUploads = true;
$wgUploadDirectory = $dmzEnv( 'MW_UPLOAD_DIR', "$IP/images" );
$wgFileExtensions = [ 'png', 'gif', 'jpg', 'jpeg', 'webp', 'svg' ];
$wgMaxUploadSize = 20 * 1024 * 1024;
$wgUseImageMagick = $dmzFlag( 'MW_IMAGEMAGICK', true );
$wgImageMagickConvertCommand = '/usr/bin/convert';
$wgMaxShellMemory = 1048576;
$wgMaxImageArea = 25e6;
$wgSVGConverter = 'rsvg';
$wgSVGNativeRendering = true;
$wgUseInstantCommons = false;

$wgEnableEmail = (bool)$dmzEnv( 'MW_SMTP_HOST' );
$wgEnableUserEmail = false;
$wgEmailAuthentication = $wgEnableEmail;
$wgEmergencyContact = $dmzEnv( 'MW_EMAIL_FROM', 'wiki@dragonminez.com' );
$wgPasswordSender = $wgEmergencyContact;
$wgEnotifUserTalk = $wgEnableEmail;
$wgEnotifWatchlist = $wgEnableEmail;
if ( $wgEnableEmail ) {
	$wgSMTP = [
		'host' => $dmzEnv( 'MW_SMTP_HOST' ),
		'IDHost' => parse_url( $wgServer, PHP_URL_HOST ),
		'localhost' => parse_url( $wgServer, PHP_URL_HOST ),
		'port' => (int)$dmzEnv( 'MW_SMTP_PORT', '587' ),
		'auth' => true,
		'username' => $dmzEnv( 'MW_SMTP_USER' ),
		'password' => $dmzSmtpPassword ?? null,
	];
}

$wgRightsPage = '';
$wgRightsUrl = 'https://creativecommons.org/licenses/by-sa/4.0/';
$wgRightsText = 'Creative Commons Attribution-ShareAlike 4.0';
$wgRightsIcon = '';

$wgGroupPermissions['*']['createaccount'] = false;
$wgGroupPermissions['*']['autocreateaccount'] = true;
$dmzEditRights = [
	'edit', 'createpage', 'createtalk', 'minoredit', 'upload', 'reupload', 'reupload-own', 'reupload-shared',
	'move', 'movefile', 'move-subpages', 'move-categorypages', 'editsemiprotected', 'autoconfirmed', 'autopatrol',
	'applychangetags', 'changetags', 'purge', 'translate', 'translate-messagereview', 'translate-groupreview',
	'translate-import', 'pagetranslation',
];
$dmzModeratorRights = [
	'delete', 'bigdelete', 'undelete', 'deletedhistory', 'deletedtext', 'deleterevision', 'deletelogentry',
	'browsearchive', 'protect', 'editprotected',
];
foreach ( [ '*', 'user' ] as $dmzGroup ) {
	foreach ( $dmzEditRights as $dmzRight ) {
		$wgGroupPermissions[$dmzGroup][$dmzRight] = false;
	}
}
foreach ( [ 'editor', 'sysop', 'bot' ] as $dmzGroup ) {
	foreach ( $dmzEditRights as $dmzRight ) {
		$wgGroupPermissions[$dmzGroup][$dmzRight] = true;
	}
}
foreach ( $dmzModeratorRights as $dmzRight ) {
	$wgGroupPermissions['moderator'][$dmzRight] = true;
}
$wgGroupPermissions['sysop']['createaccount'] = true;
$wgGroupPermissions['sysop']['interwiki'] = true;
$wgGroupPermissions['sysop']['abusefilter-modify'] = true;
$wgGroupPermissions['sysop']['abusefilter-log-detail'] = true;
$wgGroupPermissions['sysop']['abusefilter-view-private'] = true;
$wgGroupPermissions['sysop']['abusefilter-log-private'] = true;
$wgDisableAnonTalk = true;
$wgAllowUserCss = false;
$wgAllowUserJs = false;
$wgCookiePrefix = 'dmzwiki';
$wgCookieSecure = 'detect';

$wgDefaultSkin = 'dragonminez';
wfLoadSkin( 'DragonMineZ' );
$wgHiddenPrefs[] = 'skin';
$wgDMZWebUrl = $dmzEnv( 'DMZ_WEB_URL', 'https://dragonminez.com' );
$wgDMZCookieDomain = $dmzEnv( 'DMZ_COOKIE_DOMAIN', '' );
$wgDMZLanguages = [ 'en', 'es', 'pt' ];
$wgDMZDefaultLanguage = 'en';

wfLoadExtensions( [
	'AbuseFilter',
	'CategoryTree',
	'Cite',
	'CodeEditor',
	'ImageMap',
	'InputBox',
	'Interwiki',
	'MultimediaViewer',
	'Nuke',
	'OATHAuth',
	'PageImages',
	'ParserFunctions',
	'ReplaceText',
	'Scribunto',
	'SecureLinkFixer',
	'SyntaxHighlight_GeSHi',
	'TemplateData',
	'TemplateSandbox',
	'TemplateStyles',
	'TextExtracts',
	'UniversalLanguageSelector',
	'Translate',
	'VisualEditor',
	'WikiEditor',
	'DMZAuth',
] );

$wgDMZClerkPublishableKey = trim( (string)$dmzEnv( 'PUBLIC_CLERK_PUBLISHABLE_KEY', '' ) );
$dmzClerkHost = rtrim( (string)base64_decode( (string)preg_replace( '/^pk_(live|test)_/', '', $wgDMZClerkPublishableKey ), true ), '$' );
$wgDMZClerkFrontendApi = preg_match( '/^[a-z0-9.-]+\.[a-z]{2,}$/i', $dmzClerkHost ) ? "https://$dmzClerkHost" : 'https://clerk.dragonminez.com';
$wgDMZClerkSecretKey = trim( (string)( ( $dmzClerkSecretKey ?? '' ) ?: $dmzEnv( 'CLERK_SECRET_KEY', '' ) ) );
$wgDMZDiscordGuildId = trim( (string)$dmzEnv( 'DISCORD_GUILD_ID', '1216429657273012415' ) );
$wgDMZDiscordBotToken = trim( (string)( ( $dmzDiscordBotToken ?? '' ) ?: $dmzEnv( 'DISCORD_TOKEN', '' ) ) );
$wgDMZAuthPasswordLogin = $dmzFlag( 'MW_PASSWORD_LOGIN' );

$wgPFEnableStringFunctions = true;
$wgScribuntoDefaultEngine = extension_loaded( 'luasandbox' ) ? 'luasandbox' : 'luastandalone';
$wgScribuntoUseGeSHi = true;
$wgScribuntoUseCodeEditor = true;
$wgDefaultUserOptions['usebetatoolbar'] = 1;
$wgDefaultUserOptions['visualeditor-enable'] = 1;
$wgDefaultUserOptions['visualeditor-editor'] = 'visualeditor';
$wgVisualEditorAvailableNamespaces = [ NS_MAIN => true, NS_PROJECT => true, NS_HELP => true, NS_USER => true ];
$wgTemplateStylesAllowedUrls = [];
$wgPageImagesOpenGraph = false;
$wgPageImagesOpenGraphFallbackImage = "$wgResourceBasePath/skins/DragonMineZ/resources/images/dmz-share.png";

$wgULSAnonCanChangeLanguage = false;
$wgULSIMEEnabled = false;
$wgULSWebfontsEnabled = false;
$wgULSLanguageDetection = false;
$wgULSPosition = 'interlanguage';
$wgTranslateDocumentationLanguageCode = 'qqq';
$wgExtraLanguageNames['qqq'] = 'Message documentation';
$wgTranslatePageTranslationULS = false;
$wgGroupPermissions['sysop']['translate-manage'] = true;

$wgShowExceptionDetails = $dmzFlag( 'MW_DEBUG' );
$wgDebugToolbar = false;

$dmzLocal = $dmzEnv( 'MW_LOCAL_SETTINGS', '/var/www/secrets/LocalSettings.local.php' );
if ( is_readable( $dmzLocal ) ) {
	require $dmzLocal;
}

if ( !$wgDMZAuthPasswordLogin ) {
	unset(
		$wgAuthManagerAutoConfig['primaryauth'][MediaWiki\Auth\LocalPasswordPrimaryAuthenticationProvider::class],
		$wgAuthManagerAutoConfig['primaryauth'][MediaWiki\Auth\TemporaryPasswordPrimaryAuthenticationProvider::class]
	);
	$wgPasswordResetRoutes = [ 'username' => false, 'email' => false ];
}
