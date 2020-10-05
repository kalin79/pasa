<?php

namespace App\Http\Controllers;

use App\Actor;
use App\Billboard;
use App\DetalleCategoriaTienda;
use App\Horario;
use App\Http\Resources\Buscador;
use App\Http\Resources\BuscadorCajamarca;
use App\Mail\RegistroAbrirTienda;
use App\Mail\RespuestaAbrirTienda;
use App\RegistroTienda;
use App\Tienda;
use Illuminate\Http\Request;
use App\Registro;
use IP2LocationLaravel;
use App\Mail\FormularioSuscribete;
use App\Mail\FormularioSuscritos;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Mail;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\Validator;

class WebController extends Controller
{
    public function __construct()
	{
        header('Access-Control-Allow-Origin: *');
    }

    public function index()
    {
        $ip_cliente= \Request::ip();

        /*$ip_cliente = geoip()->getClientIP();
        $data_ip = geoip()->getLocation($ip_cliente);*/
        //dd($data_ip);
       /* if ($data_ip->city == 'Ica') {
            return \Redirect::to('ica');
        }elseif ($data_ip->city == 'Cajamarca'){
            return \Redirect::to('cajamarca');
        }else{
            return view('web.index');
        }*/
        $records = IP2LocationLaravel::get($ip_cliente);

        if ($records['regionName'] == 'Ica') {
            return \Redirect::to('ica');
        }elseif ($records['regionName'] == 'Cajamarca'){
            return \Redirect::to('cajamarca');
        }else{
            return view('web.index');
        }
        /*$ip = \Request::ip();
        $data = \Location::get($ip);
        if ($data->cityName == 'Ica') {
            return \Redirect::to('ica');
        }elseif ($data->cityName == 'Cajamarca'){
            return \Redirect::to('cajamarca');
        }else{
            return view('web.index');
        }*/
    }

    public function horasdelocura_cajamarca()
    {
        return view('web.cajamarca.horas-locura');
    }

    public function horasdelocura()
    {
        return view('web.ica.horas-locura');
    }

    public function home_ica()
    {
        return view('web.ica.home-ica');
    }

    public function nosotros_ica()
    {
        return view('web.ica.about-ica');
    }

    public function detalle_tiendas_ica($value)
    {
        $data_tienda = Tienda::where('slug',$value)->where('estado','=','1')->where('ciudad','=','ica')->get();
        $id_tienda = '';
        foreach ($data_tienda as $data){
            $id_tienda = $data->id;
        }
        $horario = Horario::where('id_tienda','=',$id_tienda)->where('estado','=','1')->where('ciudad','ica')->orderBy('dia','Asc')->orderBy('hora_ini','Asc')->get();
        $categoria = DB::table('detalle_categoria_tiendas')->join('categoria_tiendas','detalle_categoria_tiendas.id_categoria','=','categoria_tiendas.id')
                        ->select('categoria_tiendas.nombre')->where('detalle_categoria_tiendas.id_tienda','=',$id_tienda)->where('categoria_tiendas.estado','=','1')
                        ->where('detalle_categoria_tiendas.ciudad','ica')->orderBy('categoria_tiendas.nombre','Asc')->get();
        return view('web.ica.stores-internal-ica', compact('data_tienda','horario','categoria'));
    }

    public function detalle_tiendas_cajamarca($value)
    {
        $data_tienda = Tienda::where('slug',$value)->where('estado','=','1')->where('ciudad','=','cajamarca')->get();
        $id_tienda = '';
        foreach ($data_tienda as $data){
            $id_tienda = $data->id;
        }
        $horario = Horario::where('id_tienda','=',$id_tienda)->where('estado','=','1')->where('ciudad','cajamarca')->orderBy('dia','Asc')->orderBy('hora_ini','Asc')->get();
        $categoria = DB::table('detalle_categoria_tiendas')->join('categoria_tiendas','detalle_categoria_tiendas.id_categoria','=','categoria_tiendas.id')
                    ->select('categoria_tiendas.nombre')->where('detalle_categoria_tiendas.id_tienda','=',$id_tienda)->where('categoria_tiendas.estado','=','1')
                    ->where('detalle_categoria_tiendas.ciudad','cajamarca')->orderBy('categoria_tiendas.nombre','Asc')->get();
        return view('web.cajamarca.stores-internal-cajamarca', compact('data_tienda','horario','categoria'));
    }

