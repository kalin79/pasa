<?php

namespace App\Mail;

use App\RegistroTienda;
use Illuminate\Bus\Queueable;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Support\Facades\DB;

class RegistroAbrirTienda extends Mailable
{
    use Queueable, SerializesModels;

    /**
     * Create a new message instance.
     *
     * @return void
     */
    public function __construct()
    {
        //
    }

    /**
     * Build the message.
     *
     * @return $this
     */
    public function build()
    {
        $registro= DB::table('registro_tiendas')->join('categoria_tiendas','registro_tiendas.categoria','=','categoria_tiendas.id')
            ->select('registro_tiendas.nombre_contacto','registro_tiendas.apellido_contacto','registro_tiendas.email_contacto','registro_tiendas.dni_contacto','registro_tiendas.telefono_contacto','registro_tiendas.nombre_negocio','registro_tiendas.experiencia','registro_tiendas.descripcion_negocio','registro_tiendas.formato_negocio','registro_tiendas.ciudad','registro_tiendas.foto_ref','categoria_tiendas.nombre as nom_categoria','registro_tiendas.cc_negocio','registro_tiendas.cc_negocio2')
            ->orderby('registro_tiendas.id','DESC')->take(1)->get();
        //RegistroTienda::orderby('id','DESC')->take(1)->get();

        return $this->view('emails.registro-abrir-tienda',compact('registro'));
    }
}
