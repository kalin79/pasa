<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\Resource;
use Illuminate\Support\Facades\DB;

class Tienda extends Resource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    public function toArray($request)
    {

        $categoria = DB::table('detalle_categoria_tiendas')->join('categoria_tiendas','detalle_categoria_tiendas.id_categoria','=','categoria_tiendas.id')
            ->select('categoria_tiendas.id','categoria_tiendas.nombre')->where('detalle_categoria_tiendas.id_tienda','=',$this->id)->where('categoria_tiendas.estado','=','1')->orderBy('categoria_tiendas.nombre','Asc')->get();

        return [
            'id' => $this->id,
            'slug' => $this->slug,
            'nombre' => $this->nombre,
            'descripcion' => $this->descripcion,
            'logo' => $this->logo,
            'imagen' => $this->imagen,
            //'id_categoria' => $this->categoria,
            'categoria' => $categoria,
            'nivel' => $this->nivel,
            'ubicacion' => $this->ubicacion,
            'estado' => $this->estado,
            'horario' => DB::table('horarios')->select('*')->where('id_tienda','=',$this->id)->where('estado','=','1')->orderBy('hora_ini','Asc')->get(),
        ];
    }
}
