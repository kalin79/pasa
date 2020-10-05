<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\Resource;
use Illuminate\Support\Facades\DB;

class DataHorarios extends Resource
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
            'id_tienda' => $this->id,
            'nombre_tienda' => $this->nombre,
            'horarios' => DB::table('horarios')->select('id','id_tienda','dia','hora_ini','hora_fin','estado')->whereNotNull('id_tienda')->where('id_tienda', $this->id)->get()
        ];
    }
}
