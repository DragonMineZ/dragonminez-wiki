function parts( dropdown ) {
	return {
		toggle: dropdown.querySelector( '[data-dmz-dropdown-toggle]' ),
		panel: dropdown.querySelector( '[data-dmz-dropdown-panel]' )
	};
}

function setOpen( dropdown, open ) {
	const { toggle, panel } = parts( dropdown );
	if ( !toggle || !panel ) {
		return;
	}
	toggle.setAttribute( 'aria-expanded', String( open ) );
	panel.hidden = !open;
	dropdown.classList.toggle( 'is-open', open );
}

function init() {
	const dropdowns = Array.prototype.slice.call( document.querySelectorAll( '[data-dmz-dropdown]' ) );
	if ( !dropdowns.length ) {
		return;
	}
	const closeAll = ( except ) => dropdowns.forEach( ( d ) => {
		if ( d !== except ) {
			setOpen( d, false );
		}
	} );

	dropdowns.forEach( ( dropdown ) => {
		const { toggle } = parts( dropdown );
		if ( !toggle ) {
			return;
		}
		toggle.addEventListener( 'click', ( e ) => {
			e.preventDefault();
			const open = toggle.getAttribute( 'aria-expanded' ) !== 'true';
			closeAll( dropdown );
			setOpen( dropdown, open );
		} );
	} );

	document.addEventListener( 'mousedown', ( e ) => {
		dropdowns.forEach( ( d ) => {
			if ( !d.contains( e.target ) ) {
				setOpen( d, false );
			}
		} );
	} );

	document.addEventListener( 'keydown', ( e ) => {
		if ( e.key === 'Escape' ) {
			closeAll( null );
		}
	} );
}

module.exports = { init };
