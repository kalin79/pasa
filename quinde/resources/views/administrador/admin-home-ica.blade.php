@extends('layouts.administrador.layout-admin')
    @section('meta_admin')
        <meta name="tienda" content="ica">
        <meta name="data" content="data_home">
        <meta name="data_tienda" content="1">
    @endsection
@section('contenido_admin')
<main class="main  ">
    <div class="container">
        <div class="content_info d-flex justify-content-between">
            <div>
                <h5><b class="text-uppercase">ica</b> / Home</h5>
            </div>
        </div>
    </div>
    <section class="banners">
        <div class="container">
            <div class="content_info d-flex justify-content-between">
                <div>
                    <h5>Banners</h5>
                </div>
                <div>
                    <div class="link__new theme-button" onclick="newBanners();">Nuevo &nbsp;<i class="fa fa-plus"></i></div>
                </div>
            </div>
            <div class="content-banners"></div>
        </div>
    </section>
</main>
@endsection