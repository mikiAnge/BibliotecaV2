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
}
