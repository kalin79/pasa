<?php

namespace App\Http\Controllers;

use App\DetalleCategoriaTienda;
use App\Horario;
use App\Http\Resources\DataHorarios;
use App\Tienda;
use App\Menu; 
use App\Image;
use App\Http\Resources\Tienda as TiendaResource;
use App\Http\Resources\WebDataTienda as WebDataTiendaResource;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Carbon\Carbon;
use Illuminate\Support\Facades\Storage;

class TiendaController extends Controller
{
    public function __construct()
	{
        header('Access-Control-Allow-Origin: *');
    }

    public function VerInformacion($value){
        $_camp = $value;
        return view("web.cajamarca.politicas", compact('_camp'));
    }

    public function VerInformacion2(){
        return view("web.cajamarca.politicas");
    }

    public function VerInformacionIca($value){
        $_camp = $value;
        // dd($_camp);
        return view("web.ica.politicas", compact('_camp'));
    }

    public function VerInformacionIca2(){
        $_camp = '';
        return view("web.ica.politicas", compact('_camp'));
    }

    public function AdminDataTienda(Request $request, $value)
    {
        return TiendaResource::collection(DB::table('tiendas')->select('*')->where('ciudad','=',$value)->orderBy('nombre','Asc')->get());
    }
    
    public function AdminDetalleTienda(Request $request, $id)
    {
        return TiendaResource::collection(DB::table('tiendas')->select('*')->where('id','=',$id)->orderBy('nombre','Asc')->get());
    }

    public function DataHorarios($value)
    {
        return DataHorarios::collection(DB::table('tiendas')->select('*')->where('estado','1')->where('ciudad',$value)->get());
    }

    public function AdminNuevaTienda(Request $request)
    {
        $logo = $request->file('logo');
        $imagen = $request->file('imagen');
        $slug = strtolower($request->nombre);

        $tienda = new Tienda;
        $tienda->slug = preg_replace('/\s+/', '-', $slug);
        $tienda->nombre = $request->nombre;
        $tienda->descripcion = $request->descripcion;
        if (!empty($logo)) {
            $nom_logo = uniqid() . '_' . $logo->getClientOriginalName();
            \Storage::disk('public')->put($nom_logo, \File::get($logo));
            $tienda->logo = $nom_logo;
        }

        if (!empty($imagen)) {
            $nom_imagen = uniqid() . '_' . $imagen->getClientOriginalName();
            \Storage::disk('public')->put($nom_imagen, \File::get($imagen));
            $tienda->imagen = $nom_imagen;
        }
        $tienda->ubicacion = $request->ubicacion;
        $tienda->nivel = $request->nivel;
        $tienda->estado = $request->estado;
        $tienda->ciudad = $request->ciudad;
        $tienda->save();

        if(!empty($request->categoria)){
            $tiendas = DB::table('tiendas')->select('id')->where('nombre','=',$request->nombre)->take(1)->get();
            $insert_cate = array();
            foreach ($request->categoria as $key => $cat)
            {
                $insert_cate[$key]['id_tienda'] = $tiendas[0]->id;
                $insert_cate[$key]['id_categoria'] = $cat;
                $insert_cate[$key]['ciudad'] = $request->ciudad;
                $insert_cate[$key]['estado'] = '1';
                $insert_cate[$key]['created_at'] = Carbon::now()->format('Y-m-d H:i:s');
                $insert_cate[$key]['updated_at'] = Carbon::now()->format('Y-m-d H:i:s');
            }
            DetalleCategoriaTienda::insert($insert_cate);

            DB::table('tiendas')
                ->where('id', $tiendas[0]->id)
                ->update([
                    'categoria' => DB::raw('(SELECT GROUP_CONCAT(id_categoria SEPARATOR \'|\') AS categoria FROM detalle_categoria_tiendas WHERE id_tienda = '.$tiendas[0]->id.' GROUP BY id_tienda)')
                ]);
        }

        if($tienda->save() > 0)
        {
            $notificacion = array(
                'message' => 'Se agregó la nueva tienda con éxito',
                'alert_type' => 'success'
            );
            return response()->json(['mensaje'=>$notificacion ]);
        }else{

            $notificacion = array(
                'message' => 'Ocurrió un problema al registrar una nueva tienda',
                'alert_type' => 'error'
            );
            return response()->json(['mensaje'=>$notificacion ]);

        }

    }

