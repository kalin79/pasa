@extends('layouts.administrador.layout-admin')
@section('meta_admin')
<meta name="tienda" content="cajamarca">
<meta name="data" content="data_tiendas">
<meta name="data_tienda" content="6">
@endsection
@section('contenido_admin')
    <main class="main  ">
        <div class="container">
            <div class="content_info d-flex justify-content-between">
                <div>
                    <h5><b class="text-uppercase">cajamarca</b> / Home - Tienda</h5>
                </div>
                <div>
                    <div class="link__new theme-button" onclick="addStore();">Nuevo &nbsp;<i class="fa fa-plus"></i></div>
                </div>
            </div>
            <div id="table-admin-store">
                <div class="table-content"></div>
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
        <section class="horarios mt-4">
            <div class="container">
                <div class="content_info d-flex justify-content-between">
                    <div>
                        <h5>Horarios</h5>
                    </div>
                    <div><a class="link__new theme-button" id="btn_add_horario" href="#">Nuevo &nbsp;<i class="fa fa-plus"></i></a></div>
                </div>
                <div id="horarios-admin-store">
                    <div class="table-content"></div>
                </div>
            </div>
        </section>
    </main>
@endsection