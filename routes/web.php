<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
})->name('book');

Route::get('/inicio', function () {
    return view('inicio');
})->name('inicio');

Route::get('/book', function () {
    return view('book');
})->name('book');

Route::get('/prestamo', function () {
    return view('prestamo');
})->name('prestamo');

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
Route::get('/view', 'HomeController@view');
