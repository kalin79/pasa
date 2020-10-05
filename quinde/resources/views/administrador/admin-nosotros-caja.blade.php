@extends('layouts.administrador.layout-admin')
@section('meta_admin')
<meta name="tienda" content="cajamarca">
<meta name="data" content="data_tiendas">
<meta name="data_tienda" content="4">
@endsection
@section('contenido_admin')
	<main class="main  ">
		<div class="container">
			<div class="content_info d-flex justify-content-between">
				<div>
					<h5><b class="text-uppercase">cajamarca</b> / Home - Nosotros</h5>
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
		<section class="data-about mt-4">
			<div class="container">
				<div class="content_info d-flex justify-content-between">
					<div>
						<h5>Datos</h5>
					</div>
					<div>
						<div class="link__new theme-button" id="btn_edit_about">Actualizar &nbsp;<i class="fa fa-pencil"></i></div>
					</div>
				</div>
				<div class="content-data-about">
					<form class="form" id="form_about">
						<div class="row">
							<div class="col-xl-8">
								<div class="form-group"><label class="color1 label-theme">Descripción:</label><textarea class="form-control w-100" id="descripcion" cols="30" rows="5"></textarea></div>
							</div>
						</div>
					</form>
					<form class="form" id="form_about_horarios">
						<div class="row">
							<div class="col-xl-8">
								<div class="form-group"><label class="color1 label-theme">Horarios de Atención:</label><textarea class="form-control w-100" id="horario_de_atencion" cols="30" rows="5"></textarea></div>
							</div>
						</div>
					</form>
				</div>
			</div>
		</section>
	</main>
@endsection
