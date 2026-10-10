const DEBOUNCE_MS = 140;
const MAX_RESULTS = 8;
const LANGUAGE_NAMES = { en: 'English', es: 'Español', pt: 'Português' };

function el( tag, className, text ) {
	const node = document.createElement( tag );
	if ( className ) {
		node.className = className;
	}
	if ( text !== undefined ) {
		node.textContent = text;
	}
	return node;
}

function icon( name ) {
	const node = el( 'span', 'material-symbols-rounded', name );
	node.setAttribute( 'aria-hidden', 'true' );
	return node;
}

function splitLanguage( key, languages ) {
	const match = /^(.*)\/([^/]+)$/.exec( key );
	if ( match && languages.indexOf( match[ 2 ] ) !== -1 ) {
		return { base: match[ 1 ], code: match[ 2 ] };
	}
	return { base: key, code: null };
}

function groupByLanguage( pages ) {
	const languages = mw.config.get( 'wgDMZLanguages' ) || [];
	const source = languages[ 0 ] || 'en';
	const reader = mw.config.get( 'wgUserLanguage' );
	const groups = [];
	const index = {};
	pages.forEach( ( page ) => {
		const key = page.key || String( page.title ).replace( / /g, '_' );
		const parts = splitLanguage( key, languages );
		const code = parts.code || source;
		if ( !( parts.base in index ) ) {
			index[ parts.base ] = groups.length;
			groups.push( { base: parts.base, variants: {} } );
		}
		groups[ index[ parts.base ] ].variants[ code ] = page;
	} );
	return groups.slice( 0, MAX_RESULTS ).map( ( group ) => {
		const code = group.variants[ reader ] ? reader :
			( group.variants[ source ] ? source : Object.keys( group.variants )[ 0 ] );
		return { base: group.base, code, page: group.variants[ code ], isTranslation: code !== source };
	} );
}

function attach( input, results ) {
	const restUrl = mw.util.wikiScript( 'rest' ) + '/v1/search/title';
	let timer = null;
	let controller = null;
	let active = -1;

	const options = () => Array.prototype.slice.call( results.querySelectorAll( '.dmz-search__result' ) );

	const setActive = ( index ) => {
		const items = options();
		active = items.length ? ( index + items.length ) % items.length : -1;
		items.forEach( ( item, i ) => {
			item.classList.toggle( 'is-active', i === active );
			item.setAttribute( 'aria-selected', String( i === active ) );
		} );
		if ( active >= 0 ) {
			items[ active ].scrollIntoView( { block: 'nearest' } );
		}
	};

	const row = ( href, iconName, title, caption, thumb ) => {
		const link = el( 'a', 'dmz-search__result' );
		link.href = href;
		link.setAttribute( 'role', 'option' );
		const box = el( 'span', 'dmz-search__thumb' );
		if ( thumb ) {
			const img = el( 'img' );
			img.src = thumb;
			img.alt = '';
			img.loading = 'lazy';
			box.appendChild( img );
		} else {
			box.appendChild( icon( iconName ) );
		}
		const text = el( 'span', 'dmz-search__text' );
		text.appendChild( el( 'span', 'dmz-search__title', title ) );
		if ( caption ) {
			text.appendChild( el( 'span', 'dmz-search__desc', caption ) );
		}
		link.appendChild( box );
		link.appendChild( text );
		link.appendChild( el( 'span', 'material-symbols-rounded dmz-search__arrow', 'chevron_right' ) );
		return link;
	};

	const render = ( query, entries ) => {
		results.textContent = '';
		active = -1;
		entries.forEach( ( entry ) => {
			const caption = entry.page.description ||
				( entry.isTranslation ? LANGUAGE_NAMES[ entry.code ] || entry.code : '' );
			const thumb = entry.page.thumbnail && entry.page.thumbnail.url;
			results.appendChild( row( mw.util.getUrl( entry.page.key ), 'article', entry.base.replace( /_/g, ' ' ), caption, thumb ) );
		} );
		if ( !entries.length ) {
			results.appendChild( el( 'div', 'dmz-search__empty', mw.msg( 'dmz-search-empty', query ) ) );
		}
		results.appendChild( row(
			mw.util.getUrl( 'Special:Search', { search: query, fulltext: '1' } ),
			'search',
			mw.msg( 'dmz-search-fulltext', query ),
			'',
			null
		) );
		results.hidden = false;
	};

	const query = ( value ) => {
		if ( controller ) {
			controller.abort();
		}
		controller = new AbortController();
		const url = restUrl + '?' + new URLSearchParams( { q: value, limit: '24' } ).toString();
		fetch( url, { signal: controller.signal, headers: { Accept: 'application/json' } } )
			.then( ( response ) => response.ok ? response.json() : { pages: [] } )
			.then( ( data ) => render( value, groupByLanguage( data.pages || [] ) ) )
			.catch( ( error ) => {
				if ( error.name !== 'AbortError' ) {
					render( value, [] );
				}
			} );
	};

	const hide = () => {
		results.hidden = true;
	};

	const update = () => {
		const value = input.value.trim();
		clearTimeout( timer );
		if ( !value ) {
			results.textContent = '';
			hide();
			return;
		}
		timer = setTimeout( () => query( value ), DEBOUNCE_MS );
	};

	input.addEventListener( 'input', update );
	input.addEventListener( 'focus', () => {
		if ( input.value.trim() && results.childElementCount ) {
			results.hidden = false;
		}
	} );
	input.addEventListener( 'keydown', ( e ) => {
		if ( e.key === 'ArrowDown' ) {
			e.preventDefault();
			setActive( active + 1 );
		} else if ( e.key === 'ArrowUp' ) {
			e.preventDefault();
			setActive( active - 1 );
		} else if ( e.key === 'Enter' && active >= 0 ) {
			e.preventDefault();
			window.location.href = options()[ active ].href;
		} else if ( e.key === 'Escape' ) {
			hide();
			input.blur();
		}
	} );

	return { update, hide };
}

