<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\Resource;
use Illuminate\Support\Facades\DB;

class WebDataCartelera extends Resource
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
            'detalle' => DB::table('billboards')->leftjoin('actors','billboards.id','=','actors.id_cartelera')->select('billboards.id as id','billboards.titulo as titulo','billboards.slug as slug','billboards.img_presentacion as img_presentacion','billboards.img_background as img_background','billboards.video_background as video_background','billboards.director as director','billboards.sinopsis as sinopsis','billboards.duracion as duracion', DB::raw('GROUP_CONCAT(actors.nombre SEPARATOR " | ") as actores'),'billboards.idioma as idioma','billboards.fecha as fecha','billboards.estado as estado','billboards.destacado as destacado','billboards.estreno as estreno')->where('billboards.ciudad','=',$this->ciudad)->where('billboards.estado','=','1')->groupby('billboards.id')->orderBy('billboards.fecha','Asc')->get(),
        ];
    }
}
