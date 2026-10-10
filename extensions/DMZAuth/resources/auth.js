const config = mw.config.get( 'wgDMZAuth' ) || {};
const PENDING = 'dmzauth-pending';
let clerkPromise = null;
let dialog = null;

function readPending() {
	try {
		return JSON.parse( sessionStorage.getItem( PENDING ) || 'null' );
	} catch ( e ) {
		return null;
	}
}

function writePending( value ) {
	try {
		if ( value ) {
			sessionStorage.setItem( PENDING, JSON.stringify( value ) );
		} else {
			sessionStorage.removeItem( PENDING );
		}
	} catch ( e ) {}
}

function isDark() {
	return document.documentElement.classList.contains( 'dark' );
}

function appearance() {
	const dark = isDark();
	return {
		variables: {
			colorPrimary: dark ? '#ffffff' : '#0a0a0b',
			colorTextOnPrimaryBackground: dark ? '#0a0a0b' : '#ffffff',
			colorBackground: dark ? '#141416' : '#ffffff',
			colorText: dark ? '#ffffff' : '#0a0a0b',
			colorTextSecondary: dark ? 'rgba(255,255,255,0.65)' : 'rgba(10,10,11,0.65)',
			colorInputBackground: dark ? '#1c1c1f' : '#f4f4f5',
			colorInputText: dark ? '#ffffff' : '#0a0a0b',
			colorNeutral: dark ? '#ffffff' : '#0a0a0b',
			borderRadius: '14px',
			fontFamily: getComputedStyle( document.body ).fontFamily
		}
	};
}

function loadClerk() {
	if ( !clerkPromise ) {
		clerkPromise = new Promise( ( resolve, reject ) => {
			if ( window.Clerk ) {
				resolve( window.Clerk );
				return;
			}
			const script = document.createElement( 'script' );
			script.async = true;
			script.crossOrigin = 'anonymous';
			script.setAttribute( 'data-clerk-publishable-key', config.publishableKey );
			script.src = config.frontendApi + '/npm/@clerk/clerk-js@5/dist/clerk.browser.js';
			script.addEventListener( 'load', () => ( window.Clerk ? resolve( window.Clerk ) : reject( new Error( 'clerk' ) ) ) );
			script.addEventListener( 'error', () => reject( new Error( 'clerk' ) ) );
			document.head.appendChild( script );
		} ).then( ( clerk ) => clerk.load( { appearance: appearance() } ).then( () => clerk ) );
		clerkPromise.catch( () => {
			clerkPromise = null;
		} );
	}
	return clerkPromise;
}

function destination( pending ) {
	if ( pending && pending.next ) {
		return pending.next;
	}
	const returnTo = mw.util.getParamValue( 'returnto' );
	if ( returnTo ) {
		const query = mw.util.getParamValue( 'returntoquery' );
		return mw.util.getUrl( returnTo ) + ( query ? '?' + query : '' );
	}
	if ( mw.config.get( 'wgCanonicalSpecialPageName' ) === 'Userlogin' ) {
		return mw.util.getUrl( mw.config.get( 'wgMainPageTitle' ) );
	}
	return location.href;
}

async function exchange( clerk, view ) {
	view.busy( mw.msg( 'dmzauth-signing-in' ) );
	const pending = readPending();
	writePending( null );
	try {
		const api = new mw.Api();
		const token = await clerk.session.getToken();
		const loginToken = await api.getToken( 'login' );
		const data = await api.post( {
			action: 'clientlogin',
			loginreturnurl: location.href,
			logintoken: loginToken,
			dmzclerktoken: token,
			rememberMe: 1,
			uselang: mw.config.get( 'wgUserLanguage' )
		} );
		const result = data.clientlogin || {};
		if ( result.status === 'PASS' ) {
			location.href = destination( pending );
			return;
		}
		view.fail( result.message || mw.msg( 'dmzauth-error' ), true );
	} catch ( e ) {
		view.fail( mw.msg( 'dmzauth-error' ), false );
	}
}

async function signIn( view, next ) {
	if ( !config.configured ) {
		view.fail( mw.msg( 'dmzauth-not-configured' ), false );
		return;
	}
	view.busy( mw.msg( 'dmzauth-signing-in' ) );
	let clerk;
	try {
		clerk = await loadClerk();
	} catch ( e ) {
		view.fail( mw.msg( 'dmzauth-error' ), false );
		return;
	}
	writePending( { next: next || null } );
	if ( clerk.user ) {
		exchange( clerk, view );
		return;
	}
	view.idle();
	const stop = clerk.addListener( ( state ) => {
		if ( state.user && state.session ) {
			if ( typeof stop === 'function' ) {
				stop();
			}
			clerk.closeSignIn();
			exchange( clerk, view );
		}
	} );
	clerk.openSignIn( {
		appearance: appearance(),
		forceRedirectUrl: location.href,
		signUpForceRedirectUrl: location.href
	} );
}

async function useOtherAccount( view ) {
	try {
		const clerk = await loadClerk();
		await clerk.signOut();
	} catch ( e ) {}
	view.idle();
	signIn( view, ( readPending() || {} ).next );
}

function element( tag, className, text ) {
	const node = document.createElement( tag );
	if ( className ) {
		node.className = className;
	}
	if ( text ) {
		node.textContent = text;
	}
	return node;
}

