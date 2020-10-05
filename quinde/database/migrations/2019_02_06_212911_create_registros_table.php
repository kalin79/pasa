<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateRegistrosTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('registros', function (Blueprint $table) {
            $table->increments('id');
            $table->string('nombres')->nullable();
            $table->string('apellidos')->nullable();
            $table->string('email')->unique();
            $table->string('celular',20)->nullable();
            $table->date('fecha_nac')->nullable();
            $table->string('dni')->unique();
            $table->integer('tyc')->nullable();;
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
        Schema::dropIfExists('registros');
    }
}