function initHeader() {
	const form = document.querySelector( '.dmz-header-search' );
	if ( !form ) {
		return null;
	}
	const input = form.querySelector( '[data-dmz-search-input]' );
	const results = form.querySelector( '[data-dmz-search-results]' );
	const handle = attach( input, results );
	document.addEventListener( 'mousedown', ( e ) => {
		if ( !form.contains( e.target ) ) {
			handle.hide();
		}
	} );
	return { form, input };
}

function initOverlay() {
	const root = document.getElementById( 'dmz-search' );
	const input = document.getElementById( 'dmz-search-input' );
	const results = document.getElementById( 'dmz-search-results' );
	if ( !root || !input || !results ) {
		return null;
	}
	const searchIcon = root.querySelector( '[data-dmz-search-icon]' );
	const clear = root.querySelector( '[data-dmz-search-clear]' );
	const handle = attach( input, results );
	let lastFocus = null;

	const syncSide = () => {
		const has = input.value.trim() !== '';
		if ( searchIcon ) {
			searchIcon.hidden = has;
		}
		if ( clear ) {
			clear.hidden = !has;
		}
	};

	const open = () => {
		lastFocus = document.activeElement;
		root.hidden = false;
		document.documentElement.classList.add( 'dmz-search-open' );
		window.requestAnimationFrame( () => {
			input.focus();
			input.select();
		} );
	};

	const close = () => {
		root.hidden = true;
		document.documentElement.classList.remove( 'dmz-search-open' );
		if ( lastFocus && typeof lastFocus.focus === 'function' ) {
			lastFocus.focus();
		}
	};

	input.addEventListener( 'input', syncSide );
	root.querySelectorAll( '[data-dmz-search-close]' ).forEach( ( node ) => node.addEventListener( 'click', close ) );
	if ( clear ) {
		clear.addEventListener( 'click', () => {
			input.value = '';
			syncSide();
			handle.update();
			input.focus();
		} );
	}
	document.addEventListener( 'keydown', ( e ) => {
		if ( e.key === 'Escape' && !root.hidden ) {
			close();
		}
	} );
	return { open };
}

function init() {
	const header = initHeader();
	const overlay = initOverlay();
	const headerVisible = () => header && header.form.offsetParent !== null;

	document.querySelectorAll( '[data-dmz-search-open]' ).forEach( ( button ) => {
		button.addEventListener( 'click', ( e ) => {
			e.preventDefault();
			if ( headerVisible() ) {
				header.input.focus();
				window.scrollTo( { top: 0, behavior: 'smooth' } );
			} else if ( overlay ) {
				overlay.open();
			}
		} );
	} );

	document.addEventListener( 'keydown', ( e ) => {
		const target = e.target;
		const typing = target && ( target.isContentEditable || /^(INPUT|TEXTAREA|SELECT)$/.test( target.tagName ) );
		const shortcut = e.key === '/' || ( ( e.ctrlKey || e.metaKey ) && String( e.key ).toLowerCase() === 'k' );
		if ( typing || !shortcut ) {
			return;
		}
		e.preventDefault();
		if ( headerVisible() ) {
			header.input.focus();
			header.input.select();
		} else if ( overlay ) {
			overlay.open();
		}
	} );
}

module.exports = { init };
