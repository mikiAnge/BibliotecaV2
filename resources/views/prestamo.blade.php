@extends('layouts.app')
@section('title', 'Prestamo de libros')

@section('content')
    <!-- body -->
    <div class="container">
        <div class="page-header">
            <h1 class="all-tittles">Sistema bibliotecario <small>Registrar prestamo de libro</small></h1>
        </div>
    </div>
    <div class="container-fluid"  style="margin: 50px 0;">
        <div class="row">
            <div class="col-xs-12 col-sm-4 col-md-3">
                <img src="{{ asset('assets/img/flat-book.png')}}" alt="pdf" class="img-responsive center-box" style="max-width: 110px;">
            </div>
            <div class="col-xs-12 col-sm-8 col-md-8 text-justify lead">
                Bienvenido a la sección para el registro de prestamo de libros de la biblioteca, dera llenar todos los campos para poder registrar el prestamo correspondiente
            </div>
        </div>
    </div>
    <div class="container-fluid">
        <form class="form" method="POST" action="{{ route('prestamo')}}">
            @csrf
            <div class="container-flat-form">
                <div class="title-flat-form title-flat-blue">Formulario de Registro</div>
                <div class="row">
                    <div class="col-xs-12 col-sm-8 col-sm-offset-2">
                        <legend><strong>Información básica</strong></legend><br>

                        <input id="books_id" name="books_id" type="hidden" value="{{ $book->codigo}}">

                        <div class="group-material">
                            <input id="titulo" name="titulo" type="text" value="{{ $book->titulo}}" class="tooltips-general material-control" placeholder="Escribe aquí el título o nombre del libro" required="" maxlength="70" data-toggle="tooltip" data-placement="top" title="Escribe el título o nombre del libro">
                            <span class="highlight"></span>
                            <span class="bar"></span>
                            <label>Título del libro</label>
                        </div>

                        <input id="autor" name="autor" type="hidden" value="{{ $book->autor}} ">

                        <div class="group-material">
                            <span>Categoría</span>
                            <select id="category" name="category" class="tooltips-general material-control" data-toggle="tooltip" data-placement="top" title="Elige la categoría del libro">
                                <option value="" disabled="" selected="">Selecciona una categoría</option>
                                @foreach ($categoria as $categoria)
                                    <option value="{{ $categoria->name}}">{{ $categoria->name}}</option>
                                @endforeach
                            </select>
                        </div>

                        <div class="group-material">
                            <input id="lector" name="lector" type="text" class="tooltips-general material-control" placeholder="Escribe aquí el nombre completo" required="" maxlength="70" data-toggle="tooltip" data-placement="top" title="Escribe el nombre Completo">
                            <span class="highlight"></span>
                            <span class="bar"></span>
                            <label>Nombre Completo</label>
                        </div>

                        <input id="carrera" name="carrera" type="hidden" value="Sistemas">

                        <div class="group-material">
                            <input id="cicu" name="cicu" type="text" class="tooltips-general material-control" placeholder="Escribe aquí el Cartenet Universitario o el de Identidad" required="" maxlength="12" data-toggle="tooltip" data-placement="top" title="Escribe el carnet universitario o el de identidad">
                            <span class="highlight"></span>
                            <span class="bar"></span>
                            <label>C.U. o C.I.</label>
                        </div>

                        <div class="group-material">
                            <input id="direccion" name="direccion" type="text" class="material-control tooltips-general" placeholder="Escribe aquí el domicilio" required="" maxlength="70" data-toggle="tooltip" data-placement="top" title="Introduzca el domicilio donde vive">
                            <span class="highlight"></span>
                            <span class="bar"></span>
                            <label>Direccion</label>
                        </div>
                        <div class="group-material">
                            <input id="numerocelular" name="numerocelular" type="number" class="material-control tooltips-general" placeholder="Cel:78521356" required="" maxlength="8" data-toggle="tooltip" data-placement="top" title="Digite el numero de contacto">
                            <span class="highlight"></span>
                            <span class="bar"></span>
                            <label>Numero Celular</label>
                        </div>

                        <input id="estado" name="estado" type="hidden" value="En espera">

                        <input id="tipoprestamo" name="tipoprestamo" type="hidden" value="No prestado">

                        <p class="text-center">
                            <button type="submit" class="btn btn-primary"><i class="zmdi zmdi-floppy"></i> &nbsp;&nbsp; Guardar</button>
                        </p>
                    </div>
                </div>
            </div>
        </form>
    </div>
@endsection
