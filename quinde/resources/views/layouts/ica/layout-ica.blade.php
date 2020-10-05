<!DOCTYPE html>
<html lang="es">

<head>
	<!-- Google Tag Manager -->
	<script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
	new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
	j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
	'https://www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
	})(window,document,'script','dataLayer','GTM-TMZ8VZ6');</script>
	<!-- End Google Tag Manager -->
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width,initial-scale=1">
	<meta http-equiv="X-UA-Compatible" content="ie=edge">
	<meta name="theme-color" content="#1d8649">
	<meta name="apple-mobile-web-app-status-bar-style" content="#1d8649">
	<meta name="msapplication-navbutton-color" content="#1d8649">
	@yield('meta')
	<meta name="tienda" content="ica">
	<link rel="apple-touch-icon" sizes="180x180" href="{{asset('assets/images/logo.png')}}">
	<link rel="icon" type="image/png" sizes="32x32" href="{{asset('assets/images/logo.png')}}">
	<link rel="icon" type="image/png" sizes="16x16" href="{{asset('assets/images/logo.png')}}">
	<link rel="shortcut icon" href="{{asset('assets/images/logo.png')}}">
	<link rel="stylesheet" href="{{asset('assets/lib/font-awesome-5.8.1/css/all.min.css')}}">
	<link href="{{asset('assets/css/main.0f39fc1.bundle.css?0f39fc1c10353f1a03ac')}}" rel="stylesheet">
	<script type='application/ld+json'> 
	  {"@context":"http:\/\/schema.org",
		"@type":"WebSite",
		"@id":"#website",
		"url":"https:\/\/www.elquinde.pe",
		"name":"C.C El Quinde Shopping Plaza Ica",
		"potentialAction":{
		  "@type":"SearchAction",
		  "target":"https:\/\/www.elquinde.pe?s={search_term_string}",
		  "query-input":"required name=search_term_string"
		}
	  }
	</script>
	
</head>

<body>
<!-- Google Tag Manager (noscript) -->
<noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-TMZ8VZ6"
height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
<!-- End Google Tag Manager (noscript) -->

<!--BEGIN QUALTRICS WEBSITE FEEDBACK SNIPPET-->
<script type='text/javascript'>
	(function(){var g=function(e,h,f,g){
	this.get=function(a){for(var a=a+"=",c=document.cookie.split(";"),b=0,e=c.length;b<e;b++){for(var d=c[b];" "==d.charAt(0);)d=d.substring(1,d.length);if(0==d.indexOf(a))return d.substring(a.length,d.length)}return null};
	this.set=function(a,c){var b="",b=new Date;b.setTime(b.getTime()+6048E5);b="; expires="+b.toGMTString();document.cookie=a+"="+c+b+"; path=/; "};
	this.check=function(){var a=this.get(f);if(a)a=a.split(":");else if(100!=e)"v"==h&&(e=Math.random()>=e/100?0:100),a=[h,e,0],this.set(f,a.join(":"));else return!0;var c=a[1];if(100==c)return!0;switch(a[0]){case "v":return!1;case "r":return c=a[2]%Math.floor(100/c),a[2]++,this.set(f,a.join(":")),!c}return!0};
	this.go=function(){if(this.check()){var a=document.createElement("script");a.type="text/javascript";a.src=g;document.body&&document.body.appendChild(a)}};
	this.start=function(){var t=this;"complete"!==document.readyState?window.addEventListener?window.addEventListener("load",function(){t.go()},!1):window.attachEvent&&window.attachEvent("onload",function(){t.go()}):t.go()};};
	try{(new g(100,"r","QSI_S_ZN_blthVjZB2KuIOXz","https://znblthvjzb2kuioxz-parquearauco.siteintercept.qualtrics.com/SIE/?Q_ZID=ZN_blthVjZB2KuIOXz")).start()}catch(i){}})();
	</script><div id='ZN_blthVjZB2KuIOXz'><!--DO NOT REMOVE-CONTENTS PLACED HERE--></div>
	<!--END WEBSITE FEEDBACK SNIPPET-->

	
