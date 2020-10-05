@extends('layouts.ica.layout-ica')
@section('meta')
    <title>SUSCRÍBETE | C.C El Quinde Shopping Plaza Ica</title>
    <meta name="description" content="">
    <meta name="autor" content="La Agencia - la-agencia.pe">
    <meta name="data_tienda" content="12">
@endsection
@section('contenido')
    <main class="main">
        <section class="section-gutter-top height-0"></section>
        <section class="section suscribete-section" id="suscribete-section">
            <div class="container">
                <div class="row">
                    <div class="col-xl-10 col-xxxl-9 xs-m-auto">
                        <div class="suscribete-info my-2">
                            <h3 class="subtitle subtitle--medium">SUSCRÍBETE</h3>
                            <div class="mt-5"><p class="xs-center">Ingresa tus datos y mantente al día con nuestras noticias y promociones.</p>
                            </div>
                        </div>
                        <form class="suscribete-form mt-5" id="suscribete_form">
                            <div class="row">
                                <div class="col-lg-6 form-group mt-4"><label class="label-theme mb-3" for="nombres">Nombres:</label><input class="form-control input-theme validate" id="nombres" type="text" name="nombres"><label class="messages">Ingresar Nombres</label></div>
                                <div class="col-lg-6 form-group mt-4"><label class="label-theme mb-3">Apellidos:</label><input class="form-control input-theme validate" type="text" name="apellidos"><label class="messages">Ingresar Apellidos</label></div>
                            </div>
                            <div class="row">
                                <div class="col-lg-6 form-group mt-4"><label class="label-theme mb-3">Correo electrónico:</label><input class="form-control input-theme validate" type="email" name="email"><label class="messages">Ingresar Correo</label></div>
                                <div class="col-lg-6 form-group mt-4"><label class="label-theme mb-3">Celular:</label><input class="form-control input-theme validate"  maxlength="9" type="text" name="celular"><label class="messages">Ingresar Celular</label></div>
                            </div>
                            <div class="row">
                                <div class="col-lg-6 form-group mt-4"><label class="label-theme mb-3">Fecha de nacimiento:</label><input class="form-control input-theme validate" type="date" name="fecha_nac"><label class="messages">Ingresar Fecha de nacimiento</label></div>
                                <div class="col-lg-6 form-group mt-4"><label class="label-theme mb-3">DNI:</label><input class="form-control input-theme validate" type="text" name="dni" maxlength="8"><label class="messages">Ingresar DNI</label></div>
                            </div>
                            <div class="row mt-5 xs-center lg-left">
                                <div class="col-lg-8 form-group"><input class="styled-checkbox" id="cbx_terms" type="checkbox"><label class="label-terms" for="cbx_terms">He leído y acepto los&nbsp;<a class="link-terms" id="link_terms" href="#">términos y condiciones de privacidad</a></label></div>
                                <div class="col-lg-4 form-group xs-center lg-right mt-4 mt-lg-0"><button class="btn btn--color3 btn--large" id="btn_send" type="submit">ENVIAR</button></div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </section>
    </main><span class="line-bar"></span>
@endsection