    public function tiendas_ica()
    {
        return view('web.ica.stores-ica');
    }

    public function promociones_ica()
    {
        return view('web.ica.promotions-ica');
    }

    public function eventos_ica()
    {
        return view('web.ica.events-ica');
    }

    public function carteleras_ica()
    {
        return view('web.ica.billboard-ica');
    }

    public function carteleras_detalle_ica($value)
    {
        $data_cartelera = Billboard::where('slug',$value)->where('estado','=','1')->where('ciudad','=','ica')->get();
        $id_cartelera='';
        foreach ($data_cartelera as $data){
            $id_cartelera = $data->id;
        }
        $actores = Actor::where('id_cartelera', '=', $id_cartelera)->get();
        return view('web.ica.billboard-internal-ica', compact('data_cartelera','actores'));
    }

    public function suscripcion_ica(){
        return view('web.ica.suscripcion-ica');
    }

    public function abrir_tienda_ica(){
        return view('web.ica.abrir-tienda-ica');
    }

    public function home_cajamarca()
    {
        return view('web.cajamarca.home-cajamarca');
    }

    public function nosotros_cajamarca()
    {
        return view('web.cajamarca.about-cajamarca');
    }

    public function tiendas_cajamarca()
    {
        return view('web.cajamarca.stores-cajamarca');
    }

    public function promociones_cajamarca()
    {
        return view('web.cajamarca.promotions-cajamarca');
    }

    public function eventos_cajamarca()
    {
        return view('web.cajamarca.events-cajamarca');
    }

    public function carteleras_cajamarca()
    {
        return view('web.cajamarca.billboard-cajamarca');
    }

    public function carteleras_detalle_cajamarca($value)
    {
        $data_cartelera = Billboard::where('slug',$value)->where('estado','=','1')->where('ciudad','=','cajamarca')->get();
        $id_cartelera='';
        foreach ($data_cartelera as $data){
            $id_cartelera = $data->id;
        }
        $actores = Actor::where('id_cartelera', '=', $id_cartelera)->get();
        return view('web.cajamarca.billboard-internal-cajamarca', compact('data_cartelera','actores'));
    }

    public function suscripcion_cajamarca(){
        return view('web.cajamarca.suscripcion-cajamarca');
    }

    public function abrir_tienda_cajamarca(){
        return view('web.cajamarca.abrir-tienda-cajamarca');
    }

    public function NuevoRegistro(Request $request, $value)
    {
        $email_reg = '';
        $data_registros = Registro::where('email','=', $request->email)->get();
        foreach($data_registros as $d){
            $email_reg = $d->email;
        }

        $dni_reg = '';
        $data_registros2 = Registro::where('dni','=', $request->dni)->get();
        foreach($data_registros2 as $da){
            $dni_reg = $da->dni;
        }

        if($email_reg == $request->email) {
            $notificacion = array(
                'message' => 'Ya se encuentra registrado con este correo electrónico, en nuestra Base de Datos!',
                'alert_type' => 'error'
            );
            return response()->json(['mensaje' => $notificacion]);
        }
        if($dni_reg == $request->dni){
            $notificacion = array(
                'message' => 'Ya se encuentra registrado con este número de DNI, en nuestra Base de Datos!',
                'alert_type' => 'error'
            );
            return response()->json(['mensaje'=>$notificacion ]);
        }

        if (!is_numeric($request->dni) || strlen($request->dni)< 8){
            $notificacion = array(
                'message' => 'Ingrese un DNI correcto!. Debe contener solo números con 8 dígitos.',
                'alert_type' => 'error'
            );
            return response()->json(['mensaje'=>$notificacion ]);
        }

        $registro = new Registro;
        $registro->nombres = $request->nombres;
        $registro->apellidos = $request->apellidos;
        $registro->email = $request->email;
        $registro->celular = $request->celular;
        $registro->fecha_nac = $request->fecha_nac;
        $registro->dni = $request->dni;
        $registro->tyc = '1';
        $registro->estado = '1';
        $registro->ciudad = $value;
        $registro->save();

        if($registro->save() > 0)
        {
           
            $email_usr = $request->email;
            Mail::to($email_usr)->send(new FormularioSuscribete());
                      

            $notificacion = array(
                'message' => '¡Se registró con éxito! Pronto recibirá nuestras ofertas y promociones a su correo electrónico.',
                'alert_type' => 'success'
            );
            return response()->json(['mensaje'=>$notificacion ]);
        }else{
 
            $notificacion = array(
                'message' => 'Ocurrió un problema al intentar registrarse',
                'alert_type' => 'error'
            );
            return response()->json(['mensaje'=>$notificacion ]);

        }
    }

