<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\Resource;
use Illuminate\Support\Facades\DB;

class WebDataPromotion extends Resource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    public function toArray($request)
    {
        $fecha_ini= '';
        $fecha_fin = '';

        $filtro = DB::table('horarios')->select('fecha_ini','fecha_fin', DB::raw('(CASE WHEN fecha_fin - fecha_ini = "7" THEN "SEMANA DEL" ELSE "" END) AS fecha'))->where('estado','=','1')->whereNotNull('fecha_ini')->where('ciudad','=',$this->ciudad)->orderBy('id','Asc')->take(1)->get();
        foreach($filtro as $row) {
            $fecha_ini= $row->fecha_ini;
            $fecha_fin = $row->fecha_fin;
        }

        return [
            'id' => $this->id,
            'seccion' => $this->seccion,
            'ciudad' => $this->ciudad,
            'banners' => DB::table('images')->select('id','imagen','estado')->where('seccion','=',$this->seccion)->where('ciudad','=',$this->ciudad)->orderBy('id','Asc')->get(),
            'filtro_fecha' => DB::table('horarios')->select('fecha_ini','fecha_fin', DB::raw('(CASE WHEN fecha_fin - fecha_ini = "7" THEN "SEMANA DEL" ELSE "" END) AS fecha'))->where('estado','=','1')->whereNotNull('fecha_ini')->where('ciudad','=',$this->ciudad)->orderBy('id','Asc')->take(1)->get(),
            'detalle' => DB::table('promotions')->select('*')->where('estado','=','1')->where('ciudad','=',$this->ciudad)->whereBetween('fecha', [$fecha_ini, $fecha_fin])->orderBy('id','Asc')->get()
        ];
    }
}
