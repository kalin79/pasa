@extends('layouts.administrador.layout-admin')
@section('meta_admin')
<meta name="tienda" content="ica">
<meta name="data" content="data_cartelera">
<meta name="data_tienda" content="11">
@endsection
@section('contenido_admin')
    <main class="main  ">
        <div class="container">
            <div class="content_info d-flex justify-content-between">
                <div>
                    <h5><b class="text-uppercase">ica</b> / Cartelera</h5>
                </div>
                <div>
                    <div class="link__new" onclick="addBill()">Nuevo &nbsp;<i class="fa fa-plus"></i></div>
                </div>
            </div>
            <div id="table-admin-billboard">
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
                        <div class="link__new" onclick="newBanners()">Nuevo &nbsp;<i class="fa fa-plus"></i></div>
                    </div>
                </div>
                <div class="content-banners"></div>
            </div>
        </section>
    </main>
@endsection