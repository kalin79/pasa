<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateTiendasTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('tiendas', function (Blueprint $table) {
            $table->increments('id');
            $table->string('nombre');
            $table->text('descripcion')->nullable();
            $table->text('logo')->nullable();
            $table->text('imagen')->nullable();
            $table->string('ubicacion')->nullable();
            $table->text('categoria')->nullable();
            $table->integer('nivel')->nullable();
            $table->string('telefono_contacto')->nullable();
            $table->string('email_contacto')->nullable();
            $table->string('nombre_contacto')->nullable();
            $table->integer('estado');
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
        Schema::dropIfExists('tiendas');
    }
}
