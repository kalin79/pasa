@extends('layouts.administrador.layout-admin')
@section('meta_admin')
<meta name="tienda" content="null">
<meta name="data" content="data_user">
<meta name="data_tienda" content="undefined">
@endsection
@section('contenido_admin')
<main class="main  ">
  <section>
    <div class="container">
      <div class="content_info d-flex justify-content-between">
        <div>
          <h5>Home - Perfil de usuario</h5>
        </div>
      </div>
      <div class="content_img_profile text-center"><img class="img_profile" src="{{ asset('assets/images/logo.png')}}" alt=""></div>
      <div class="content-profile-text text-center mt-4">
        <h4 class="color1">Cambiar contraseña</h4>
      </div>
      <div class="d-flex justify-content-center align-items-center">
        <form class="mt-3">
          <div class="form-row d-flex justify-content-center align-items-center flex-column">
            <div class="form-group col-md-12 d-flex align-items-center"><input class="form-control w-100" id="inputPassword" type="password">
              <div class="ml-2 xs-pointer color1" id="show-pass"><i class="fa fa-eye-slash"></i></div>
            </div>
            <div class="form-group col-md-6 text-center"><button class="btn btn-theme" type="submit">Enviar</button></div>
          </div>
        </form>
      </div>
    </div>
  </section>
</main>
@endsection