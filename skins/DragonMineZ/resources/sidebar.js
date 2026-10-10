const STATE_COOKIE = 'dmz_sidebar';
const HIDDEN_COOKIE = 'dmz_sidebar_hidden';
const ONE_YEAR = 31536000;

function writeCookie( name, value ) {
	const secure = location.protocol === 'https:' ? '; Secure' : '';
	document.cookie = name + '=' + encodeURIComponent( value ) + '; Path=/; Max-Age=' + ONE_YEAR + '; SameSite=Lax' + secure;
}

function readState() {
	const match = document.cookie.match( /(?:^|;\s*)dmz_sidebar=([^;]*)/ );
	const state = {};
	if ( !match ) {
		return state;
	}
	decodeURIComponent( match[ 1 ] ).split( '~' ).forEach( ( pair ) => {
		const parts = /^([A-Za-z0-9_.-]+)\.([01])$/.exec( pair );
		if ( parts ) {
			state[ parts[ 1 ] ] = parts[ 2 ];
		}
	} );
	return state;
}

function saveState( state ) {
	const value = Object.keys( state ).map( ( id ) => id + '.' + state[ id ] ).join( '~' );
	writeCookie( STATE_COOKIE, value );
}

function init() {
	const portlets = document.querySelectorAll( '.dmz-portlet[id]' );
	portlets.forEach( ( portlet ) => {
		portlet.addEventListener( 'toggle', () => {
			const state = readState();
			state[ portlet.id ] = portlet.open ? '1' : '0';
			saveState( state );
		} );
	} );

	const shell = document.getElementById( 'dmz-shell' );
	const toggle = document.getElementById( 'dmz-sidebar-toggle' );
	if ( shell && toggle ) {
		const sync = () => {
			const hidden = shell.classList.contains( 'is-sidebar-collapsed' );
			toggle.setAttribute( 'aria-expanded', String( !hidden ) );
		};
		toggle.addEventListener( 'click', () => {
			const hidden = shell.classList.toggle( 'is-sidebar-collapsed' );
			writeCookie( HIDDEN_COOKIE, hidden ? '1' : '0' );
			sync();
		} );
		sync();
	}
}

module.exports = { init };
