<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\Resource;
use Illuminate\Support\Facades\DB;

class WebDataHome extends Resource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    public function toArray($request)
    {
        $data_cartelera = DB::table('billboards')->select('id','slug','titulo','img_presentacion','destacado','estreno')->where('destacado','=','1')->where('ciudad','=',$this->ciudad)->orderBy('fecha','Desc')->get();
        if($data_cartelera->count() > 0){
            $cartelera = $data_cartelera;
        }else{
            $cartelera = [];
        }

        return [
            'id' => $this->id,
            'seccion' => $this->seccion,
            'ciudad' => $this->ciudad,
            'banners' => DB::table('images')->select('id','imagen','estado')->where('seccion','=',$this->seccion)->where('ciudad','=',$this->ciudad)->orderBy('id','Asc')->get(),
            'cartelera' => $cartelera
        ];
    }
}
