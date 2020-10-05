@extends('layouts.administrador.layout-admin')
@section('meta_admin')
<meta name="tienda" content="ica">
<meta name="data" content="data_tiendas">
<meta name="data_tienda" content="5">
@endsection
@section('contenido_admin')
  <main class="main  ">
    <div class="container">
      <div class="content_info d-flex justify-content-between">
        <div>
          <h5><b class="text-uppercase">ica</b> / Home - Suscritos</h5>
        </div>
        <div id="export-excel"></div>
      </div>
      <div id="table-admin-subscribed">
        <div class="table-content"></div>
      </div>
    </div>
  </main>
@endsection
