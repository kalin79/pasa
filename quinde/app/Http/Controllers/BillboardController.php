<?php

namespace App\Http\Controllers;

use App\Billboard;
use Carbon\Carbon;
use App\Actor;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Http\Resources\Cartelera as CarteleraResource; 

class BillboardController extends Controller
{
    public function __construct()
	{
        header('Access-Control-Allow-Origin: *');
    }
    
    public function AdminDataCartelera($value)
    {
        return CarteleraResource::collection(DB::table('billboards')->select('*')->where('ciudad','=',$value)->orderBy('fecha','Desc')->get());
    }

    public function AdminDetalleCartelera($id)
    {
        return CarteleraResource::collection(DB::table('billboards')->select('*')->where('id','=',$id)->orderBy('fecha','Desc')->get());
    }

    public function AdminNuevaPelicula(Request $request)
    {
        $img_presentacion = $request->file('img_presentacion');
        $img_background = $request->file('img_background');
        $slug = strtolower($request->titulo);

        $pelicula = new Billboard;
        if (!empty($img_presentacion)) {
            $nom_imagen = uniqid() . '_' . $img_presentacion->getClientOriginalName();
            \Storage::disk('public')->put($nom_imagen, \File::get($img_presentacion));
            $pelicula->img_presentacion = $nom_imagen;
        }

        if (!empty($img_background)) {
            $nom_imagen_ = uniqid() . '_' . $img_background->getClientOriginalName();
            \Storage::disk('public')->put($nom_imagen_, \File::get($img_background));
            $pelicula->img_background = $nom_imagen_;
        }
        $pelicula->titulo = $request->titulo;
        $pelicula->slug = preg_replace('/\s+/', '-', $slug);
        $pelicula->video_background = $request->video_background;
        $pelicula->director = $request->director;
        $pelicula->destacado = $request->destacado;
        $pelicula->sinopsis = $request->sinopsis;
        $pelicula->duracion = $request->duracion;
        $pelicula->fecha = $request->fecha;
        $pelicula->idioma = $request->idioma; 
        $pelicula->estreno = $request->estreno;      
        $pelicula->estado = $request->estado;
        $pelicula->destacado = $request->destacado;
        $pelicula->ciudad = $request->ciudad;
        $pelicula->save();

        if(!empty($request->actores)){
            $peli = DB::table('billboards')->select('id')->where('titulo','=',$request->titulo)->take(1)->get();
            $insert_actors = array();
            foreach ($request->actores as $key => $actor)
            {
                $insert_actors[$key]['id_cartelera'] = $peli[0]->id;
                $insert_actors[$key]['nombre'] = $actor;
                $insert_actors[$key]['estado'] = '1';
                $insert_actors[$key]['created_at'] = Carbon::now()->format('Y-m-d H:i:s');
                $insert_actors[$key]['updated_at'] = Carbon::now()->format('Y-m-d H:i:s');
            }
            Actor::insert($insert_actors);
        }

        if($pelicula->save() > 0)
        {
            $notificacion = array(
                'message' => 'Se agregó la nueva película con éxito',
                'alert_type' => 'success'
            );
            return response()->json(['mensaje'=>$notificacion ]);
        }else{
            $notificacion = array(
                'message' => 'Ocurrió un problema al registrar una nueva película',
                'alert_type' => 'error'
            );
            return response()->json(['mensaje'=>$notificacion ]);
        }

    }

