<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateBillboardsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('billboards', function (Blueprint $table) {
            $table->increments('id');
            $table->string('titulo')->nullable();
            $table->string('slug')->nullable();
            $table->text('img_presentacion')->nullable();
            $table->text('img_background')->nullable();
            $table->text('video_background')->nullable();
            $table->string('director')->nullable();
            $table->text('sinopsis')->nullable();
            $table->string('duracion')->nullable();
            $table->string('idioma')->nullable();
            $table->timestamp('fecha')->nullable();
            $table->integer('estreno')->nullable();
            $table->integer('destacado')->nullable();
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
        Schema::dropIfExists('billboards');
    }
}
