const DESKTOP = '(min-width: 1024px)';

function relocateSidebar() {
	const inner = document.getElementById( 'dmz-sidebar-inner' );
	const target = document.getElementById( 'dmz-nav-wiki' );
	if ( !inner || !target ) {
		return;
	}
	const home = inner.parentNode;
	const media = window.matchMedia( DESKTOP );
	const apply = () => {
		if ( media.matches ) {
			if ( inner.parentNode !== home ) {
				home.appendChild( inner );
			}
		} else if ( inner.parentNode !== target ) {
			target.appendChild( inner );
		}
	};
	media.addEventListener( 'change', apply );
	apply();
}

function init() {
	const header = document.getElementById( 'dmz-header' );
	if ( !header ) {
		return;
	}
	const button = document.getElementById( 'dmz-menu-button' );
	let open = false;
	let ticking = false;

	const update = () => {
		header.classList.toggle( 'is-scrolled', !open && window.scrollY > 10 );
		ticking = false;
	};

	window.addEventListener( 'scroll', () => {
		if ( !ticking ) {
			ticking = true;
			window.requestAnimationFrame( update );
		}
	}, { passive: true } );
	update();

	if ( button ) {
		const icon = button.querySelector( '.material-symbols-rounded' );
		const setOpen = ( value ) => {
			open = value;
			header.classList.toggle( 'is-menu-open', open );
			button.setAttribute( 'aria-expanded', String( open ) );
			if ( icon ) {
				icon.textContent = open ? 'close' : 'menu';
			}
			document.body.style.overflow = open ? 'hidden' : '';
			update();
		};
		button.addEventListener( 'click', () => setOpen( !open ) );
		document.addEventListener( 'keydown', ( e ) => {
			if ( e.key === 'Escape' && open ) {
				setOpen( false );
			}
		} );
		window.matchMedia( DESKTOP ).addEventListener( 'change', ( e ) => {
			if ( e.matches && open ) {
				setOpen( false );
			}
		} );
	}

	relocateSidebar();
}

module.exports = { init };
