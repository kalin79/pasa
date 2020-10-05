<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\Resource;
use Illuminate\Support\Facades\DB;

class BuscadorCajamarca extends Resource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    public function toArray($request)
    {
        $tiendas = DB::table('tiendas')->select('tiendas.slug', 'tiendas.nombre')->where('tiendas.estado','1')->where('tiendas.ciudad','cajamarca')->get();
        $promociones = DB::table('promotions')->select('promotions.slug','promotions.nombre')->where('promotions.estado','1')->where('promotions.ciudad','cajamarca')->get();
        $carteleras = DB::table('billboards')->select('billboards.slug', 'billboards.titulo as nombre')->where('billboards.estado','1')->where('billboards.ciudad','cajamarca')->get();
        $eventos = DB::table('events')->select('events.slug', 'events.titulo as nombre')->where('events.estado','1')->where('events.ciudad','cajamarca')->get();
        return [
            'tiendas' => $tiendas,
            'promociones' => $promociones,
            'eventos' => $eventos,
            'carteleras' => $carteleras
        ];
    }
}
