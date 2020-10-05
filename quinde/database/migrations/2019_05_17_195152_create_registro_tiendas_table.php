<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateRegistroTiendasTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('registro_tiendas', function (Blueprint $table) {
            $table->increments('id');
            $table->string('nombre_negocio');
            $table->integer('categoria')->nullable();
            $table->string('experiencia')->nullable();
            $table->string('formato_negocio');
            $table->text('descripcion_negocio');
            $table->string('cc_negocio');
            $table->string('cc_negocio2');
            $table->text('foto_ref')->nullable();
            $table->string('nombre_contacto');
            $table->string('apellido_contacto');
            $table->string('email_contacto');
            $table->string('telefono_contacto');
            $table->string('dni_contacto');
            $table->string('ciudad');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('registro_tiendas');
    }
}
