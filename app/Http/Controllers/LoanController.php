<?php

namespace App\Http\Controllers;

use App\Loan;
use Illuminate\Http\Request;


class LoanController extends Controller
{
    public function index(){

        $loans = Loan::orderBy('created_at', 'desc')->paginate(8);
        return view('showprestamo', compact('loans'));
    }

    public function store(Request $request){
        Loan::create($request->all());
        return redirect('catalogo');
    }
/*
    public function create(array $data){
        return Loan::create([
            $titulo = $data['titulo'],
            $cicu = $data['cuci'],
            $nombre = $data['nombre'],
            $direccion = $data['direccion'],
            $categoria = $data['categoria'],
            $numcel = $data['numcel']
        ]);
    }*/
}
