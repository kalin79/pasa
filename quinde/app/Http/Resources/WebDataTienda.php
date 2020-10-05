<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\Resource;
use Illuminate\Support\Facades\DB;

class WebDataTienda extends Resource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    public function toArray($request)
    {
        return [ 
            'id' => $this->id,
            'seccion' => $this->seccion,
            'ciudad' => $this->ciudad,
            'banners' => DB::table('images')->select('id','imagen','estado')->where('seccion','=',$this->seccion)->where('ciudad','=',$this->ciudad)->orderBy('id','Asc')->get(),
            'detalle' => DB::table('tiendas')->select('*')->where('ciudad','=',$this->ciudad)->where('estado','=','1')->orderBy('nombre','Asc')->get(),
            'detalle_horario' => DB::table('horarios')->select('*')->where('estado','=','1')->whereNotNull('id_tienda')->orderBy('hora_ini','Asc')->get(),
        ];
    }
}
