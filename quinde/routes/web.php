<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('get-location-ip',function(){
   $ip_cliente= \Request::ip();
    //$ip_cliente = geoip()->getClientIP();
    //$ip_cliente= '179.6.206.41';
    //$ip_cliente = '132.184.130.152';
    //$data = \Location::get($ip_cliente);
    //$data_ip = geoip($ip = $ip_cliente);
   // $data_ip = geoip()->getLocation($ip_cliente);
   // $data_ip2 = ip2long($ip_cliente);
   // dd($data_ip);

    $records = IP2LocationLaravel::get($ip_cliente);

    echo 'IP Number             : ' . $records['ipNumber'] . "<br>";
    echo 'IP Version            : ' . $records['ipVersion'] . "<br>";
    echo 'IP Address            : ' . $records['ipAddress'] . "<br>";
    echo 'Country Code          : ' . $records['countryCode'] . "<br>";
    echo 'Country Name          : ' . $records['countryName'] . "<br>";
    echo 'Region Name           : ' . $records['regionName'] . "<br>";
    echo 'City Name             : ' . $records['cityName'] . "<br>";
    echo 'Latitude              : ' . $records['latitude'] . "<br>";
    echo 'Longitude             : ' . $records['longitude'] . "<br>";
    echo 'Area Code             : ' . $records['areaCode'] . "<br>";
    echo 'IDD Code              : ' . $records['iddCode'] . "<br>";
    echo 'Weather Station Code  : ' . $records['weatherStationCode'] . "<br>";
    echo 'Weather Station Name  : ' . $records['weatherStationName'] . "<br>";
    echo 'MCC                   : ' . $records['mcc'] . "<br>";
    echo 'MNC                   : ' . $records['mnc'] . "<br>";
    echo 'Mobile Carrier        : ' . $records['mobileCarrierName'] . "<br>";
    echo 'Usage Type            : ' . $records['usageType'] . "<br>";
    echo 'Elevation             : ' . $records['elevation'] . "<br>";
    echo 'Net Speed             : ' . $records['netSpeed'] . "<br>";
    echo 'Time Zone             : ' . $records['timeZone'] . "<br>";
    echo 'ZIP Code              : ' . $records['zipCode'] . "<br>";
    echo 'Domain Name           : ' . $records['domainName'] . "<br>";
    echo 'ISP Name              : ' . $records['isp'] . "<br>";
});

Route::get('/juntosnosprotegemos', 'WebController@Juntos');
Route::get('/juntosnosprotegemos-locatarios', 'WebController@JuntosLocatarios');
Route::get('/cajamarca/terminos-condiciones/{value}', 'TiendaController@VerInformacion');
Route::get('/cajamarca/terminos-condiciones/', 'TiendaController@VerInformacion2');
Route::get('/ica/terminos-condiciones/{value}', 'TiendaController@VerInformacionIca');
Route::get('/ica/terminos-condiciones/', 'TiendaController@VerInformacionIca2');

Route::get('/', 'WebController@index');
Route::get('ica', 'WebController@home_ica');
Route::get('/ica/milhorasdelocura','WebController@horasdelocura');
Route::get('/ica/nosotros', 'WebController@nosotros_ica');
Route::get('/ica/tiendas', 'WebController@tiendas_ica');
Route::get('/ica/tiendas/{value}', 'WebController@detalle_tiendas_ica');
Route::get('/ica/promociones', 'WebController@promociones_ica');
Route::get('/ica/eventos', 'WebController@eventos_ica');
Route::get('/ica/carteleras', 'WebController@carteleras_ica');
Route::get('ica/carteleras/{value}', 'WebController@carteleras_detalle_ica');
Route::get('/ica/suscripcion', 'WebController@suscripcion_ica');
Route::get('ica/abrir_tienda', 'WebController@abrir_tienda_ica');
Route::get('ica/dia_del_shopping', 'WebController@dia_del_shopping_ica');


Route::get('cajamarca', 'WebController@home_cajamarca');
Route::get('/cajamarca/milhorasdelocura','WebController@horasdelocura_cajamarca');
Route::get('/cajamarca/nosotros', 'WebController@nosotros_cajamarca');
Route::get('/cajamarca/tiendas', 'WebController@tiendas_cajamarca');
Route::get('/cajamarca/tiendas/{value}', 'WebController@detalle_tiendas_cajamarca');
Route::get('/cajamarca/promociones', 'WebController@promociones_cajamarca');
Route::get('/cajamarca/eventos', 'WebController@eventos_cajamarca');
Route::get('/cajamarca/carteleras', 'WebController@carteleras_cajamarca');
Route::get('cajamarca/carteleras/{value}', 'WebController@carteleras_detalle_cajamarca');
Route::get('/cajamarca/suscripcion', 'WebController@suscripcion_cajamarca');
Route::get('cajamarca/abrir_tienda', 'WebController@abrir_tienda_cajamarca');
Route::get('cajamarca/dia_del_shopping', 'WebController@dia_del_shopping_cajamarca');

Route::get('/sitemap.xml', 'WebController@Sitemap');

Auth::routes();
Route::get('/home', 'HomeController@index')->name('home');
Route::get('admin/perfil', 'AdminController@perfil');
Route::get('admin/ica/home', 'AdminController@home_ica');
Route::get('admin/ica/nosotros', 'AdminController@nosotros_ica');
Route::get('admin/ica/tiendas', 'AdminController@tiendas_ica');
Route::get('admin/ica/promociones', 'AdminController@promociones_ica');
Route::get('admin/ica/eventos', 'AdminController@eventos_ica');
Route::get('admin/ica/carteleras', 'AdminController@carteleras_ica');
Route::get('admin/ica/suscritos', 'AdminController@suscritos_ica');
Route::get('admin/ica/footer', 'AdminController@footer_ica');

Route::get('admin/cajamarca/home', 'AdminController@home_caja');
Route::get('admin/cajamarca/nosotros', 'AdminController@nosotros_caja');
Route::get('admin/cajamarca/tiendas', 'AdminController@tiendas_caja');
Route::get('admin/cajamarca/promociones', 'AdminController@promociones_caja');
Route::get('admin/cajamarca/eventos', 'AdminController@eventos_caja');
Route::get('admin/cajamarca/carteleras', 'AdminController@carteleras_caja');
Route::get('admin/cajamarca/suscritos', 'AdminController@suscritos_caja');
Route::get('admin/cajamarca/footer', 'AdminController@footer_caja');

