<!DOCTYPE html>
<html lang="es">

<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=0">
	<meta http-equiv="X-UA-Compatible" content="ie=edge,IE=9,IE=10,IE=11">
	<meta name="theme-color" content="#003da4">
	<meta name="apple-mobile-web-app-status-bar-style" content="#003da4">
	<meta name="msapplication-navbutton-color" content="#003da4">
	<title>LOGIN | Administrador de El Quinde</title>
	<meta name="description" content="Administrador de El Quinde">
	<meta name="autor" content="La Agencia - la-agencia.pe">
	<link rel="apple-touch-icon" sizes="180x180" href="{{asset('assets_admin/images/logo.png')}}">
	<link rel="icon" type="image/png" sizes="32x32" href="{{asset('assets_admin/images/logo.png')}}">
	<link rel="icon" type="image/png" sizes="16x16" href="{{asset('assets_admin/images/logo.png')}}">
	<link rel="shortcut icon" href="{{asset('assets_admin/images/logo.png')}}">
	<link rel="stylesheet" href="{{asset('assets_admin/lib/font-awesome-5.8.1/css/all.min.css')}}">
	<link href="{{asset('assets_admin/css/main.b80d439.bundle.css')}}" rel="stylesheet">
</head>

<body class="login">
<div class="toggle-responsive"></div>
<div class="loader" id="loader">
	<div class="logo-content">
		<div class="logo-bird"></div>
	</div><img class="logo-prehome" src="{{asset('assets_admin/images/logo-text.png')}}" alt=" Logo">
</div>
<main class="main login ">
	<section class="login">
		<div class="container content-login-form d-flex justify-content-center align-items-center flex-column">
			<div class="content-form">
				<div class="content-form-logo"><img class="d-inline" src="{{asset('assets_admin/images/logo.png')}}" alt=""></div>
				<div class="content-form-">
					<form class="form" method="POST" action="{{ route('login') }}">
						{{ csrf_field() }}
						<div class="form-group">
							<label class="col-form-label" for="user">Email</label>
							<input id="email" type="email" class="form-control" name="email" value="{{ old('email') }}" required autofocus>
							@if ($errors->has('email'))
								<span class="help-block">
                                        <strong>{{ $errors->first('email') }}</strong>
                                    </span>
							@endif
						</div>
						<div class="form-group">
							<label class="col-form-label" for="pass">Contraseña</label>
							<input id="password" type="password" class="form-control" name="password" required>
							@if ($errors->has('password'))
								<span class="help-block">
                                        <strong>{{ $errors->first('password') }}</strong>
                                    </span>
							@endif
						</div>
						<div class="form-group mb-3 text-center">
							<button class="btn btn-theme" type="submit">INGRESAR</button></div>
						<span class="recovery-password">	¿Olvidó su contraseña? Póngase en contacto con el&nbsp;<a href="#">Administrador</a></span>
					</form>
				</div>
			</div>
		</div>
	</section>
</main>
<script src="{{asset('assets_admin/js/vendor.b80d439.bundle.js')}}"></script>
<script src="{{asset('assets_admin/js/main.b80d439.bundle.js')}}"></script>
</body>

</html>