    public function AdminEditarTienda(Request $request, $id)
    {
        
        $editar_t = Tienda::where('id', $id)->update([
            'slug' => $request->slug,
            'nombre' => $request->nombre,
            'descripcion' => $request->descripcion,
            'ubicacion' => $request->ubicacion,
            'nivel' => $request->nivel,
            'estado' => $request->estado,
            'ciudad' => $request->ciudad,
            'updated_at' => Carbon::now()->format('Y-m-d H:i:s')
        ]);

        $logo = $request->file('logo_t');
        $imagen = $request->file('imagen_t');

        if (!empty($logo)) {
            $imgs = Tienda::where('id', $id)->get();
            $img_logo = '';
            foreach($imgs as $i){
                $img_logo = $i->logo;
            }
            Storage::disk('public')->delete($img_logo);


            $nom_logo = uniqid() . '_' . $logo->getClientOriginalName();
            \Storage::disk('public')->put($nom_logo, \File::get($logo));

            $editar_logo = Tienda::where('id', $id)->update([
                'logo' => $nom_logo,
                'updated_at' => Carbon::now()->format('Y-m-d H:i:s')
            ]);

        }

        if (!empty($imagen)) {
            $imgs = Tienda::where('id', $id)->get();
            $img_imagen = '';
            foreach($imgs as $i){
                $img_imagen = $i->imagen;
            }
            Storage::disk('public')->delete($img_imagen);

            $nom_imagen = uniqid() . '_' . $imagen->getClientOriginalName();
            Storage::disk('public')->put($nom_imagen, \File::get($imagen));

            $editar_img = Tienda::where('id', $id)->update([
                'imagen' => $nom_imagen,
                'updated_at' => Carbon::now()->format('Y-m-d H:i:s')
            ]);

        }

        if(!empty($request->categoria)){

            $eliminar_cate = DetalleCategoriaTienda::where('id_tienda', $id)->delete();

            $tiendas = DB::table('tiendas')->select('id')->where('id','=',$id)->take(1)->get();
            $insert_cate = array();
            foreach ($request->categoria as $key => $cat)
            {
                $insert_cate[$key]['id_tienda'] = $tiendas[0]->id;
                $insert_cate[$key]['id_categoria'] = $cat;
                $insert_cate[$key]['ciudad'] = $request->ciudad;
                $insert_cate[$key]['estado'] = '1';
                $insert_cate[$key]['created_at'] = Carbon::now()->format('Y-m-d H:i:s');
                $insert_cate[$key]['updated_at'] = Carbon::now()->format('Y-m-d H:i:s');
            }
            DetalleCategoriaTienda::insert($insert_cate);

            DB::table('tiendas')
                ->where('id', $tiendas[0]->id)
                ->update([
                    'categoria' => DB::raw('(SELECT GROUP_CONCAT(id_categoria SEPARATOR \'|\') AS categoria FROM detalle_categoria_tiendas WHERE id_tienda = '.$tiendas[0]->id.' GROUP BY id_tienda)')
                ]);
        }else if(empty($request->categoria)){
            $eliminar_cate = DetalleCategoriaTienda::where('id_tienda', $id)->delete();
        }
        
        if($editar_t > 0)
        {
            $notificacion = array(
                'message' => 'Se actualizó los datos de la tienda con éxito',
                'alert_type' => 'success'
            );
            return response()->json(['mensaje'=>$notificacion ]);
        }

    }
    
    public function AdminEliminarImagenTienda(Request $request, $id)
    {
        $tiendas = Tienda::where('id', $id)->get();
        $logo_t = '';
        $imagen_t = '';
        foreach($tiendas as $t){
            $logo_t = $t->logo;
            $imagen_t = $t->imagen;
        }

        if (!empty($request->t_logo)) {
            $editar_t = Tienda::where('id', $id)->update([
                'logo' => '',
                'updated_at' => Carbon::now()->format('Y-m-d H:i:s')
            ]);

            Storage::disk('public')->delete($logo_t);

            $notificacion = array(
                'message' => 'Se eliminó el logo con éxito',
                'alert_type' => 'success'
            );
            return response()->json(['mensaje'=>$notificacion ]);
        }

        if (!empty($request->t_imagen)) {
            $editar_t = Tienda::where('id', $id)->update([
                'imagen' => '',
                'updated_at' => Carbon::now()->format('Y-m-d H:i:s')
            ]);

            Storage::disk('public')->delete($imagen_t);
            $notificacion = array(
                'message' => 'Se eliminó la imagen con éxito',
                'alert_type' => 'success'
            );
            return response()->json(['mensaje'=>$notificacion ]);
        }
        
    }

