<!DOCTYPE html>
<html lang="es">

	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=0">
		<meta http-equiv="X-UA-Compatible" content="ie=edge,IE=9,IE=10,IE=11">
		<meta name="theme-color" content="#003da4">
		<meta name="apple-mobile-web-app-status-bar-style" content="#003da4">
		<meta name="msapplication-navbutton-color" content="#003da4">
		<title>El Quinde - Admin | Administrador El Quinde</title>
		<meta name="description" content="">
		<meta name="autor" content="La Agencia - la-agencia.pe">
		@yield('meta_admin')
		<link rel="stylesheet" href="{{ asset('assets/lib/font-awesome-5.8.1/css/all.min.css') }}">
		<link rel="apple-touch-icon" sizes="180x180" href="{{ asset('assets/images/logo.png')}}">
		<link rel="icon" type="image/png" sizes="32x32" href="{{ asset('assets/images/logo.png')}}">
		<link rel="icon" type="image/png" sizes="16x16" href="{{ asset('assets/images/logo.png')}}">
		<link rel="shortcut icon" href="{{ asset('assets_admin/images/logo.png')}}">
		<link href="{{ asset('assets_admin/css/main.b80d439.bundle.css')}}" rel="stylesheet">
	</head>

	<body>
	<div class="toggle-responsive"></div>
	<div class="loader" id="loader">
		<div class="logo-content">
			<div class="logo-bird"></div>
		</div><img class="logo-prehome" src="{{ asset('assets_admin/images/logo-text.png')}}" alt=" Logo">
	</div>
	<header>
		<div class="sidenav" id="mySidenav">
			<div class="nav-logo"><a href="{{url('home')}}"><img src="{{ asset('assets_admin/images/logo-white.png')}}" alt=""></a></div>
			<ul class="nav-admin">
				<li class="menu-item "><a class="menu-link  " href="#"> ICA<span class="letter ">I</span></a>
					<ul class="sub-menu " id="ul-1">
						<li><a  class="{{ request()->is('admin/ica/home') ? 'active' : '' }}" href="{{url('admin/ica/home')}}">Home</a></li>
						<li><a  class="{{ request()->is('admin/ica/nosotros') ? 'active' : '' }}" href="{{url('admin/ica/nosotros')}}">Nosotros</a></li>
						<li><a  class="{{ request()->is('admin/ica/tiendas') ? 'active' : '' }}" href="{{url('admin/ica/tiendas')}}">Tiendas</a></li>
						<li><a  class="{{ request()->is('admin/ica/promociones') ? 'active' : '' }}" href="{{url('admin/ica/promociones')}}">Promociones</a></li>
						<li><a  class="{{ request()->is('admin/ica/eventos') ? 'active' : '' }}" href="{{url('admin/ica/eventos')}}">Eventos</a></li>
						<li><a  class="{{ request()->is('admin/ica/carteleras') ? 'active' : '' }}" href="{{url('admin/ica/carteleras')}}">Cartelera</a></li>
						<li><a  class="{{ request()->is('admin/ica/suscritos') ? 'active' : '' }}" href="{{url('admin/ica/suscritos')}}">Suscritos</a></li>
						<li><a  class="{{ request()->is('admin/ica/footer') ? 'active' : '' }}" href="{{url('admin/ica/footer')}}">Footer</a></li>
					</ul>
				</li>
				<li class="menu-item "><a class="menu-link menu-link  " href="#"> CAJAMARCA<span class="letter ">C</span></a>
					<ul class="sub-menu " id="ul-2">
						<li><a  class="{{ request()->is('admin/cajamarca/home') ? 'active' : '' }}" href="{{url('admin/cajamarca/home')}}">Home</a></li>
						<li><a  class="{{ request()->is('admin/cajamarca/nosotros') ? 'active' : '' }}" href="{{url('admin/cajamarca/nosotros')}}">Nosotros</a></li>
						<li><a  class="{{ request()->is('admin/cajamarca/tiendas') ? 'active' : '' }}" href="{{url('admin/cajamarca/tiendas')}}">Tiendas</a></li>
						<li><a  class="{{ request()->is('admin/cajamarca/promociones') ? 'active' : '' }}" href="{{url('admin/cajamarca/promociones')}}">Promociones</a></li>
						<li><a  class="{{ request()->is('admin/cajamarca/eventos') ? 'active' : '' }}" href="{{url('admin/cajamarca/eventos')}}">Eventos</a></li>
						<li><a  class="{{ request()->is('admin/cajamarca/carteleras') ? 'active' : '' }}" href="{{url('admin/cajamarca/carteleras')}}">Cartelera</a></li>
						<li><a  class="{{ request()->is('admin/cajamarca/suscritos') ? 'active' : '' }}" href="{{url('admin/cajamarca/suscritos')}}">Suscritos</a></li>
						<li><a  class="{{ request()->is('admin/cajamarca/footer') ? 'active' : '' }}" href="{{url('admin/cajamarca/footer')}}">Footer</a></li>
					</ul>
				</li>
			</ul>
		</div>
		<div class="d-flex justify-content-between align-items-center nav-admin-toggle" id="nav-admin-toggle">
			<div>
				<h2 class="color1"><span class="burguerNav">☰ &nbsp;</span><span class="text">Admin El Quinde</span></h2>
			</div>
			<div class="content-nav-img-user" id="dropdownBtn"><img class="nav-img-user" src="{{ asset('assets_admin/images/user.png')}}" alt=""><i class="fa fa-chevron-down"></i>
				<div class="content-box animated flipInY" id="dropdownCard">
					<div class="content-box-header">
						<h2>{{ auth()->user()->name }}</h2>
					</div>
					<div class="content-box-boddy">
						<ul>
							@if (auth()->user()->name == 'Admin')
								<li><a href="{{url('admin/perfil')}}"><i class="fa fa-user">&nbsp;</i>- Perfil</a></li>
							@endif
							<li><a href="{{ route('logout') }}" onclick="event.preventDefault();
									document.getElementById('logout-form').submit();"><i class="fa fa-power-off">&nbsp;</i>- Salir</a>
								<form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
									{{ csrf_field() }}
								</form>
							</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</header>
	@yield('contenido_admin')
	<script>
		window.Laravel = <?php echo json_encode([
			'csrfToken' => csrf_token(),
		]); ?>
	</script>
	<script src="https://cdn.ckeditor.com/4.11.4/standard/ckeditor.js"></script>
	<script src="{{ asset('assets_admin/js/vendor.b80d439.bundle.js')}}"></script>
	<script src="{{ asset('assets_admin/js/main.b80d439.bundle.js')}}"></script>
</body>

</html>