@extends('layouts.cajamarca.layout-cajamarca')
@section('meta')
    <title>ABRE TU TIENDA | C.C El Quinde Shopping Plaza Cajamarca</title>
    <meta name="description" content="">
    <meta name="autor" content="La Agencia - la-agencia.pe">
    <meta name="data_tienda" content="12">
@endsection
@section('contenido')
    <main class="main">
        <section class="section-gutter-top height-0"></section>
        <section class="section suscribete-tienda-section" id="suscribete-tienda-section">
            <div class="container">
                <div class="row">
                    <div class="col-xl-10 col-xxxl-9 xs-m-auto">
                        <div class="suscribete-info my-2">
                            <h3 class="subtitle subtitle--medium">ABRE UNA TIENDA CON NOSOTROS</h3>
                        </div>
                        <form class="suscribete-form mt-5" id="form_registrar_tienda">
                            <div class="row">
                                <div class="col-12 mb-2">
                                    <h4 class="xs-bold">Datos del negocio</h4>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-6">
                                    <div class="form-group mt-4"><label class="label-theme mb-3">Nombre comercial:</label><input class="form-control input-theme validate" type="text" name="nombre_negocio"><label class="messages">Ingresar Nombre Comercial</label></div>
                                    <div class="form-group mt-4"><label class="label-theme mb-3">Años de experiencia:</label><input class="form-control input-theme validate" type="text" name="experiencia"><label class="messages">Ingresar años de experiencia</label></div>
                                    <div class="form-group mt-4"><label class="label-theme mb-3">Cuéntanos sobre tu negocio:</label><input class="form-control input-theme validate" type="text" name="descripcion_negocio"><label class="messages">Cuéntanos sobre tu negocio</label></div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="form-group mt-4">
                                        <div class="row">
                                            <div class="col-md-4"><label class="label-theme mb-3">Categoría:</label></div>
                                            <div class="col-md-8"><select class="select select-store border-input validate" id="category_abrir_tienda" name="categoria" defaultvalue=""></select><label class="messages">Seleccionar Categoría</label></div>
                                        </div>
                                    </div>
                                    <div class="form-group mt-4">
                                        <div class="row">
                                            <div class="col-md-5"><label class="label-theme mb-3">Formato de negocio:</label></div>
                                            <div class="col-md-7"><select class="select select-store border-input validate" id="formato_negocio" name="formato_negocio" defaultvalue="">
                                                    <option value="" selected="selected" disabled="disabled">Seleccionar</option>
                                                    <option value="Tienda">Tienda</option>
                                                    <option value="Módulo">Módulo</option>
                                                    <option value="Publicidad">Publicidad</option>
                                                    <option value="Feria">Feria</option>
                                                    <option value="Activaciones">Activaciones</option>
                                                </select><label class="messages">Seleccionar Formato de negocio</label></div>
                                        </div>
                                    </div>
                                    <div class="form-group mt-4">
                                        <div class="row">
                                            <div class="col-md-5 col-xl-4"><label class="label-theme">Foto de referencia:</label></div>
                                            <div class="col-md-7 col-xl-8"><label class="custom-file-upload"><input type="file" name="foto" style="display:none;" onchange="handleChangeFile(e=this);" data-text_file="nombre_file">
                                                    <div class="btn btn--color3 mt-1">Seleccionar</div><span class="xs-block mt-2" id="nombre_file"></span>
                                                </label><label class="messages">Seleccionar tu imagen de referencia</label></div>
                                        </div>
                                    </div>
                                    <div class="form-group mt-4">
                                        <div class="row">
                                            <div class="col-md-5 col-xl-4"><label class="label-theme">Centro Comercial:</label></div>
                                            <div class="col-md-7 col-xl-8 d-flex align-items-center">
                                                <div class="form-group"><input class="styled-checkbox" id="cbx_ica" type="checkbox" name="cc_negocio"><label class="label-terms" for="cbx_ica">&nbsp;Ica</label></div>
                                                <div class="form-group ml-2"><input class="styled-checkbox" id="cbx_cajamarca" type="checkbox" name="cc_negocio2"><label class="label-terms" for="cbx_cajamarca">&nbsp;Cajamarca</label></div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row mt-5">
                                <div class="col-12 mb-2">
                                    <h4 class="xs-bold">Datos del contacto</h4>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-6 form-group mt-4"><label class="label-theme mb-3">Nombres:</label><input class="form-control input-theme validate" type="text" name="nombre_contacto"><label class="messages">Ingresar Nombres</label></div>
                                <div class="col-lg-6 form-group mt-4"><label class="label-theme mb-3">Apellidos:</label><input class="form-control input-theme validate" type="text" name="apellido_contacto"><label class="messages">Ingresar Apellidos</label></div>
                            </div>
                            <div class="row">
                                <div class="col-lg-6 form-group mt-4"><label class="label-theme mb-3">Correo electrónico:</label><input class="form-control input-theme validate" type="email" name="email_contacto"><label class="messages">Ingresar Correo Electrónico</label></div>
                                <div class="col-lg-6 form-group mt-4"><label class="label-theme mb-3">Teléfono de contacto:</label><input class="form-control input-theme validate" type="text" name="telefono_contacto" maxlength="12"><label class="messages">Ingresar Teléfono</label></div>
                            </div>
                            <div class="row">
                                <div class="col-lg-6 form-group mt-4"><label class="label-theme mb-3">DNI:</label><input class="form-control input-theme validate" type="text" name="dni_contacto" maxlength="12"><label class="messages">Ingresar DNI</label></div>
                            </div>
                            <div class="row mt-5 xs-center">
                                <div class="col-12"><button class="btn btn--color3 btn--large" id="btn_send" type="submit">ENVIAR</button></div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </section>
    </main><span class="line-bar"></span>
@endsection
