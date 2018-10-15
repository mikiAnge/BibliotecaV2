<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateBookTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('book', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('category_id')->nullable();
            $table->string('codigo')->unique();
            $table->string('titulo');
            $table->string('autor');
            $table->string('pais');
            $table->integer('anio');
            $table->string('editorial');
            $table->string('edicion');
            $table->integer('ejemplares');
            $table->string('image')->nullable();
            $table->text('descripcion');
            $table->string('slug')->unique();
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
        Schema::dropIfExists('book');
    }
}
