<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Loan extends Model
{
    protected $fillable = [
        'books_id',
        'titulo',
        'autor',
        'category',
        'lector',
        'carrera',
        'cicu',
        'direccion',
        'numerocelular',
        'estado',
        'tipoprestamo',
    ];
}
