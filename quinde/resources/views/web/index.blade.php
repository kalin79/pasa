<!DOCTYPE html>
<html lang="es">

<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width,initial-scale=1">
	<meta http-equiv="X-UA-Compatible" content="ie=edge">
	<meta name="theme-color" content="#1d8649">
	<meta name="apple-mobile-web-app-status-bar-style" content="#1d8649">
	<meta name="msapplication-navbutton-color" content="#1d8649">
	<title>BIENVENIDOS A C.C EL QUINDE SHOPPING PLAZA</title>
	<meta name="description" content="">
	<meta name="autor" content="La Agencia - la-agencia.pe">
	<meta name="csrf-token" content="{{ csrf_token() }}">
	<link rel="apple-touch-icon" sizes="180x180" href="{{asset('assets/images/logo.png')}}">
	<link rel="icon" type="image/png" sizes="32x32" href="{{asset('assets/images/logo.png')}}">
	<link rel="icon" type="image/png" sizes="16x16" href="{{asset('assets/images/logo.png')}}">
	<link rel="shortcut icon" href="{{asset('assets/images/logo.png')}}">
	<style>
		body,
		html {
			overflow: hidden;
		}

	</style>
	<link href="{{asset('assets/css/main.0f39fc1.bundle.css?0f39fc1c10353f1a03ac')}}" rel="stylesheet">
	<script type='application/ld+json'>
      {"@context":"http:\/\/schema.org",
        "@type":"WebSite",
        "@id":"#website",
        "url":"https:\/\/www.elquinde.pe",
        "name":"C.C EL Quinde Shopping Plaza",
        "potentialAction":{
          "@type":"SearchAction",
          "target":"https:\/\/www.elquinde.pe?s={search_term_string}",
          "query-input":"required name=search_term_string"
        }
      } 
    </script>
	<!-- Global site tag (gtag.js) - Google Analytics -->
		<script async src="https://www.googletagmanager.com/gtag/js?id=UA-139323572-1"></script>
		<script>
  		window.dataLayer = window.dataLayer || [];
  		function gtag(){dataLayer.push(arguments);}
  		gtag('js', new Date());
  		gtag('config', 'UA-139323572-1');
		</script>
</head>

<body>
	
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
<section class="pre-home">
	<div class="bg-top bg-banner"></div>
	<div class="bg-bottom bg-banner"></div>
	<div class="bg-left bg-banner"></div>
	<div class="bg-right bg-banner"></div>
	<div class="container w-100 h-100 d-flex justify-content-center align-items-center flex-column">
		<div class="logo-content">
			<div class="logo-bird"></div>
		</div><img class="logo-prehome" src="{{asset('assets/images/pre-home/logo-text.png')}}" alt="">
		<div class="text-content">
			<h2 class="prehome__section phrase-text">NOS RENOVAMOS &nbsp;<span class="phrase--bold">PARA TI</span></h2>
		</div>
		<div class="location-content">
			<div class="row">
				<div class="box-location box-location-resp1">
					<h3><a class="btn--loc" href="{{url('ica')}}"><img class="box-img2" src="{{asset('assets/images/quinde-btn-ica.png')}}" alt=""></a></h3>
				</div>
				<div class="box-location box-location-resp2">
					<h3><a class="btn--loc" href="{{url('cajamarca')}}"><img class="box-img3" src="{{asset('assets/images/quinde-btn-cja.png')}}" alt=""></a></h3>
				</div>
			</div>
		</div>
	</div>
</section>
<script>
    window.Laravel = <?php echo json_encode(['csrfToken' => csrf_token(),]); ?>
</script>
<script src="{{asset('assets/js/vendor.0f39fc1.bundle.js?0f39fc1c10353f1a03ac')}}"></script>
<script src="{{asset('assets/js/main.0f39fc1.bundle.js?0f39fc1c10353f1a03ac')}}"></script>
</body>

</html>