<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>
	<head>
		<title><?=$meta_title;?></title>
		<meta name="description" content="EZCrypt - The original safer way to encrypt your pastes online!" />
		<meta name="keywords" content="ezcrypt, encryption, pastebin, paste, secure, aes" />
		<meta http-equiv="content-type" content="text/html; charset=UTF-8" />
		<?if( $norobots !== false ) {?><meta name="robots" content="noarchive" />
		<meta name="googlebot" content="nosnippet" />
		<meta name="googlebot" content="noarchive" />
		<?}?><meta http-equiv="cache-control" content="no-cache" />
		<meta http-equiv="pragma" content="no-cache" />
		<meta name="viewport" content="width=device-width,minimum-scale=1.0,maximum-scale=1.0" />
		<meta name="apple-mobile-web-app-capable" content="yes" />
		<link rel="stylesheet" href="/css/mobile.css" />
		<link rel="stylesheet" href="/css/codemirror.css" />
		<link rel="shortcut icon" href="/favicon.ico" />
	
		<script type="text/javascript">
			var lib = '<?php echo ( !empty( $pastes ) ) ? $pastes->get_crypto() : 'CRYPTO_JS'; ?>';
			
			// holder object to store jquery commands until jquery is loaded up
			window.$ = ( function() {
				var q = [], f = function( cb ) {
					q.push( cb );
				};
				f.attachReady = function( $ ) { 
					$( function () {
						$.each( q, function( i, f ) {
							f.call( document );
						} );
						q.length = 0;
					} );
					return $;
				}
				return f;
			} )();
		</script>
		<script type="text/javascript" src="/inc/jslibs/LAB.min.js"></script>
		<script type="text/javascript" src="/inc/jslibs/core.js"></script>
	</head>
	<body>
		<div id="holder">
			<div id="header" class="gradient">
				EZCrypt <span class="small">v0.4</span>
				<div style="position: absolute; right: 0px; top: 6px;"><a href="http://flattr.com/thing/647627/EZCrypt" target="_blank"><img src="/css/flattr-badge-large.png" alt="Flattr this" title="Flattr this" border="0" width="93" height="20" /></a></div>
			</div>
			<nav>
				<a href="/">Home</a>
				<a href="/about">About</a>
				<a href="mailto:contact@ezcrypt.it">Contact</a>
			</nav>
			<div id="main">
