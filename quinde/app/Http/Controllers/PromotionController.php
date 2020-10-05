<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Promotion; 
use App\Horario;
use Carbon\Carbon;
use App\Http\Resources\Promotion as PromotionResource;
use App\Http\Resources\WebDataPromotion as WebDataPromotionResource;
use Illuminate\Support\Facades\DB;

class PromotionController extends Controller
{
    public function __construct()
	{
        header('Access-Control-Allow-Origin: *');
    }
    
    public function AdminDataPromotion(Request $request, $value)
    {
        return PromotionResource::collection(DB::table('promotions')->select('*')->where('ciudad','=',$value)->orderBy('fecha','Desc')->get());
    }

    public function AdminDetallePromotion(Request $request, $id)
    {
        return PromotionResource::collection(DB::table('promotions')->select('*')->where('id','=',$id)->orderBy('fecha','Desc')->get());
    }

    public function AdminNuevaPromocion(Request $request)
    {
        $imagen = $request->file('imagen');
        $slug = strtolower($request->nombre);

        $promocion = new Promotion;
        $promocion->slug = preg_replace('/\s+/', '-', $slug);
        $promocion->nombre = $request->nombre;
        if (!empty($imagen)) {
            $nom_imagen = uniqid() . '_' . $imagen->getClientOriginalName();
            \Storage::disk('public')->put($nom_imagen, \File::get($imagen));
            $promocion->imagen = $nom_imagen;
        }
        $promocion->descripcion = $request->descripcion;
        $promocion->fecha = $request->fecha;
        $promocion->estado = $request->estado;
        $promocion->ciudad = $request->ciudad;
        $promocion->save();

        if($promocion->save() > 0)
        {
            $notificacion = array(
                'message' => 'Se agregó la nueva promoción con éxito',
                'alert_type' => 'success'
            );
            return response()->json(['mensaje'=>$notificacion ]);
        }else{

            $notificacion = array(
                'message' => 'Ocurrió un problema al registrar una nueva promoción',
                'alert_type' => 'error'
            );
            return response()->json(['mensaje'=>$notificacion ]);
        }

    }

    public function AdminEditarPromocion(Request $request, $id)
    {
       
        $editar_p = Promotion::where('id', $id)->update([
            'slug' => $request->slug,
            'nombre' => $request->nombre,
            'descripcion' => $request->descripcion,
            'fecha' => $request->fecha,
            'estado' => $request->estado,
            'updated_at' => Carbon::now()->format('Y-m-d H:i:s')
        ]);

        $imagen = $request->file('imagen');

        if (!empty($imagen)) {
            $nom_imagen = uniqid() . '_' . $imagen->getClientOriginalName();
        
            $editar_img = Promotion::where('id', $id)->update([
                'imagen' => $nom_imagen,
                'updated_at' => Carbon::now()->format('Y-m-d H:i:s')
            ]);

            \Storage::disk('public')->put($nom_imagen, \File::get($imagen));

        }
        
        if($editar_p > 0)
        {
            $notificacion = array(
                'message' => 'Se actualizó los datos de la promoción con éxito',
                'alert_type' => 'success'
            );
            return response()->json(['mensaje'=>$notificacion ]);
        }else{
            $notificacion = array(
                'message' => 'Ocurrió un problema al intentar actualizar la promoción',
                'alert_type' => 'success'
            );
            return response()->json(['mensaje'=>$notificacion ]);
        }

    }

    public function AdminEliminarImagenPromocion(Request $request, $id)
    {
        $promociones = Promotion::where('id', $id)->get();
        $imagen_p = '';
        foreach($promociones as $p){
            $imagen_p = $p->imagen;
        }

        $editar_p = Promotion::where('id', $id)->update([
            'imagen' => '',
            'updated_at' => Carbon::now()->format('Y-m-d H:i:s')
        ]);

        \Storage::disk('public')->delete($imagen_p);
        if($editar_p > 0){
            $notificacion = array(
                'message' => 'Se eliminó la imagen con éxito',
                'alert_type' => 'success'
            );
            return response()->json(['mensaje'=>$notificacion ]);
        }else{
            $notificacion = array(
                'message' => 'No se pudo eliminar la imagen',
                'alert_type' => 'success'
            );
            return response()->json(['mensaje'=>$notificacion ]);
        }    
    
    }

    public function AdminCambiarEstadoPromocion(Request $request, $id)
    {
        $actualizar = Promotion::where('id', $id)->update(['estado' => $request->estado, 'updated_at' => Carbon::now()->format('Y-m-d H:i:s')]);
        if($actualizar > 0)
        {
            if($request->estado == 1){
                $notificacion = array(
                    'message' => 'Se habilitó la promoción',
                    'alert_type' => 'success'
                );
                return response()->json(['mensaje'=>$notificacion ]);
            }else if($request->estado == 0){
                $notificacion = array(
                    'message' => 'Se deshabilitó la promoción',
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
                'message' => 'Ocurrió un problema al intentar cambiar el estado de la promoción',
                'alert_type' => 'error'
            );
            return response()->json(['mensaje'=>$notificacion ]);
        }
    }

    public function AdminEliminarPromocion(Request $request, $id)
    {
        $promociones = Promotion::where('id', $id)->get();
        $imagen_p = '';
        foreach($promociones as $p){
            $imagen_p = $p->imagen;
        }

        \Storage::disk('public')->delete($imagen_p);

        $eliminar_p = Promotion::where('id', $id)->delete();

        if($eliminar_p > 0)
        {
            $notificacion = array(
                'message' => 'Se eliminó la promoción con éxito',
                'alert_type' => 'success'
            );
            return response()->json(['mensaje'=>$notificacion ]);
        }else{
            $notificacion = array(
                'message' => 'Ocurrió un problema al intentar eliminar la promoción o la promoción seleccionada no existe',
                'alert_type' => 'error'
            );
            return response()->json(['mensaje'=>$notificacion ]);
        }
    }

    public function FiltroFechaPromocion(Request $request)
    {
        if($request->ciudad == 'ica'){
            $seccion = '7';
        }elseif($request->ciudad == 'cajamarca'){
            $seccion = '8';
        }else{
            $seccion='';
        }

        $actualizar = Horario::where('estado','=','1')->where('ciudad','=',$request->ciudad)->where('seccion','=',$seccion)->update(['fecha_ini' => $request->fecha_ini, 'fecha_fin' => $request->fecha_fin, 'updated_at' => Carbon::now()->format('Y-m-d H:i:s')]);

        if($actualizar)
        {
            $notificacion = array(
                'message' => 'Filtro de fecha asignada',
                'alert_type' => 'success'
            );
            return response()->json(['mensaje'=>$notificacion ]);
        }else{
            $notificacion = array(
                'message' => 'Ocurrió un problema',
                'alert_type' => 'error'
            );
            return response()->json(['mensaje'=>$notificacion ]);
        }
    }

}