function buildPanel( options ) {
	const panel = element( 'div', 'dmzauth-panel' );
	if ( options.title ) {
		const icon = element( 'span', 'dmzauth-panel__icon material-symbols-rounded', 'edit_note' );
		icon.setAttribute( 'aria-hidden', 'true' );
		const title = element( 'h2', 'dmzauth-panel__title', options.title );
		title.id = 'dmzauth-title';
		panel.append( icon, title );
	}
	const lockedOut = !!mw.config.get( 'wgUserName' );
	panel.append( element( 'p', 'dmzauth-panel__text', lockedOut ? mw.msg( 'dmzauth-modal-nolonger' ) : mw.msg( 'dmzauth-modal-text' ) ) );
	panel.append( element( 'p', 'dmzauth-panel__hint', mw.msg( 'dmzauth-modal-roles' ) ) );
	const status = element( 'p', 'dmzauth-panel__status' );
	status.setAttribute( 'role', 'status' );
	status.hidden = true;
	const button = element( 'button', 'dmzauth-discord' );
	button.type = 'button';
	const brand = element( 'i', 'fa-brands fa-discord' );
	brand.setAttribute( 'aria-hidden', 'true' );
	const label = element( 'span', '', mw.msg( 'dmzauth-signin-discord' ) );
	button.append( brand, label );
	const other = element( 'button', 'dmzauth-other', mw.msg( 'dmzauth-other-account' ) );
	other.type = 'button';
	other.hidden = true;
	panel.append( status, button, other );
	if ( lockedOut ) {
		button.hidden = true;
	}

	const view = {
		panel,
		button,
		busy( text ) {
			button.disabled = true;
			label.textContent = text;
			status.hidden = true;
			other.hidden = true;
		},
		idle() {
			button.disabled = false;
			label.textContent = mw.msg( 'dmzauth-signin-discord' );
		},
		fail( text, offerOther ) {
			view.idle();
			status.textContent = text;
			status.hidden = false;
			status.classList.add( 'is-error' );
			other.hidden = !offerOther;
		}
	};
	button.addEventListener( 'click', () => signIn( view, options.next ) );
	other.addEventListener( 'click', () => useOtherAccount( view ) );
	return view;
}

function closeDialog() {
	if ( !dialog ) {
		return;
	}
	const { overlay, previous } = dialog;
	overlay.remove();
	document.removeEventListener( 'keydown', dialog.onKey );
	dialog = null;
	if ( previous && previous.focus ) {
		previous.focus();
	}
}

function openDialog( next ) {
	closeDialog();
	const overlay = element( 'div', 'dmzauth-overlay' );
	const card = element( 'div', 'dmzauth-card' );
	card.setAttribute( 'role', 'dialog' );
	card.setAttribute( 'aria-modal', 'true' );
	card.setAttribute( 'aria-labelledby', 'dmzauth-title' );
	const close = element( 'button', 'dmzauth-close' );
	close.type = 'button';
	close.setAttribute( 'aria-label', mw.msg( 'dmzauth-close' ) );
	close.append( element( 'span', 'material-symbols-rounded', 'close' ) );
	const view = buildPanel( { title: mw.msg( 'dmzauth-modal-title' ), next } );
	card.append( close, view.panel );
	overlay.append( card );
	document.body.append( overlay );
	const onKey = ( event ) => {
		if ( event.key === 'Escape' ) {
			closeDialog();
		}
	};
	dialog = { overlay, previous: document.activeElement, onKey };
	document.addEventListener( 'keydown', onKey );
	overlay.addEventListener( 'click', ( event ) => {
		if ( event.target === overlay ) {
			closeDialog();
		}
	} );
	close.addEventListener( 'click', closeDialog );
	( view.button.hidden ? close : view.button ).focus();
	return view;
}

function returnTarget( href ) {
	const url = new URL( href, location.href );
	const page = url.searchParams.get( 'returnto' );
	if ( !page ) {
		return href;
	}
	const query = url.searchParams.get( 'returntoquery' );
	return mw.util.getUrl( page ) + ( query ? '?' + query : '' );
}

function bindEditButtons() {
	document.addEventListener( 'click', ( event ) => {
		if ( event.ctrlKey || event.metaKey || event.shiftKey ) {
			return;
		}
		const edit = event.target.closest( '.dmz-edit-locked a, a.dmz-edit-locked' );
		const login = !edit && !mw.config.get( 'wgUserName' ) && event.target.closest( '#footer-places-login a, a[data-dmzauth-login]' );
		if ( !edit && !login ) {
			return;
		}
		event.preventDefault();
		openDialog( edit ? returnTarget( edit.href ) : null );
	} );
}

function mountLoginPage() {
	const host = document.getElementById( 'dmzauth-login' );
	if ( !host ) {
		return null;
	}
	const view = buildPanel( { next: null } );
	host.replaceChildren( view.panel );
	return view;
}

function resume( view ) {
	const pending = readPending();
	if ( !pending || mw.config.get( 'wgUserName' ) || !config.configured ) {
		return;
	}
	const target = view || openDialog( pending.next );
	target.busy( mw.msg( 'dmzauth-signing-in' ) );
	loadClerk().then( ( clerk ) => {
		if ( clerk.user && clerk.session ) {
			exchange( clerk, target );
		} else {
			writePending( null );
			target.idle();
		}
	}, () => {
		writePending( null );
		target.fail( mw.msg( 'dmzauth-error' ), false );
	} );
}

bindEditButtons();
$( () => {
	resume( mountLoginPage() );
} );

module.exports = { openDialog, signIn };
