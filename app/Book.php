<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Book extends Model
{
    public function category()
    {
        return $this->belongsTo(Categoria::class);
    }

    protected $fillable = [
        'category_id',
        'codigo',
        'titulo',
        'autor',
        'pais',
        'anio',
        'editorial',
        'edicion',
        'ejemplares',
        'image',
        'descripcion',
        'slug',
    ];

    /*
    public function category()
    {
        return $this->belongsTo(Voyager::modelClass('Category'));
    }
    */
}
