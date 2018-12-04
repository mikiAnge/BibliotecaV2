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
    return view('inicio');
})->name('inicio');
/*
Route::get('/inicio', function () {
    return view('inicio');
})->name('inicio');
*/
Route::post('/prestamo', 'LoanController@store');

Route::get('/prestamo',  function () {
    return view('prestamo');
})->name('prestamo');

//otro metodo de llamado a la base de datos
//Route::get('/catalogo', function () {
//})->name('catalogo');

//Route::get('catalogo', 'PostController@index')->name('catalogo');
//Route::get('catalogo/{slug}', 'PostController@prestamo');

Route::get('catalogo', 'BookController@index')->name('catalogo');
Route::get('catalogo/{slug}', 'BookController@prestamo');

Route::get('showprestamo', 'LoanController@index')->name('showprestamo');
//Route::get('showprestamo/{slug}', 'LoanController@prestamo');
//para el buscador
Route::match(['get', 'post'], '/resultados', 'SearchController@index')->name('search');

/*Route::get('/showprestamo', function () {
    return view('showprestamo');
})->name('showprestamo');*/

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
Route::get('/view', 'HomeController@view');


Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});
