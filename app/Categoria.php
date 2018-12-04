<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use TCG\Voyager\Traits\Translatable;
use TCG\Voyager\Traits\HasRelationships;

class Categoria extends Model
{
    use Translatable,
        HasRelationships;

    protected $translatable = ['slug', 'name'];
    protected $table = 'categorias';
    protected $fillable = ['slug', 'name'];

    public function parentId(){
        return $this->belongsTo(self::class);
    }

    public function books()
    {
        return $this->hasMany(Book::class)
            ->published()
            ->orderBy('created_at', 'DESC');
    }
}
