<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\Resource;

class DataSuscritos extends Resource
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
            'email' => $this->email,
            'nombres' => $this->nombres .' '. $this->apellidos,
            'celular' => $this->celular,
            'fecha_nac' => $this->fecha_nac,
            'dni' => $this->dni,
            'ciudad' => $this->ciudad,
            'fecha' => 	$this->created_at,
        ];
    }
}