<header class="header">
	<nav class="navbar" id="navbar">
		<div class="container navbar-container">
			<div class="navbar-brand"><a href="{{url('ica')}}"><img class="logo" src="{{asset('assets/images/logo.png')}}"></a></div>
			<div class="navbar-search navbar-search-toggle">
				<div class="form-search"><a class="btn btn--color9 mb-2 lg-none-force" href="{{url('ica/suscripcion')}}">SUSCRÍBETE</a>
					<div class="content-input">
						<div class="content-search"><input class="form-control j-filtred" id="inp-search" type="text" placeholder="Buscar..."><i class="fa fa-search"></i></div>
						<div class="content-searching">
							<div class="searching" id="searching"></div>
						</div>
					</div>
				</div>
				<div class="buttons-content"><a class="btn btn--theme" href="{{url('ica/suscripcion')}}">SUSCRÍBETE</a></div>
			</div>
			<div class="navbar-menu">
				<div class="content-menu">
					<ul class="menu menu-fix-toggle">
						<li class="menu__item"><a class="menu__link link-about {{ request()->is('ica/nosotros') ? 'active' : '' }}" href="{{url('ica/nosotros')}}">Nosotros</a></li>
						<li class="menu__item"><a class="menu__link link-stores {{ request()->is('ica/tiendas') || request()->is('ica/tiendas/*') ? 'active' : '' }}" href="{{url('ica/tiendas')}}">Tiendas</a></li>
						<li class="menu__item"><a class="menu__link link-promotions {{ request()->is('ica/promociones') ? 'active' : '' }}" href="{{url('ica/promociones')}}">Promociones</a></li>
						<li class="menu__item"><a class="menu__link link-events {{ request()->is('ica/eventos') ? 'active' : '' }}" href="{{url('ica/eventos')}}">Eventos</a></li>
						<li class="menu__item not-border-right"><a class="menu__link link-billboard {{ request()->is('ica/carteleras') ? 'active' : '' }}" href="{{url('ica/carteleras')}}">Cartelera</a></li>
					</ul>
				</div>
			</div>
			<div class="navbar-location">
				<ul class="menu-location">
					<li class="menu-location__item"><a class="menu-location__link {{ request()->is('ica') || request()->is('ica/*') ? 'active' : '' }}" href="{{url('ica')}}">Ica</a></li>
					<li class="menu-location__item"><a class="menu-location__link {{ request()->is('cajamarca') || request()->is('cajamarca/*')  ? 'active' : '' }}" href="{{url('cajamarca')}}">Cajamarca</a></li>
				</ul>
			</div>
			<div class="toggle-menu" id="toggle-menu"><span class="hamburger"></span></div>
		</div>
		<div class="container-navbar-movil">
			<div class="content-navbar-movil">
				<div class="container xs-center">
					<ul class="menu-movil">
						<li>
							<ul class="menu-location">
								<li class="menu-location__item"><a class="menu-location__link {{ request()->is('ica') || request()->is('ica/*') ? 'active' : '' }}" href="{{url('ica')}}">Ica</a></li>
								<li class="menu-location__item"><a class="menu-location__link {{ request()->is('cajamarca') || request()->is('cajamarca/*') ? 'active' : '' }}" href="{{url('cajamarca')}}">Cajamarca</a></li>
							</ul>
						</li>
						<li>
							<div class="form-search"><a class="btn btn--color9 mb-3 lg-none-force" href="{{url('ica/suscripcion')}}">SUSCRÍBETE</a>
								<div class="content-input">
									<div class="content-search"><input class="form-control j-filtred" id="inp-search-movil" type="text" placeholder="Buscar..."><i class="fa fa-search"></i></div>
								</div>
							</div>
						</li>
						<li>
							<ul class="nav-movil">
								<li class="menu__item"><a class="menu__link link-about {{ request()->is('ica/nosotros') ? 'active' : '' }}" href="{{url('ica/nosotros')}}">Nosotros</a></li>
								<li class="menu__item"><a class="menu__link link-stores {{ request()->is('ica/tiendas') || request()->is('ica/tiendas/*') ? 'active' : '' }}" href="{{url('ica/tiendas')}}">Tiendas</a></li>
								<li class="menu__item"><a class="menu__link link-promotions {{ request()->is('ica/promociones') ? 'active' : '' }}" href="{{url('ica/promociones')}}">Promociones</a></li>
								<li class="menu__item"><a class="menu__link link-events {{ request()->is('ica/eventos') ? 'active' : '' }}" href="{{url('ica/eventos')}}">Eventos</a></li>
								<li class="menu__item not-border-right"><a class="menu__link link-billboard {{ request()->is('ica/carteleras') ? 'active' : '' }}" href="{{url('ica/carteleras')}}">Cartelera</a></li>
								<li class="menu__item not-border-right"><a class="menu__link link-billboard {{ request()->is('ica/terminos-condiciones') ? 'active' : '' }}" href="{{url('ica/terminos-condiciones')}}">Términos y Condiciones</a></li>
							</ul>
						</li>
					</ul>
				</div>
			</div>
		</div><span class="line-bar"></span>
	</nav>