    public function AdminCambiarEstadoTienda(Request $request, $id)
    {
        $actualizar = Tienda::where('id', $id)->update(['estado' => $request->estado, 'updated_at' => Carbon::now()->format('Y-m-d H:i:s')]);
        if($actualizar > 0)
        {
            if($request->estado == 1){
                $notificacion = array(
                    'message' => 'Se habilitó la tienda',
                    'alert_type' => 'success'
                );
                return response()->json(['mensaje'=>$notificacion ]);
            }else if($request->estado == 0){
                $notificacion = array(
                    'message' => 'Se deshabilitó la tienda',
                    'alert_type' => 'success'
                );
                return response()->json(['mensaje'=>$notificacion ]);
            }
        }else{
            $notificacion = array(
                'message' => 'Ocurrió un problema al intentar cambiar de estado a la tienda',
                'alert_type' => 'error'
            );
            return response()->json(['mensaje'=>$notificacion ]);
        }
    }

    public function AdminEliminarTienda(Request $request, $id)
    {
        $tiendas = Tienda::where('id', $id)->get();
        $logo_t = '';
        $imagen_t = '';
        foreach($tiendas as $t){
            $logo_t = $t->logo;
            $imagen_t = $t->imagen;
        }

        \Storage::disk('public')->delete($logo_t);
        \Storage::disk('public')->delete($imagen_t);

        $eliminar_t = Tienda::where('id', $id)->delete();

        if($eliminar_t > 0)
        {
            $notificacion = array(
                'message' => 'Se eliminó la tienda con éxito',
                'alert_type' => 'success'
            );
            return response()->json(['mensaje'=>$notificacion ]);
        }else{
            $notificacion = array(
                'message' => 'Ocurrió un problema al intentar eliminar la tienda',
                'alert_type' => 'error'
            );
            return response()->json(['mensaje'=>$notificacion ]);
        }
    }

    public function AdminAgregarBanner(Request $request)
    {
        $banner = $request->file('imagen');
        $data_tienda = $request->data_tienda;

        $data_banners = Menu::where('id', $data_tienda)->get();
        foreach($data_banners as $d){
            $seccion = $d->seccion;
            $ciudad = $d->ciudad;
        }

        $img_banner = new Image;
        if (!empty($banner)) {
            $nom_logo = uniqid() . '_' . $banner->getClientOriginalName();
            \Storage::disk('public')->put($nom_logo, \File::get($banner));
            $img_banner->imagen = $nom_logo;
        }
        $img_banner->seccion = $seccion;
        $img_banner->ciudad = $ciudad;
        $img_banner->estado = '1';
        $img_banner->save();

        if($img_banner->save() > 0)
        {
            $notificacion = array(
                'message' => 'Se agregó el banner con éxito',
                'alert_type' => 'success'
            );
            return response()->json(['mensaje'=>$notificacion ]);
        }else{

            $notificacion = array(
                'message' => 'Ocurrió un problema al registrar el banner',
                'alert_type' => 'error'
            );
            return response()->json(['mensaje'=>$notificacion ]);

        }

    }

    public function AdminCambiarEstadoBanner(Request $request, $id)
    {
        $actualizar = Image::where('id', $id)->update(['estado' => $request->estado, 'updated_at' => Carbon::now()->format('Y-m-d H:i:s')]);
        if($actualizar > 0)
        {
            if($request->estado == 1){
                $notificacion = array(
                    'message' => 'Se habilitó el banner con éxito',
                    'alert_type' => 'success'
                );
                return response()->json(['mensaje'=>$notificacion ]);
            }else if($request->estado == 0){
                $notificacion = array(
                    'message' => 'Se deshabilitó el banner',
                    'alert_type' => 'success'
                );
                return response()->json(['mensaje'=>$notificacion ]);
            }
        }else{
            $notificacion = array(
                'message' => 'Ocurrió un problema al intentar cambiar de estado del banner',
                'alert_type' => 'error'
            );
            return response()->json(['mensaje'=>$notificacion ]);
        }
    }

