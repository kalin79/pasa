<?php

namespace App\Http\Controllers;

use App\Event;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Http\Resources\Eventos as EventosResource;

class EventController extends Controller
{
    public function __construct()
	{
        header('Access-Control-Allow-Origin: *');
    }
    
    public function AdminDataEventos(Request $request, $value)
    {
        return EventosResource::collection(DB::table('events')->select('*')->where('ciudad','=',$value)->orderBy('fecha_ini','Desc')->get());
    }

    public function AdminDetalleEventos(Request $request, $id)
    {
        return EventosResource::collection(DB::table('events')->select('*')->where('id','=',$id)->orderBy('fecha_ini','Desc')->get());
    }

    public function AdminNuevoEvento(Request $request)
    {
        $imagen = $request->file('imagen');
        $slug = strtolower($request->titulo);

        $evento = new Event;
        $evento->slug = preg_replace('/\s+/', '-', $slug);
        if (!empty($imagen)) {
            $nom_imagen = uniqid() . '_' . $imagen->getClientOriginalName();
            \Storage::disk('public')->put($nom_imagen, \File::get($imagen));
            $evento->imagen = $nom_imagen;
        }
        $evento->titulo = $request->titulo;
        $evento->descripcion = $request->descripcion;
        $evento->lugar = $request->lugar;
        $evento->fecha_ini = $request->fecha_ini;
        $evento->fecha_fin = $request->fecha_fin;
        $evento->estado = $request->estado;
        $evento->ciudad = $request->ciudad;
        $evento->save();

        if($evento->save() > 0)
        {
            $notificacion = array(
                'message' => 'Se agregó un nuevo evento con éxito',
                'alert_type' => 'success'
            );
            return response()->json(['mensaje'=>$notificacion ]);
        }else{

            $notificacion = array(
                'message' => 'Ocurrió un problema al intentar registrar un nuevo evento',
                'alert_type' => 'error'
            );
            return response()->json(['mensaje'=>$notificacion ]);

        }

    }

    public function AdminEditarEvento(Request $request, $id)
    {
        $editar_e = Event::where('id', $id)->update([
            'slug' => $request->slug,
            'titulo' => $request->titulo,
            'descripcion' => $request->descripcion,
            'lugar' => $request->lugar,
            'fecha_ini' => $request->fecha_ini,
            'fecha_fin' => $request->fecha_fin,
            'estado' => $request->estado,
            'updated_at' => Carbon::now()->format('Y-m-d H:i:s')
        ]);

        $imagen = $request->file('imagen');

        if (!empty($imagen)) {
            $nom_imagen = uniqid() . '_' . $imagen->getClientOriginalName();
        
            $editar_img = Event::where('id', $id)->update([
                'imagen' => $nom_imagen,
                'updated_at' => Carbon::now()->format('Y-m-d H:i:s')
            ]);

            \Storage::disk('public')->put($nom_imagen, \File::get($imagen));

        }
        
        if($editar_e > 0)
        {
            $notificacion = array(
                'message' => 'Se actualizó los datos del evento con éxito',
                'alert_type' => 'success'
            );
            return response()->json(['mensaje'=>$notificacion ]);
        }else{
            $notificacion = array(
                'message' => 'Ocurrió un problema al intentar actualizar el evento',
                'alert_type' => 'success'
            );
            return response()->json(['mensaje'=>$notificacion ]);
        }

    }

    public function AdminCambiarEstadoEvento(Request $request, $id)
    {
        $actualizar = Event::where('id', $id)->update(['estado' => $request->estado, 'updated_at' => Carbon::now()->format('Y-m-d H:i:s')]);
        if($actualizar > 0)
        {
            if($request->estado == 1){
                $notificacion = array(
                    'message' => 'Se habilitó el evento, podrá visualizarlo en la web',
                    'alert_type' => 'success'
                );
                return response()->json(['mensaje'=>$notificacion ]);
            }else if($request->estado == 0){
                $notificacion = array(
                    'message' => 'Se deshabilitó el evento',
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
                'message' => 'Ocurrió un problema al intentar cambiar el estado del evento',
                'alert_type' => 'error'
            );
            return response()->json(['mensaje'=>$notificacion ]);
        }
    }

    public function AdminEliminarImagenEvento(Request $request, $id)
    {
        $eventos = Event::where('id', $id)->get();
        $imagen_e = '';
        foreach($eventos as $e){
            $imagen_e = $e->imagen;
        }

        $editar_e = Event::where('id', $id)->update([
            'imagen' => '',
            'updated_at' => Carbon::now()->format('Y-m-d H:i:s')
        ]);

        \Storage::disk('public')->delete($imagen_e);
        if($editar_e > 0){
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

    public function AdminEliminarEvento(Request $request, $id)
    {
        $eventos = Event::where('id', $id)->get();
        $imagen_e = '';
        foreach($eventos as $e){
            $imagen_e = $e->imagen;
        }

        \Storage::disk('public')->delete($imagen_e);

        $eliminar_e = Event::where('id', $id)->delete();

        if($eliminar_e > 0)
        {
            $notificacion = array(
                'message' => 'Se eliminó el evento con éxito',
                'alert_type' => 'success'
            );
            return response()->json(['mensaje'=>$notificacion ]);
        }else{
            $notificacion = array(
                'message' => 'Ocurrió un problema al intentar eliminar el evento o el evento seleccionada no existe',
                'alert_type' => 'error'
            );
            return response()->json(['mensaje'=>$notificacion ]);
        }
    }

}
