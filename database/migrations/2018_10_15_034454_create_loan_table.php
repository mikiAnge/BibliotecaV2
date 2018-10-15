<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateLoanTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('loan', function (Blueprint $table) {
            $table->increments('id');
            $table->string('titulo');
            $table->string('nombre');
            $table->string('cicu');
            $table->integer('category_id')->nullable();
            $table->string('direccion');
            $table->integer('numerocelular');
            $table->dateTime('fechasolicitud');
            $table->dateTime('fechaentrega');
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
        Schema::dropIfExists('loan');
    }
}