    public function AbrirTienda(Request $request, $value)
    {
        $foto = $request->file('foto');

        $negocio_reg = '';
        $data_registrados = RegistroTienda::where('nombre_negocio','=', $request->nombre_negocio)->where('ciudad','=',$value)->get();
        foreach($data_registrados as $d){
            $negocio_reg = $d->nombre_negocio;
        }

        if($negocio_reg == $request->nombre_negocio){
            $notificacion = array(
                'message' => 'Este nombre ya se encuentra registrado!',
                'alert_type' => 'error'
            );
            return response()->json(['mensaje'=>$notificacion ]);
        }else{

            $registro = new RegistroTienda;
            $registro->nombre_negocio = $request->nombre_negocio;
            $registro->categoria = $request->categoria;
            $registro->experiencia = $request->experiencia;
            $registro->formato_negocio = $request->formato_negocio;
            $registro->descripcion_negocio = $request->descripcion_negocio;
            if ($request->cc_negocio == 'on'){
                $registro->cc_negocio = 'ica';
            }else{
                $registro->cc_negocio = '';
            }
            if ($request->cc_negocio2 == 'on'){
                $registro->cc_negocio2 = 'cajamarca';
            }else{
                $registro->cc_negocio2 = '';
            }
            if (!empty($foto)) {
                $foto_cort = strtolower($foto->getClientOriginalName());
                $nom_foto = uniqid() . '_' . preg_replace('/\s+/', '-', $foto_cort);
                \Storage::disk('public')->put($nom_foto, \File::get($foto));
                $registro->foto_ref = $nom_foto;
            }
            $registro->nombre_contacto = $request->nombre_contacto;
            $registro->apellido_contacto = $request->apellido_contacto;
            $registro->email_contacto = $request->email_contacto;
            $registro->telefono_contacto = $request->telefono_contacto;
            $registro->dni_contacto = $request->dni_contacto;
            $registro->ciudad = $value;
            $registro->save();

            
            $email2 = 'infoperu@parauco.com';
            Mail::to($email2)->send(new RegistroAbrirTienda());

            if($registro->save() > 0)
            {
                $notificacion = array(
                    'message' => '¡Gracias por confiar en nosotros! Pronto nuestro equipo se comunicará con usted.',
                    'alert_type' => 'success'
                );
                return response()->json(['mensaje'=>$notificacion ]);
            }else{

                $notificacion = array(
                    'message' => 'Ocurrió un problema al intentar abrir tienda',
                    'alert_type' => 'error'
                );
                return response()->json(['mensaje'=>$notificacion ]);

            }
        }
    }

    public function Sitemap(){
        $peliculas = Billboard::where('estado','1')->get();
        return response()->view('sitemap',compact('peliculas'))->header('Content-Type', 'text/xml');
    }

    public function BuscadorIca(){

        return new Buscador(['buscar'=>'buscar_ica']);
    }

    public function BuscadorCajamarca(){
        return new BuscadorCajamarca(['buscar'=>'buscar_ica']);
    }
	    
	public function dia_del_shopping_ica()
    {
        return view('web.ica.Landings.diadelshopping');
    }
	public function dia_del_shopping_cajamarca()
    {
        return view('web.cajamarca.Landings.diadelshopping');
    }
	
	
}
