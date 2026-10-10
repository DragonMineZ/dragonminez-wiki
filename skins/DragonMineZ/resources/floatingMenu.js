const prefs = require( './prefs.js' );

function init() {
	const fab = document.getElementById( 'dmz-fab' );
	if ( !fab ) {
		return;
	}
	const toggle = document.getElementById( 'dmz-fab-toggle' );
	const tooltip = fab.querySelector( '[data-dmz-fab-tooltip]' );
	const themeButton = document.getElementById( 'dmz-theme-toggle' );
	const themeIcon = fab.querySelector( '[data-dmz-theme-icon]' );
	const themeTooltip = fab.querySelector( '[data-dmz-theme-tooltip]' );
	const langButton = document.getElementById( 'dmz-lang-toggle' );
	const flags = document.getElementById( 'dmz-fab-flags' );
	let open = false;

	const setFlags = ( value ) => {
		if ( !flags || !langButton ) {
			return;
		}
		flags.classList.toggle( 'is-open', value );
		langButton.setAttribute( 'aria-expanded', String( value ) );
	};

	const setOpen = ( value ) => {
		open = value;
		fab.classList.toggle( 'is-open', open );
		toggle.classList.toggle( 'is-active', open );
		toggle.setAttribute( 'aria-expanded', String( open ) );
		const label = mw.msg( open ? 'dmz-menu-close' : 'dmz-menu-options' );
		toggle.setAttribute( 'aria-label', label );
		if ( tooltip ) {
			tooltip.textContent = label;
		}
		if ( !open ) {
			setFlags( false );
		}
	};

	const syncTheme = () => {
		const dark = prefs.isDark();
		const label = mw.msg( dark ? 'dmz-theme-light' : 'dmz-theme-dark' );
		if ( themeIcon ) {
			themeIcon.textContent = dark ? 'light_mode' : 'dark_mode';
		}
		if ( themeTooltip ) {
			themeTooltip.textContent = label;
		}
		if ( themeButton ) {
			themeButton.setAttribute( 'aria-label', label );
		}
	};

	toggle.addEventListener( 'click', () => setOpen( !open ) );

	if ( themeButton ) {
		themeButton.addEventListener( 'click', () => {
			prefs.setTheme( !prefs.isDark() );
			syncTheme();
		} );
	}

	if ( langButton && flags ) {
		langButton.addEventListener( 'click', () => setFlags( !flags.classList.contains( 'is-open' ) ) );
		flags.querySelectorAll( '[data-dmz-lang]' ).forEach( ( button ) => {
			button.addEventListener( 'click', () => {
				if ( button.classList.contains( 'is-active' ) ) {
					setFlags( false );
					return;
				}
				const code = button.getAttribute( 'data-dmz-lang' );
				prefs.setLanguage( code );
				const translations = mw.config.get( 'wgDMZTranslations' );
				const target = translations && translations[ code ];
				if ( target && target !== location.pathname ) {
					location.href = target;
				} else {
					location.reload();
				}
			} );
		} );
	}

	document.addEventListener( 'mousedown', ( e ) => {
		if ( open && !fab.contains( e.target ) ) {
			setOpen( false );
		}
	} );

	syncTheme();
}

module.exports = { init };