</header>
<div class="container-search-full" id="container_search_full"><a class="close-search-full" id="close_search_full" href="#"></a>
	<div class="container">
		<div class="container-form">
			<form class="form">
				<div class="autocomplete-wrapper"><input class="form-control" id="input_search_full" type="text" value="" placeholder="Tiendas, Promociones, Eventos, Carteleras..." autocomplete="off"><span class="fa fa-search"></span></div>
			</form>
		</div>
		<div class="container container-filter">
			<div id="data_filter_full"></div>
		</div>
	</div>
</div>
<div class="loader" id="loader">
	<div class="logo-content-ld">
		<div class="logo-bird"></div>
	</div><img class="logo-prehome-ld" src="{{asset('assets/images/logo-text.png')}}" alt=" Logo">
</div>
@yield('contenido')
<footer class="footer">
	<div class="container">
		<div class="row footer-main">
			<div class="col-12 col-lg-2 footer__brand mb-4 mb-lg-0"><img class="logo" src="{{asset('assets/images/prehome-logo.png')}}"></div>
			<div class="col-md-8 col-lg-3 footer__location px-4">
				<div class="row">
					<div class="col-sm-6 col-lg-12 location"><a class="d-i-block location__link" href="https://www.google.com/maps/place/El+Quinde+Shopping+Plaza+Ica/@-14.074399,-75.739693,16z/data=!4m5!3m4!1s0x0:0x6fabc73b25a5aa2e!8m2!3d-14.074399!4d-75.7396929?hl=es-ES" target="_blank"><i class="fa fa-map-marker-alt"></i> &nbsp;El Quinde Ica</a><span class="d-block">Av. de los Maestros, Ica</span></div>
					<div class="col-sm-6 col-lg-12 location mt-3 mt-sm-0 mt-lg-4"><a class="d-i-block location__link" href="https://www.google.com/maps?ll=-7.149295,-78.509643&amp;z=16&amp;t=m&amp;hl=es-ES&amp;gl=PE&amp;mapclient=embed&amp;cid=9614725015785911581" target="_blank"><i class="fa fa-map-marker-alt"></i> &nbsp;El Quinde Cajamarca</a><span class="d-block">Av. Hoyos Rubio, Cajamarca</span></div>
				</div>
			</div>
			<div class="col-md-4 col-lg-3 col-xxxl-4">
				<div class="footer__menu">
					<ul class="menu-footer">
						<li class="menu-footer__item"><a class="menu-footer__link {{ request()->is('ica') ? 'active' : '' }}" href="{{url('ica')}}">Home</a></li>
						<li class="menu-footer__item"><a class="menu-footer__link {{ request()->is('ica/nosotros') ? 'active' : '' }}" href="{{url('ica/nosotros')}}">Nosotros</a></li>
						<li class="menu-footer__item"><a class="menu-footer__link {{ request()->is('ica/tiendas') || request()->is('ica/tiendas/*') ? 'active' : '' }}" href="{{url('ica/tiendas')}}">Tiendas</a></li>
					</ul>
					<ul class="menu-footer ml-4">
						<li class="menu-footer__item"><a class="menu-footer__link {{ request()->is('ica/promociones') ? 'active' : '' }}" href="{{url('ica/promociones')}}">Promociones</a></li>
						<li class="menu-footer__item"><a class="menu-footer__link {{ request()->is('ica/eventos') ? 'active' : '' }}" href="{{url('ica/eventos')}}">Eventos</a></li>
						<li class="menu-footer__item"><a class="menu-footer__link {{ request()->is('ica/carteleras') ? 'active' : '' }}" href="{{url('ica/carteleras')}}">Cartelera</a></li>
						<li class="menu-footer__item"><a class="menu-footer__link {{ request()->is('ica/terminos-condiciones') ? 'active' : '' }}" href="{{url('ica/terminos-condiciones')}}">Términos y Condiciones</a></li>
					</ul>
				</div>
				<div class="footer__menu mt-3">
					<ul class="menu-footer">
						<li class="menu-footer__item xs-center"><a class="btn btn--color3 mb-4 xs-block-force md-none-force" href="{{url('/ica/abrir_tienda')}}">ABRE UNA TIENDA CON NOSOTROS</a>
						<a class="menu-footer__link" href="http://www.parauco.com/" target="_blank">www.parauco.com</a></li>
					</ul>
				</div>
			</div>
			<div class="col-lg-4 col-xxxl-3 footer__social mt-4 mt-lg-0 xs-center">
				<ul class="menu-social" id="menu-social"></ul><a class="btn btn--color3 mt-4 xs-none-force md-i-block-force" href="{{url('/ica/abrir_tienda')}}">ABRE UNA TIENDA CON NOSOTROS</a>
			</div>
		</div>
	</div>
