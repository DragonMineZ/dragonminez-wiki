const MAX_RESULTS = 10;
const VALID_ID = /^[a-z0-9_.-]+:[a-z0-9_./-]+$/;

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

function normalize( text ) {
	return String( text ).normalize( 'NFD' ).replace( /[̀-ͯ]/g, '' ).toLowerCase();
}

function iconUrl( file ) {
	return mw.util.getUrl( 'Special:Redirect/file/' + file );
}

function setup( root ) {
	if ( root.getAttribute( 'data-dmz-bound' ) ) {
		return;
	}
	root.setAttribute( 'data-dmz-bound', '1' );
	let items = [];
	try {
		items = JSON.parse( root.getAttribute( 'data-items' ) || '[]' );
	} catch ( e ) {
		items = [];
	}
	const index = items.map( ( item ) => ( {
		item,
		name: normalize( item.name ),
		key: normalize( item.name + ' ' + item.en + ' ' + item.id )
	} ) );
	const byId = {};
	items.forEach( ( item ) => {
		byId[ item.id ] = item;
	} );

	const box = el( 'div', 'dmz-finder__box' );
	const searchIcon = el( 'span', 'material-symbols-rounded dmz-finder__icon', 'search' );
	searchIcon.setAttribute( 'aria-hidden', 'true' );
	const input = el( 'input', 'dmz-finder__input' );
	const listId = 'dmz-finder-results';
	input.type = 'search';
	input.autocomplete = 'off';
	input.placeholder = mw.msg( 'dmz-finder-placeholder' );
	input.setAttribute( 'aria-label', mw.msg( 'dmz-finder-placeholder' ) );
	input.setAttribute( 'role', 'combobox' );
	input.setAttribute( 'aria-autocomplete', 'list' );
	input.setAttribute( 'aria-expanded', 'false' );
	input.setAttribute( 'aria-controls', listId );
	const list = el( 'ul', 'dmz-finder__results' );
	list.id = listId;
	list.setAttribute( 'role', 'listbox' );
	list.hidden = true;
	const output = el( 'div', 'dmz-finder__output' );
	output.setAttribute( 'aria-live', 'polite' );
	box.append( searchIcon, input, list );
	root.append( box, output );

	let matches = [];
	let active = -1;
	let request = null;

	function highlight( index ) {
		const options = list.querySelectorAll( '.dmz-finder__option' );
		options.forEach( ( option, i ) => {
			option.classList.toggle( 'is-active', i === index );
			option.setAttribute( 'aria-selected', i === index ? 'true' : 'false' );
		} );
		active = index;
		if ( index >= 0 && options[ index ] ) {
			input.setAttribute( 'aria-activedescendant', options[ index ].id );
			options[ index ].scrollIntoView( { block: 'nearest' } );
		} else {
			input.removeAttribute( 'aria-activedescendant' );
		}
	}

	function show( found ) {
		matches = found;
		list.textContent = '';
		found.forEach( ( entry, i ) => {
			const option = el( 'li', 'dmz-finder__option' );
			option.id = listId + '-' + i;
			option.setAttribute( 'role', 'option' );
			const img = el( 'img', 'dmz-finder__thumb' );
			img.src = iconUrl( entry.item.icon );
			img.alt = '';
			img.width = 32;
			img.height = 32;
			option.append( img, el( 'span', 'dmz-finder__name', entry.item.name ) );
			option.addEventListener( 'mousedown', ( event ) => {
				event.preventDefault();
				choose( entry.item );
			} );
			list.appendChild( option );
		} );
		if ( !found.length && input.value.trim() ) {
			list.appendChild( el( 'li', 'dmz-finder__empty', mw.msg( 'dmz-finder-empty' ) ) );
		}
		list.hidden = !list.childNodes.length;
		input.setAttribute( 'aria-expanded', list.hidden ? 'false' : 'true' );
		highlight( found.length ? 0 : -1 );
	}

	function search() {
		const query = normalize( input.value.trim() );
		if ( !query ) {
			show( [] );
			return;
		}
		const words = query.split( /\s+/ );
		const found = index.filter( ( entry ) => words.every( ( word ) => entry.key.indexOf( word ) !== -1 ) );
		found.sort( ( a, b ) => {
			const ra = a.name.indexOf( query ) === 0 ? 0 : 1;
			const rb = b.name.indexOf( query ) === 0 ? 0 : 1;
			return ra - rb || a.name.localeCompare( b.name );
		} );
		show( found.slice( 0, MAX_RESULTS ) );
	}

	function load( id ) {
		if ( !VALID_ID.test( id ) ) {
			return;
		}
		if ( request && request.abort ) {
			request.abort();
		}
		output.classList.add( 'is-loading' );
		output.textContent = mw.msg( 'dmz-finder-loading' );
		request = new mw.Api().get( {
			action: 'parse',
			title: mw.config.get( 'wgPageName' ),
			text: '{{#invoke:Recipes|tree|' + id + '}}',
			contentmodel: 'wikitext',
			prop: 'text',
			disablelimitreport: 1,
			disableeditsection: 1,
			formatversion: 2
		} );
		request.then( ( result ) => {
			output.classList.remove( 'is-loading' );
			output.innerHTML = result.parse.text;
			mw.hook( 'wikipage.content' ).fire( $( output ) );
		}, ( code, details ) => {
			if ( details && details.textStatus === 'abort' ) {
				return;
			}
			output.classList.remove( 'is-loading' );
			output.textContent = mw.msg( 'dmz-finder-error' );
		} );
	}

	function choose( item ) {
		input.value = item.name;
		show( [] );
		list.hidden = true;
		input.setAttribute( 'aria-expanded', 'false' );
		load( item.id );
		if ( window.history && window.history.replaceState ) {
			window.history.replaceState( null, '', '#' + encodeURIComponent( item.id ) );
		}
	}

	input.addEventListener( 'input', search );
	input.addEventListener( 'focus', () => {
		if ( input.value.trim() ) {
			search();
		}
	} );
	input.addEventListener( 'blur', () => {
		list.hidden = true;
		input.setAttribute( 'aria-expanded', 'false' );
	} );
	input.addEventListener( 'keydown', ( event ) => {
		if ( event.key === 'ArrowDown' && matches.length ) {
			event.preventDefault();
			highlight( ( active + 1 ) % matches.length );
		} else if ( event.key === 'ArrowUp' && matches.length ) {
			event.preventDefault();
			highlight( ( active - 1 + matches.length ) % matches.length );
		} else if ( event.key === 'Enter' && active >= 0 && matches[ active ] ) {
			event.preventDefault();
			choose( matches[ active ].item );
		} else if ( event.key === 'Escape' ) {
			list.hidden = true;
			input.setAttribute( 'aria-expanded', 'false' );
		}
	} );

	const initial = decodeURIComponent( window.location.hash.slice( 1 ) );
	if ( byId[ initial ] ) {
		choose( byId[ initial ] );
	}
}

module.exports = {
	init() {
		document.querySelectorAll( '.dmz-finder' ).forEach( setup );
		mw.hook( 'wikipage.content' ).add( ( $content ) => {
			const root = $content && $content[ 0 ] ? $content[ 0 ] : document;
			root.querySelectorAll( '.dmz-finder' ).forEach( setup );
		} );
	}
};
