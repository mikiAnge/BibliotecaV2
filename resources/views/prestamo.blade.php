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
        <form autocomplete="off">
            <div class="container-flat-form">
                <div class="title-flat-form title-flat-blue">Formulario de Registro</div>
                <div class="row">
                    <div class="col-xs-12 col-sm-8 col-sm-offset-2">
                        <legend><strong>Información básica</strong></legend><br>

                        <div class="group-material">
                            <input type="text" value="{{ $book->titulo}}" class="tooltips-general material-control" placeholder="Escribe aquí el título o nombre del libro" required="" maxlength="70" data-toggle="tooltip" data-placement="top" title="Escribe el título o nombre del libro">
                            <span class="highlight"></span>
                            <span class="bar"></span>
                            <label>Título del libro</label>
                        </div>
                        <div class="group-material">
                            <input type="text" class="tooltips-general material-control" placeholder="Escribe aquí el nombre completo" required="" maxlength="70" data-toggle="tooltip" data-placement="top" title="Escribe el nombre Completo">
                            <span class="highlight"></span>
                            <span class="bar"></span>
                            <label>Nombre</label>
                        </div>
                        <div class="group-material">
                            <input type="text" class="tooltips-general material-control" placeholder="Escribe aquí el Cartenet Universitario o el de Identidad" required="" maxlength="12" data-toggle="tooltip" data-placement="top" title="Escribe el carnet universitario o el de identidad">
                            <span class="highlight"></span>
                            <span class="bar"></span>
                            <label>C.U. o C.I.</label>
                        </div>
                        <div class="group-material">
                            <span>Categoría</span>
                            <select class="tooltips-general material-control" data-toggle="tooltip" data-placement="top" title="Elige la categoría del libro">
                                <option value="" disabled="" selected="">Selecciona una categoría</option>
                                @foreach ($categoria as $category)
                                    <option value="{{ $category->name}}">{{ $category->name}}</option>
                                @endforeach
                            </select>
                        </div>
                        <div class="group-material">
                            <input type="text" class="material-control tooltips-general" placeholder="Escribe aquí el domicilio" required="" maxlength="70" data-toggle="tooltip" data-placement="top" title="Introduzca el domicilio donde vive">
                            <span class="highlight"></span>
                            <span class="bar"></span>
                            <label>Direccion</label>
                        </div>
                        <div class="group-material">
                            <input type="number" class="material-control tooltips-general" placeholder="Cel:78521356" required="" maxlength="8" data-toggle="tooltip" data-placement="top" title="Digite el numero de contacto">
                            <span class="highlight"></span>
                            <span class="bar"></span>
                            <label>Numero Celular</label>
                        </div>
                        <div class="group-material">
                            <input type="datetime-local" class="material-control tooltips-general" required=" " data-toggle="tooltip" data-placement="top" title="Seleccione la fecha">
                            <span class="highlight"></span>
                            <span class="bar"></span>
                            <label>Fecha de Solicitud</label>
                        </div>
                        <div class="group-material">
                            <input type="datetime-local" class="material-control tooltips-general" required=" " data-toggle="tooltip" data-placement="top" title="Seleccione la fecha">
                            <span class="highlight"></span>
                            <span class="bar"></span>
                            <label>Fecha de Entrega</label>
                        </div>
                        <p class="text-center">
                            <button type="reset" class="btn btn-info" style="margin-right: 20px;"><i class="zmdi zmdi-roller"></i> &nbsp;&nbsp; Limpiar</button>
                            <button type="submit" class="btn btn-primary"><i class="zmdi zmdi-floppy"></i> &nbsp;&nbsp; Guardar</button>
                        </p>
                    </div>
                </div>
            </div>
        </form>
    </div>
@endsection