</footer>
<div class="sub-footer">
	<div class="container">
		<div class="row list-logos-footer">
			<div class="item-img item-full"><a href="http://www.parauco.com/" target="_blank"><img src="{{asset('assets/images/logos/parque-arauco.png')}}" alt=""></a></div>
			<div class="item-img"><a href="https://www.larcomar.com/" target="_blank"><img src="{{asset('assets/images/logos/larcomar.png')}}" alt=""></a></div>
			<div class="item-img"><a href="https://www.megaplaza.com.pe/" target="_blank"><img src="{{asset('assets/images/logos/megaplaza.png')}}" alt=""></a></div>
			<div class="item-img"><a href="https://parquelambramani.com/" target="_blank"><img src="{{asset('assets/images/logos/lambramani.png')}}" alt=""></a></div>
			<div class="item-img"><a href="http://inoutlet.pe/" target="_blank"><img src="{{asset('assets/images/logos/inoutlet.png')}}" alt=""></a></div>
			<div class="item-img"><a href="https://www.facebook.com/ViamixPeru/" target="_blank"><img src="{{asset('assets/images/logos/viamix.png')}}" alt=""></a></div>
		</div>
	</div>
</div>
<script>
    window.Laravel = <?php echo json_encode(['csrfToken' => csrf_token(),]); ?>
</script>
<script src="{{asset('assets/js/vendor.0f39fc1.bundle.js?0f39fc1c10353f1a03ac')}}"></script>
<script src="{{asset('assets/js/main.0f39fc1.bundle.js?0f39fc1c10353f1a03ac')}}"></script>
</body>

</html>