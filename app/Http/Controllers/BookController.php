<?php

namespace App\Http\Controllers;

use App\Book;
use App\Category;
use Illuminate\Http\Request;

class BookController extends Controller
{
    public function index(){

        $books = Book::orderBy('created_at', 'desc')->paginate(8);
        return view('catalogo', compact('books'));
    }

    public function prestamo($slug){
        $categoria = Category::all();
        $book = Book::where('slug','=', $slug)->firstOrFail();
        return view('prestamo', compact('categoria','book'));
    }
}
