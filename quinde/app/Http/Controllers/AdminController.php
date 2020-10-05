<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Resources\DataSuscritos as DataSuscritosResource;  
use Illuminate\Support\Facades\DB;
use Carbon\Carbon;
use App\Image;

class AdminController extends Controller
{
    public function __construct()
	{
        header('Access-Control-Allow-Origin: *');
    }

    public function home_ica()
    {
        if(auth()->guest()){
            return \Redirect::to('login');
        }else{
            return view('administrador.admin-home-ica');
        }
    }

    public function home_caja()
    {
        if(auth()->guest()){
            return \Redirect::to('login');
        }else{
            return view('administrador.admin-home-caja');
        }
    }
    
    public function nosotros_ica()
    {
        if(auth()->guest()){
            return \Redirect::to('login');
        }else{
            return view('administrador.admin-nosotros-ica');
        }
    }

    public function nosotros_caja()
    {
        if(auth()->guest()){
            return \Redirect::to('login');
        }else{
            return view('administrador.admin-nosotros-caja');
        }
    }

    public function tiendas_ica()
    {
        if(auth()->guest()){
            return \Redirect::to('login');
        }else{
            return view('administrador.admin-tiendas-ica');
        }
    }

    public function tiendas_caja()
    {
        if(auth()->guest()){
            return \Redirect::to('login');
        }else{
            return view('administrador.admin-tiendas-caja');
        }
    }

    public function promociones_ica()
    {
        if(auth()->guest()){
            return \Redirect::to('login');
        }else{
            return view('administrador.admin-promociones-ica');
        }
    }

    public function promociones_caja()
    {
        if(auth()->guest()){
            return \Redirect::to('login');
        }else{
            return view('administrador.admin-promociones-caja');
        }
    }

    public function eventos_ica()
    {
        if(auth()->guest()){
            return \Redirect::to('login');
        }else{
            return view('administrador.admin-eventos-ica');
        }
    }

    public function eventos_caja()
    {
        if(auth()->guest()){
            return \Redirect::to('login');
        }else{
            return view('administrador.admin-eventos-caja');
        }
    }

    public function carteleras_ica()
    {
        if(auth()->guest()){
            return \Redirect::to('login');
        }else{
            return view('administrador.admin-carteleras-ica');
        }
    }

    public function carteleras_caja()
    {
        if(auth()->guest()){
            return \Redirect::to('login');
        }else{
            return view('administrador.admin-carteleras-caja');
        }
    }

    public function suscritos_ica()
    {
        if(auth()->guest()){
            return \Redirect::to('login');
        }else{
            return view('administrador.admin-suscritos-ica');
        }
    }

    public function suscritos_caja()
    {
        if(auth()->guest()){
            return \Redirect::to('login');
        }else{
            return view('administrador.admin-suscritos-caja');
        }
    }

    public function footer_ica()
    {
        if(auth()->guest()){
            return \Redirect::to('login');
        }else{
            return view('administrador.admin-footer-ica');
        }
    }

    public function footer_caja()
    {
        if(auth()->guest()){
            return \Redirect::to('login');
        }else{
            return view('administrador.admin-footer-caja');
        }
    }

    public function perfil()
    {
        if(auth()->guest()){
            return \Redirect::to('login');
        }else{
            return view('administrador.admin-perfil');
        }
    }

    public function DataSuscritos(Request $request, $value)
    {
        return DataSuscritosResource::collection(DB::table('registros')->select('*')->where('ciudad','=',$value)->orderBy('created_at','Asc')->get());
    }

    public function CambiarEstadoRRSS(Request $request, $id)
    {
        $actualizar = Image::where('id', $id)->where('seccion', '=', 'FOOTER')->update(['estado' => $request->estado, 'updated_at' => Carbon::now()->format('Y-m-d H:i:s')]);
        if($actualizar > 0)
        {
            if($request->estado == 1){
                $notificacion = array(
                    'message' => 'Se habilitó la red social, podrá visualizarlo en la web',
                    'alert_type' => 'success'
                );
                return response()->json(['mensaje'=>$notificacion ]);
            }else if($request->estado == 0){
                $notificacion = array(
                    'message' => 'Se deshabilitó la red social, ahora no está disponible en la web',
                    'alert_type' => 'success'
                );
                return response()->json(['mensaje'=>$notificacion ]);
            }else{
                $notificacion = array(
                    'message' => 'Valor de estado ingresado no válido',
                    'alert_type' => 'error'
                );
                return response()->json(['mensaje'=>$notificacion ]);
            }
        }else{
            $notificacion = array(
                'message' => 'Ocurrió un problema al intentar cambiar el estado',
                'alert_type' => 'error'
            );
            return response()->json(['mensaje'=>$notificacion ]);
        }
    }

    public function EditarRRSS(Request $request, $id)
    {  
        $editar_rrss = Image::where('id', $id)->update([
            'link' => $request->link,
            'updated_at' => Carbon::now()->format('Y-m-d H:i:s')
        ]);
        
        if($editar_rrss > 0)
        {
            $notificacion = array(
                'message' => 'Se actualizó los datos de la red social con éxito',
                'alert_type' => 'success'
            );
            return response()->json(['mensaje'=>$notificacion ]);
        }else{
            $notificacion = array(
                'message' => 'Ocurrió un problema al intentar actualizar la red social',
                'alert_type' => 'error'
            );
            return response()->json(['mensaje'=>$notificacion ]); 
        }

    }

}
