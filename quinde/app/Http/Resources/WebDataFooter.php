<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\Resource;
use Illuminate\Support\Facades\DB;

class WebDataFooter extends Resource
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
            'detalle' => DB::table('images')->select('id','imagen','link', 'estado')->where('seccion','=',$this->seccion)->where('ciudad','=',$this->ciudad)->orderBy('id','Asc')->get(),
        ];
    }
}
