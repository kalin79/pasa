<?php

namespace App\Http\Controllers;

use Carbon\Carbon;
use Illuminate\Http\Request;
use App\Menu;
use Illuminate\Support\Facades\DB;
use App\Http\Resources\WebDataHome as WebDataHomeResource;
use App\Http\Resources\WebDataPromotion as WebDataPromotionResource;
use App\Http\Resources\WebDataTienda as WebDataTiendaResource;
use App\Http\Resources\WebDataNosotros as WebDataNosotrosResource;
use App\Http\Resources\WebDataEventos as WebDataEventosResource;
use App\Http\Resources\WebDataCartelera as WebDataCarteleraResource;
use App\Http\Resources\WebDataFooter as WebDataFooterResource;

class MenuController extends Controller
{
    public function __construct()
	{
        header('Access-Control-Allow-Origin: *');
    }

    public function WebData(Request $request, $id)
    {
        $data = Menu::where('id','=', $id)->get();
        foreach($data as $d){
            $ciudad = $d->ciudad;
            $seccion = $d->seccion;
        }
        
        if($seccion == "HOME"){       
            return WebDataHomeResource::collection(DB::table('menus')->select('*')->where('ciudad','=',$ciudad)->where('id','=', $id)->orderBy('id','Asc')->get());
        }else if($seccion == "NOSOTROS"){
            return WebDataNosotrosResource::collection(DB::table('menus')->select('*')->where('ciudad','=',$ciudad)->where('id','=', $id)->orderBy('id','Asc')->get());
        }else if($seccion == "TIENDAS"){
            return WebDataTiendaResource::collection(DB::table('menus')->select('*')->where('ciudad','=',$ciudad)->where('id','=', $id)->orderBy('id','Asc')->get());
        }else if($seccion == "PROMOCIONES"){
            return WebDataPromotionResource::collection(DB::table('menus')->select('*')->where('ciudad','=',$ciudad)->where('id','=', $id)->orderBy('id','Asc')->get());
        }else if($seccion == "EVENTOS"){
            return WebDataEventosResource::collection(DB::table('menus')->select('*')->where('ciudad','=',$ciudad)->where('id','=', $id)->orderBy('id','Asc')->get());
        }else if($seccion == "CARTELERA"){
            return WebDataCarteleraResource::collection(DB::table('menus')->select('*')->where('ciudad','=',$ciudad)->where('id','=', $id)->orderBy('id','Asc')->get());
        }else if($seccion == "FOOTER"){
            return WebDataFooterResource::collection(DB::table('menus')->select('*')->where('ciudad','=',$ciudad)->where('id','=', $id)->orderBy('id','Asc')->get());
        }else{
            return 'No hay resultados para el valor ingresado.';
        }
    }

    public function DataCategoria()
    {
        return DB::table('categoria_tiendas')->where('estado','1')->get();
    }

    public function ActualizarNosotros(Request $request, $id)
    {
        if ($request->descripcion) {
            $editar = Menu::where('id', $id)->update([
                'descripcion' => $request->descripcion,
                'updated_at' => Carbon::now()->format('Y-m-d H:i:s')
            ]);
        }

        if ($request->horarios){
            $editar = Menu::where('id', $id)->update([
                'horarios' => $request->horarios,
                'updated_at' => Carbon::now()->format('Y-m-d H:i:s')
            ]);
        }


        if($editar > 0) {
            $notificacion = array(
                'message' => 'Se actualizó los datos con éxito',
                'alert_type' => 'success'
            );
            return response()->json(['mensaje'=>$notificacion ]);
        }else{
            $notificacion = array(
                'message' => 'Ocurrió un problema al intentar actualizar la información, comuníquese con el administrador de la web',
                'alert_type' => 'error'
            );
            return response()->json(['mensaje'=>$notificacion ]);
        }
    }
}
