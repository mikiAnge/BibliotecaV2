<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateBooksTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('books', function (Blueprint $table) {
            $table->increments('id');
            $table->string('category')->nullable();
            $table->string('codigo')->unique();
            $table->string('titulo');
            $table->string('autor');
            $table->string('pais');
            $table->integer('anio');
            $table->string('editorial');
            $table->string('edicion');
            $table->integer('ejemplares');
            $table->text('institucion');
            $table->string('image')->nullable();
            $table->text('descripcion');
            $table->text('indice');
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
        Schema::dropIfExists('books');
    }
}
