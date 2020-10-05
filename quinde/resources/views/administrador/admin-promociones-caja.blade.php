@extends('layouts.administrador.layout-admin')
@section('meta_admin')
<meta name="tienda" content="cajamarca">
<meta name="data" content="data_promociones">
<meta name="data_tienda" content="8">
@endsection
@section('contenido_admin')
    <main class="main  ">
        <div class="container">
            <div class="content_info d-flex justify-content-between">
                <div>
                    <h5><b class="text-uppercase">cajamarca</b> / Home - Promociones</h5>
                </div>
                <div>
                    <div class="link__new" onclick="addPromotions()">Nuevo &nbsp;<i class="fa fa-plus"></i></div>
                </div>
            </div>
            <form id="formRangoFechas" action=""><input type="hidden" name="ciudad" value="cajamarca">
                <div class="content_info d-flex justify-content-between align-items-center">
                    <div>
                        <h5>Mostrando en la web</h5>
                    </div>
                    <div></div><label for="">Desde: &nbsp;<input type="text" name="fecha_ini" id="fechaIniHome"><label class="messages error d-none" id="error-fecha-1" for="">.</label></label><label for="">Hasta: &nbsp;<input type="text" name="fecha_fin" id="fechaFinHome"><label class="messages error d-none" id="error-fecha-2" for="">Esta decha no puede ser menor a la fecha de inicio</label></label>
                    <div><button class="btn btn-theme" type="submit">Actualizar</button></div>
                </div>
            </form>
            <div id="table-admin-promotions">
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