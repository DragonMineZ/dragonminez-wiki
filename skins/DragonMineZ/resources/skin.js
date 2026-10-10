const prefs = require( './prefs.js' );
const header = require( './header.js' );
const dropdowns = require( './dropdowns.js' );
const search = require( './search.js' );
const sidebar = require( './sidebar.js' );
const floatingMenu = require( './floatingMenu.js' );

function wrapTables( root ) {
	root.querySelectorAll( '.mw-parser-output table.wikitable' ).forEach( ( table ) => {
		const parent = table.parentNode;
		if ( !parent || parent.classList.contains( 'dmz-table-wrap' ) ) {
			return;
		}
		const wrapper = document.createElement( 'div' );
		wrapper.className = 'dmz-table-wrap';
		if ( window.getComputedStyle( table ).float === 'right' ) {
			wrapper.classList.add( 'dmz-table-wrap--float-right' );
		}
		parent.insertBefore( wrapper, table );
		wrapper.appendChild( table );
	} );
}

function bindDruid( root ) {
	root.querySelectorAll( '.druid-container .druid-collapsible' ).forEach( ( row ) => {
		if ( row.getAttribute( 'data-dmz-bound' ) ) {
			return;
		}
		row.setAttribute( 'data-dmz-bound', '1' );
		row.addEventListener( 'click', () => {
			const section = row.getAttribute( 'data-druid-section' );
			const container = row.closest( '.druid-container' );
			const collapsed = row.classList.toggle( 'druid-collapsible-collapsed' );
			container.querySelectorAll( '[data-druid-section-row]' ).forEach( ( item ) => {
				if ( item.getAttribute( 'data-druid-section-row' ) === section ) {
					item.classList.toggle( 'druid-collapsed', collapsed );
				}
			} );
		} );
	} );
	root.querySelectorAll( '.druid-container .druid-main-images-label, .druid-container .druid-section-tab' ).forEach( ( label ) => {
		if ( label.getAttribute( 'data-dmz-bound' ) ) {
			return;
		}
		label.setAttribute( 'data-dmz-bound', '1' );
		label.addEventListener( 'click', () => {
			const key = label.getAttribute( 'data-druid' );
			if ( !key ) {
				return;
			}
			const prefix = key.split( '-' )[ 0 ] + '-';
			const container = label.closest( '.druid-container' );
			container.querySelectorAll( '[data-druid]' ).forEach( ( item ) => {
				const value = item.getAttribute( 'data-druid' );
				if ( value.indexOf( prefix ) === 0 ) {
					item.classList.toggle( 'focused', value === key );
				}
			} );
		} );
	} );
}

function markActiveSidebar() {
	const languages = mw.config.get( 'wgDMZLanguages' ) || [];
	const prefix = mw.config.get( 'wgArticlePath' ).replace( '$1', '' );
	let current = mw.config.get( 'wgPageName' );
	const match = /^(.*)\/([^/]+)$/.exec( current );
	if ( match && languages.indexOf( match[ 2 ] ) !== -1 ) {
		current = match[ 1 ];
	}
	document.querySelectorAll( '.dmz-portlet li > a' ).forEach( ( link ) => {
		let href = link.getAttribute( 'href' ) || '';
		if ( href.indexOf( prefix ) !== 0 ) {
			return;
		}
		try {
			href = decodeURIComponent( href.slice( prefix.length ).split( /[?#]/ )[ 0 ] );
		} catch ( e ) {
			return;
		}
		href = href.replace( /^Special:MyLanguage\//, '' );
		if ( href === current ) {
			link.parentNode.classList.add( 'is-active' );
		}
	} );
}

function init() {
	header.init();
	dropdowns.init();
	search.init();
	sidebar.init();
	floatingMenu.init();
	markActiveSidebar();
	prefs.showPendingToast();
	mw.hook( 'wikipage.content' ).add( ( $content ) => {
		const root = $content && $content[ 0 ] ? $content[ 0 ] : document;
		wrapTables( root );
		bindDruid( root );
	} );
}

if ( document.readyState === 'loading' ) {
	document.addEventListener( 'DOMContentLoaded', init );
} else {
	init();
}
