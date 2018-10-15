<?php

namespace App\Http\Controllers;

use App\Post;
use App\Category;
use Illuminate\Http\Request;

class PostController extends Controller
{
    public function index(){

        $posts = Post::orderBy('created_at', 'desc')->paginate(8);
        return view('catalogo', compact('posts'));
    }

    public function prestamo($slug){
        $categoria = Category::all();
        $post = Post::where('slug','=', $slug)->firstOrFail();
        return view('prestamo', compact('categoria','post'));
    }

}
