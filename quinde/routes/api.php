<?php

use Illuminate\Http\Request;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});



Route::get('/data_tiendas/{value}', 'TiendaController@AdminDataTienda');
Route::get('/detalle_tiendas/{id}', 'TiendaController@AdminDetalleTienda');
Route::post('/nueva_tienda', 'TiendaController@AdminNuevaTienda');
Route::get('/eliminar_tienda/{id}', 'TiendaController@AdminEliminarTienda');
Route::post('/actualizar_estado_tienda/{id}', 'TiendaController@AdminCambiarEstadoTienda');
Route::post('/eliminar_img_tienda/{id}', 'TiendaController@AdminEliminarImagenTienda');
Route::post('/editar_tienda/{id}', 'TiendaController@AdminEditarTienda');

Route::get('/data_promociones/{value}', 'PromotionController@AdminDataPromotion');
Route::get('/detalle_promociones/{id}', 'PromotionController@AdminDetallePromotion');
Route::post('/nueva_promocion', 'PromotionController@AdminNuevaPromocion');
Route::post('/editar_promocion/{id}', 'PromotionController@AdminEditarPromocion');
Route::post('/actualizar_estado_promocion/{id}', 'PromotionController@AdminCambiarEstadoPromocion');
Route::get('/eliminar_img_promocion/{id}', 'PromotionController@AdminEliminarImagenPromocion');
Route::get('/eliminar_promocion/{id}', 'PromotionController@AdminEliminarPromocion');

Route::get('/data_eventos/{value}', 'EventController@AdminDataEventos');
Route::get('/detalle_eventos/{id}', 'EventController@AdminDetalleEventos');
Route::post('/nuevo_evento', 'EventController@AdminNuevoEvento');
Route::post('/editar_evento/{id}', 'EventController@AdminEditarEvento');
Route::post('/actualizar_estado_evento/{id}', 'EventController@AdminCambiarEstadoEvento');
Route::get('/eliminar_img_evento/{id}', 'EventController@AdminEliminarImagenEvento');
Route::get('/eliminar_evento/{id}', 'EventController@AdminEliminarEvento');

Route::get('/data_cartelera/{value}', 'BillboardController@AdminDataCartelera');
Route::get('/detalle_cartelera/{id}', 'BillboardController@AdminDetalleCartelera');
Route::post('/nueva_pelicula', 'BillboardController@AdminNuevaPelicula');
Route::post('/actualizar_estado_pelicula/{id}', 'BillboardController@AdminCambiarEstadoPelicula');
Route::get('/eliminar_pelicula/{id}', 'BillboardController@AdminEliminarPelicula');
Route::post('/editar_pelicula/{id}', 'BillboardController@AdminEditarPelicula');
Route::post('/eliminar_img_pelicula/{id}', 'BillboardController@AdminEliminarImagenPelicula');

Route::get('/web_data/{id}', 'MenuController@WebData');
Route::post('/fecha_promo', 'PromotionController@FiltroFechaPromocion');
Route::post('/registro/{value}', 'WebController@NuevoRegistro');
Route::post('/agregar_banner', 'TiendaController@AdminAgregarBanner');
Route::post('/actualizar_estado_banner/{id}', 'TiendaController@AdminCambiarEstadoBanner');
Route::get('/eliminar_banner/{id}', 'TiendaController@AdminEliminarBanner');
Route::get('/data_suscritos/{value}', 'AdminController@DataSuscritos');
Route::post('/editar_rrss/{id}', 'AdminController@EditarRRSS');
Route::post('/actualizar_estado_rrss/{id}', 'AdminController@CambiarEstadoRRSS');
Route::post('/actualizar_data/{id}', 'MenuController@ActualizarNosotros');
Route::get('/tienda_horarios/{value}', 'TiendaController@DataHorarios');
Route::post('/agregar_horario/{value}', 'TiendaController@AgregarHorario');
Route::post('/agregar_categorias_tienda/{value}', 'TiendaController@AgregarCategoria');
Route::post('/editar_horario/{id}', 'TiendaController@EditarHorario');
Route::get('/eliminar_horario/{id}', 'TiendaController@EliminarHorario');
Route::get('/buscador_ica', 'WebController@BuscadorIca');
Route::get('/buscador_cajamarca', 'WebController@BuscadorCajamarca');
Route::post('/abrir_tienda/{value}', 'WebController@AbrirTienda');

Route::get('/categorias', 'MenuController@DataCategoria');