    public function AdminEliminarBanner(Request $request, $id)
    {
        $banner = Image::where('id', $id)->get();
        $imagen_b = '';
        foreach($banner as $b){
            $imagen_b = $b->imagen;
        }

        \Storage::disk('public')->delete($imagen_b);

        $eliminar_b = Image::where('id', $id)->delete();

        if($eliminar_b > 0)
        {
            $notificacion = array(
                'message' => 'Se eliminó el banner con éxito',
                'alert_type' => 'success'
            );
            return response()->json(['mensaje'=>$notificacion ]);
        }else{
            $notificacion = array(
                'message' => 'Ocurrió un problema al intentar eliminar el banner',
                'alert_type' => 'error'
            );
            return response()->json(['mensaje'=>$notificacion ]);
        }
    }

    public function AgregarHorario(Request $request,$value)
    {
        $horario = new Horario;
        $horario->id_tienda = $request->id_tienda;
        $horario->dia = $request->dia;
        $horario->hora_ini = $request->hora_ini;
        $horario->hora_fin = $request->hora_fin;
        $horario->estado = '1';
        $horario->ciudad = $value;
        if (isset($request->seccion)){
            $horario->seccion = $request->seccion;
        }
        $horario->save();

        if($horario->save() > 0)
        {
            $notificacion = array(
                'message' => 'Se agregó el horario para la tienda con éxito',
                'alert_type' => 'success'
            );
            return response()->json(['mensaje'=>$notificacion ]);
        }else{

            $notificacion = array(
                'message' => 'Ocurrió un problema al registrar el horario',
                'alert_type' => 'error'
            );
            return response()->json(['mensaje'=>$notificacion ]);

        }

    }

    public function EditarHorario(Request $request, $id)
    {
        $editar = Horario::where('id', $id)->update([
            'dia' => $request->dia,
            'hora_ini' => $request->hora_ini,
            'hora_fin' => $request->hora_fin,
            'estado' => $request->estado,
            'updated_at' => Carbon::now()->format('Y-m-d H:i:s')
        ]);

        if($editar > 0)
        {
            $notificacion = array(
                'message' => 'Se actualizó los datos del horario con éxito',
                'alert_type' => 'success'
            );
            return response()->json(['mensaje'=>$notificacion ]);
        }else{
            $notificacion = array(
                'message' => 'Ocurrió un problema al intentar editar el horario',
                'alert_type' => 'error'
            );
            return response()->json(['mensaje'=>$notificacion ]);
        }

    }

    public function EliminarHorario($id)
    {
        $eliminar = Horario::where('id', $id)->delete();

        if($eliminar > 0)
        {
            $notificacion = array(
                'message' => 'Se eliminó el horario con éxito',
                'alert_type' => 'success'
            );
            return response()->json(['mensaje'=>$notificacion ]);
        }else{
            $notificacion = array(
                'message' => 'Ocurrió un problema al intentar eliminar el horario',
                'alert_type' => 'error'
            );
            return response()->json(['mensaje'=>$notificacion ]);
        }
    }

    public function AgregarCategoria(Request $request,$value){

        $cate = new DetalleCategoriaTienda;
        $cate->id_tienda = $request->id_tienda;
        $cate->id_categoria = $request->id_categoria;
        $cate->estado = '1';
        $cate->ciudad = $value;
        $cate->save();

        $actualizar = DB::table('tiendas')
            ->where('id', $request->id_tienda)
            ->update([
                'categoria' => DB::raw('(SELECT GROUP_CONCAT(id_categoria SEPARATOR \'|\') AS categoria FROM detalle_categoria_tiendas WHERE id_tienda = '.$request->id_tienda.' GROUP BY id_tienda)')
            ]);

        if($cate->save() > 0)
        {
            $notificacion = array(
                'message' => 'Se agregó la categoria para la tienda con éxito',
                'alert_type' => 'success'
            );
            return response()->json(['mensaje'=>$notificacion ]);
        }else{

            $notificacion = array(
                'message' => 'Ocurrió un problema al registrar la categoria',
                'alert_type' => 'error'
            );
            return response()->json(['mensaje'=>$notificacion ]);

        }
    }

}