    public function AdminEditarPelicula(Request $request, $id)
    {
        $editar_p = Billboard::where('id', $id)->update([
            'titulo' => $request->titulo,
            'slug' => $request->slug,
            'video_background' => $request->video_background,
            'director' => $request->director,
            'sinopsis' => $request->sinopsis,
            'duracion' => $request->duracion,
            'fecha' => $request->fecha,
            'idioma' => $request->idioma, 
            'estreno' => $request->estreno, 
            'destacado' => $request->destacado,     
            'estado' => $request->estado,
            'updated_at' => Carbon::now()->format('Y-m-d H:i:s')
        ]);

        $img_presentacion = $request->file('img_presentacion');
        $img_background = $request->file('img_background');

        if (!empty($img_presentacion)) {
            $nom_imagen = uniqid() . '_' . $img_presentacion->getClientOriginalName();
            $editar_img = Billboard::where('id', $id)->update([
                'img_presentacion' => $nom_imagen,
                'updated_at' => Carbon::now()->format('Y-m-d H:i:s')
            ]);
            \Storage::disk('public')->put($nom_imagen, \File::get($img_presentacion));
        }

        if (!empty($img_background)) {
            $nom_imagen_ = uniqid() . '_' . $img_background->getClientOriginalName();
            $editar_img = Billboard::where('id', $id)->update([
                'img_background' => $nom_imagen_,
                'updated_at' => Carbon::now()->format('Y-m-d H:i:s')
            ]);
            \Storage::disk('public')->put($nom_imagen_, \File::get($img_background));
        }

        if(!empty($request->actores)){

            $eliminar_act = Actor::where('id_cartelera', $id)->delete();

            $peli = DB::table('billboards')->select('id')->where('id','=',$id)->take(1)->get();

            $insert_actors = array();
            foreach ($request->actores as $key => $actor)
            {
                $insert_actors[$key]['id_cartelera'] = $peli[0]->id;
                $insert_actors[$key]['nombre'] = $actor;
                $insert_actors[$key]['estado'] = '1';
                $insert_actors[$key]['created_at'] = Carbon::now()->format('Y-m-d H:i:s');
                $insert_actors[$key]['updated_at'] = Carbon::now()->format('Y-m-d H:i:s');
                 
            }
            Actor::insert($insert_actors);
        }else if(empty($request->actores)){
            $eliminar_act = Actor::where('id_cartelera', $id)->delete();
        }

        
        if($editar_p > 0)
        {
            $notificacion = array(
                'message' => 'Se actualizó los datos de la película con éxito',
                'alert_type' => 'success'
            );
            return response()->json(['mensaje'=>$notificacion ]);
        }else{
            $notificacion = array(
                'message' => 'Ocurrió un problema al intentar actualizar la película',
                'alert_type' => 'success'
            );
            return response()->json(['mensaje'=>$notificacion ]);
        }

    }

    public function AdminCambiarEstadoPelicula(Request $request, $id)
    {
        $actualizar = Billboard::where('id', $id)->update(['estado' => $request->estado, 'updated_at' => Carbon::now()->format('Y-m-d H:i:s')]);
        if($actualizar > 0)
        {
            if($request->estado == 1){
                $notificacion = array(
                    'message' => 'Se habilitó la película, podrá visualizarlo en la web',
                    'alert_type' => 'success'
                );
                return response()->json(['mensaje'=>$notificacion ]);
            }else if($request->estado == 0){
                $notificacion = array(
                    'message' => 'Se deshabilitó la película',
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
                'message' => 'Ocurrió un problema al intentar cambiar el estado de la película',
                'alert_type' => 'error'
            );
            return response()->json(['mensaje'=>$notificacion ]);
        }
    }

    public function AdminEliminarImagenPelicula(Request $request, $id)
    {
        $peliculas = Billboard::where('id', $id)->get();
        $img_presentacion = '';
        $img_background = '';
        foreach($peliculas as $p){
            $img_presentacion = $p->img_presentacion;
            $img_background = $p->img_background;
        }

        if (!empty($request->pi_presentacion)) {
            $editar_p = Billboard::where('id', $id)->update([
                'img_presentacion' => '',
                'updated_at' => Carbon::now()->format('Y-m-d H:i:s')
            ]);

            \Storage::disk('public')->delete($img_presentacion);

            $notificacion = array(
                'message' => 'Se eliminó la imagen de presentación con éxito',
                'alert_type' => 'success'
            );
            return response()->json(['mensaje'=>$notificacion ]);
        }

        if (!empty($request->pi_background)) {
            $editar_p = Billboard::where('id', $id)->update([
                'img_background' => '',
                'updated_at' => Carbon::now()->format('Y-m-d H:i:s')
            ]);

            \Storage::disk('public')->delete($img_background);
            $notificacion = array(
                'message' => 'Se eliminó la imagen del background con éxito',
                'alert_type' => 'success'
            );
            return response()->json(['mensaje'=>$notificacion ]);
        }

        
    }

    public function AdminEliminarPelicula(Request $request, $id)
    {
        $peliculas = Billboard::where('id', $id)->get();
        $img_presentacion = '';
        $img_background = '';
        foreach($peliculas as $p){
            $img_presentacion = $p->img_presentacion;
            $img_background = $p->img_background;
        }

        \Storage::disk('public')->delete($img_presentacion);
        \Storage::disk('public')->delete($img_background);

        $eliminar_p = Billboard::where('id', $id)->delete();

        if($eliminar_p > 0)
        {
            $notificacion = array(
                'message' => 'Se eliminó la película con éxito',
                'alert_type' => 'success'
            );
            return response()->json(['mensaje'=>$notificacion ]);
        }else{
            $notificacion = array(
                'message' => 'Ocurrió un problema al intentar eliminar la película o la película seleccionada no existe',
                'alert_type' => 'error'
            );
            return response()->json(['mensaje'=>$notificacion ]);
        }
    }
}