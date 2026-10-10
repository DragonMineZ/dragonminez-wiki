const COOKIE_THEME = 'dmz_theme';
const COOKIE_LANG = 'dmz_lang';
const TOAST_KEY = 'dmz-lang-toast';
const ONE_YEAR = 31536000;

function setCookie( name, value ) {
	const domain = mw.config.get( 'wgDMZCookieDomain' );
	let cookie = name + '=' + encodeURIComponent( value ) + '; Path=/; Max-Age=' + ONE_YEAR + '; SameSite=Lax';
	if ( domain ) {
		cookie += '; Domain=' + domain;
	}
	if ( location.protocol === 'https:' ) {
		cookie += '; Secure';
	}
	document.cookie = cookie;
}

function store( key, value ) {
	try {
		localStorage.setItem( key, value );
	} catch ( e ) {}
}

function isDark() {
	return document.documentElement.classList.contains( 'dark' );
}

function setTheme( dark ) {
	const root = document.documentElement;
	root.classList.toggle( 'dark', dark );
	root.classList.toggle( 'skin-theme-clientpref-night', dark );
	root.classList.toggle( 'skin-theme-clientpref-day', !dark );
	const meta = document.querySelector( 'meta[name="theme-color"]' );
	if ( meta ) {
		meta.setAttribute( 'content', dark ? '#0a0a0b' : '#f9fafb' );
	}
	setCookie( COOKIE_THEME, dark ? 'dark' : 'light' );
	store( 'theme', dark ? 'dark' : 'light' );
}

function setLanguage( code ) {
	setCookie( COOKIE_LANG, code );
	store( 'dragonminez_lang', code );
	try {
		sessionStorage.setItem( TOAST_KEY, '1' );
	} catch ( e ) {}
}

let toastTimer = null;

function showToast( text ) {
	const toast = document.getElementById( 'dmz-toast' );
	if ( !toast ) {
		return;
	}
	const label = toast.querySelector( '[data-dmz-toast-text]' );
	if ( label ) {
		label.textContent = text;
	}
	toast.hidden = false;
	clearTimeout( toastTimer );
	toastTimer = setTimeout( () => {
		toast.hidden = true;
	}, 2000 );
}

function showPendingToast() {
	let pending = false;
	try {
		pending = sessionStorage.getItem( TOAST_KEY ) === '1';
		sessionStorage.removeItem( TOAST_KEY );
	} catch ( e ) {}
	if ( pending ) {
		showToast( mw.msg( 'dmz-language-success' ) );
	}
}

module.exports = {
	isDark,
	setTheme,
	setLanguage,
	showToast,
	showPendingToast
};
