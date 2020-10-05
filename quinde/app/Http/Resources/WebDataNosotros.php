<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\Resource;
use Illuminate\Support\Facades\DB;

class WebDataNosotros extends Resource
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
            'slug' => $this->slug,
            'descripcion' => $this->descripcion,
            'horarios' => $this->horarios,
            'banners' => DB::table('images')->select('id','imagen','estado')->where('seccion','=',$this->seccion)->where('ciudad','=',$this->ciudad)->orderBy('id','Asc')->get(),
        ];
    }
}
