<?php

namespace App\Http\Controllers;

use App\Book;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Input;

class SearchController extends Controller
{
    /*public function index()
    {
        $search = Input::get('search');

        if($search != ""){
            $post = Post::where('title', 'LIKE', '%' . $search . '%')->orderBy('created_at', 'desc')->paginate(8);

            if(count($post) > 0)
            return view('search')->withDetails($post)
                                 ->withQuery($search);
        }

        return view('search')->withMessage("No encontramos lo que estás buscando");

    }*/

    public function index()
    {
        $search = Input::get('search');

        if($search != ""){
            $book = Book::where('Titulo', 'LIKE', '%' . $search . '%')->orderBy('created_at', 'desc')->paginate(8);

            if(count($book) > 0)
            return view('search')->withDetails($book)
                                 ->withQuery($search);
        }

        return view('search')->withMessage("No encontramos lo que estás buscando");

    }
}
