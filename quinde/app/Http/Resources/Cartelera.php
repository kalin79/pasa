<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\Resource;
use Illuminate\Support\Facades\DB;

class Cartelera extends Resource
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
            'slug' => $this->slug,
            'titulo' => $this->titulo,
            'img_presentacion' => $this->img_presentacion,
            'img_background' => $this->img_background,
            'video_background' => $this->video_background,
            'director' => $this->director,
            'actores' => DB::table('actors')->select('nombre','foto','estado')->where('id_cartelera', '=', $this->id)->get(),
            'sinopsis' => $this->sinopsis,
            'duracion' => $this->duracion,
            'idioma' => $this->idioma,
            'fecha' => $this->fecha,
            'estado' => $this->estado,
            'ciudad' => $this->ciudad,
            'estreno' => $this->estreno,
            'destacado' => $this->destacado,
        ];
    }
}
