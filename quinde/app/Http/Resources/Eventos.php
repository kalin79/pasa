<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\Resource;

class Eventos extends Resource
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
            'imagen' => $this->imagen,
            'descripcion' => $this->descripcion,
            'lugar' => $this->lugar,
            'fecha_ini' => $this->fecha_ini,
            'fecha_fin' => $this->fecha_fin,
            'estado' => $this->estado,
            'ciudad' => $this->ciudad,
        ];
    }
}
