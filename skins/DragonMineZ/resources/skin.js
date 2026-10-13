const prefs = require( './prefs.js' );
const header = require( './header.js' );
const dropdowns = require( './dropdowns.js' );
const search = require( './search.js' );
const sidebar = require( './sidebar.js' );
const floatingMenu = require( './floatingMenu.js' );
const finder = require( './finder.js' );

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

function bindTabStrips( root ) {
	root.querySelectorAll( '.druid-container .druid-tabs' ).forEach( ( strip ) => {
		if ( strip.parentNode.classList.contains( 'dmz-tabstrip' ) ) {
			return;
		}
		const wrapper = document.createElement( 'div' );
		wrapper.className = 'dmz-tabstrip';
		strip.parentNode.insertBefore( wrapper, strip );
		wrapper.appendChild( strip );
		strip.setAttribute( 'role', 'tablist' );
		const tabs = Array.prototype.slice.call( strip.querySelectorAll( '.druid-tab' ) );
		const update = () => {
			const max = strip.scrollWidth - strip.clientWidth;
			wrapper.classList.toggle( 'can-prev', strip.scrollLeft > 1 );
			wrapper.classList.toggle( 'can-next', strip.scrollLeft < max - 1 );
		};
		const select = () => {
			tabs.forEach( ( tab ) => {
				tab.setAttribute( 'aria-selected', tab.classList.contains( 'focused' ) ? 'true' : 'false' );
			} );
		};
		[ -1, 1 ].forEach( ( direction ) => {
			const button = document.createElement( 'button' );
			button.type = 'button';
			button.className = 'dmz-tabstrip__arrow dmz-tabstrip__arrow--' + ( direction < 0 ? 'prev' : 'next' );
			button.tabIndex = -1;
			button.setAttribute( 'aria-hidden', 'true' );
			button.addEventListener( 'click', () => {
				strip.scrollBy( { left: direction * strip.clientWidth * 0.7, behavior: 'smooth' } );
			} );
			wrapper.appendChild( button );
		} );
		tabs.forEach( ( tab ) => {
			tab.setAttribute( 'role', 'tab' );
			tab.tabIndex = 0;
			tab.addEventListener( 'keydown', ( event ) => {
				if ( event.key === 'Enter' || event.key === ' ' ) {
					event.preventDefault();
					tab.click();
				}
			} );
			tab.addEventListener( 'click', () => {
				select();
				const left = tab.offsetLeft - strip.offsetLeft;
				if ( left < strip.scrollLeft || left + tab.offsetWidth > strip.scrollLeft + strip.clientWidth ) {
					strip.scrollTo( { left: left - ( strip.clientWidth - tab.offsetWidth ) / 2, behavior: 'smooth' } );
				}
			} );
		} );
		strip.addEventListener( 'scroll', update, { passive: true } );
		window.addEventListener( 'resize', update );
		select();
		update();
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

function bindLanguagePills() {
	document.querySelectorAll( '.dmz-lang-pill[data-dmz-lang][href]' ).forEach( ( pill ) => {
		pill.addEventListener( 'click', ( event ) => {
			if ( event.button !== 0 || event.ctrlKey || event.metaKey || event.shiftKey || event.altKey ) {
				return;
			}
			event.preventDefault();
			prefs.setLanguage( pill.getAttribute( 'data-dmz-lang' ) );
			const url = new URL( pill.href, location.href );
			url.searchParams.delete( 'dmzlang' );
			location.href = url.toString();
		} );
	} );
}

function init() {
	header.init();
	dropdowns.init();
	bindLanguagePills();
	search.init();
	sidebar.init();
	floatingMenu.init();
	finder.init();
	markActiveSidebar();
	prefs.showPendingToast();
	mw.hook( 'wikipage.content' ).add( ( $content ) => {
		const root = $content && $content[ 0 ] ? $content[ 0 ] : document;
		wrapTables( root );
		bindDruid( root );
		bindTabStrips( root );
	} );
}

if ( document.readyState === 'loading' ) {
	document.addEventListener( 'DOMContentLoaded', init );
} else {
	init();
}
