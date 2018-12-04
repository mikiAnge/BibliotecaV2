<?php

namespace App\Http\Controllers;

use App\Book;
use Illuminate\Http\Request;
use App\Categoria;

class BookController extends Controller
{
    public function index(){

        $categorias = Categoria::all();
        $books = Book::orderBy('created_at', 'desc')->paginate(8);
        return view('catalogo', compact('categorias','books'));
    }

    public function prestamo($slug){
        $categoria = Categoria::all();
        $book = Book::where('slug','=', $slug)->firstOrFail();
        return view('prestamo', compact('categoria','book'));
    }

    public function inicio(){
        $books = Book::orderBy('created_at', 'desc')->paginate(8);
        return view('inicio', compact('books'));
    }
}
