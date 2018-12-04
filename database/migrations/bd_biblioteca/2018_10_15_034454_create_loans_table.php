<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateLoansTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('loans', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('books_id');
            $table->string('titulo');
            $table->string('autor');
            $table->text('category');
            $table->string('lector');
            $table->string('carrera');
            $table->string('cicu');
            $table->string('direccion')->nullable();
            $table->integer('numerocelular')->nullable();
            $table->string('estado')->nullable();
            $table->string('tipoprestamo')->nullable();
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
        Schema::dropIfExists('loans');
    }
}
