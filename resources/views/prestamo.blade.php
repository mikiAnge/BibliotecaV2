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
                            <span>Categoría</span>
                            <select class="tooltips-general material-control" data-toggle="tooltip" data-placement="top" title="Elige la categoría del libro">
                                <option value="" disabled="" selected="">Selecciona una categoría</option>
                                @foreach ($categoria as $category)
                                    <option value="{{ $category->name}}">{{ $category->name}}</option>
                                @endforeach
                            </select>
                        </div>
                        <div class="group-material">
                            <input type="text" class="tooltips-general material-control" placeholder="Escribe aquí el código correlativo del libro" pattern="[0-9]{1,20}" required="" maxlength="20" data-toggle="tooltip" data-placement="top" title="Escribe el código correlativo del libro, solamente números">
                            <span class="highlight"></span>
                            <span class="bar"></span>
                            <label>Código del libro</label>
                        </div>
                        <div class="group-material">
                            <input type="text" value="{{ $post->title}}" class="tooltips-general material-control" placeholder="Escribe aquí el título o nombre del libro" required="" maxlength="70" data-toggle="tooltip" data-placement="top" title="Escribe el título o nombre del libro">
                            <span class="highlight"></span>
                            <span class="bar"></span>
                            <label>Título del libro</label>
                        </div>
                        <div class="group-material">
                            <input type="text" class="tooltips-general material-control" placeholder="Escribe aquí el autor del libro" required="" maxlength="70" data-toggle="tooltip" data-placement="top" title="Escribe el nombre del autor del libro">
                            <span class="highlight"></span>
                            <span class="bar"></span>
                            <label>Autor</label>
                        </div>
                        <div class="group-material">
                            <input type="text" class="tooltips-general material-control" placeholder="Escribe aquí el país del libro" required="" maxlength="50" data-toggle="tooltip" data-placement="top" title="Escribe el país del libro">
                            <span class="highlight"></span>
                            <span class="bar"></span>
                            <label>País</label>
                        </div>
                        <legend><strong>Otros datos</strong></legend><br>
                        <div class="group-material">
                            <input type="text" class="material-control tooltips-general" placeholder="Escribe aquí el año del libro" required="" pattern="[0-9]{1,4}" maxlength="4" data-toggle="tooltip" data-placement="top" title="Solamente números, sin espacios">
                            <span class="highlight"></span>
                            <span class="bar"></span>
                            <label>Año</label>
                        </div>
                        <div class="group-material">
                            <input type="text" class="material-control tooltips-general" placeholder="Escribe aquí la editorial del libro" required="" maxlength="70" data-toggle="tooltip" data-placement="top" title="Editorial del libro">
                            <span class="highlight"></span>
                            <span class="bar"></span>
                            <label>Editorial</label>
                        </div>
                        <div class="group-material">
                            <input type="text" class="material-control tooltips-general" placeholder="Escribe aquí la edición del libro" required="" maxlength="50" data-toggle="tooltip" data-placement="top" title="Edición del libro">
                            <span class="highlight"></span>
                            <span class="bar"></span>
                            <label>Edición</label>
                        </div>
                        <div class="group-material">
                            <input type="text" class="material-control tooltips-general"  placeholder="Escribe aquí la cantidad de libros que registraras" required=" "pattern="[0-9]{1,7}" maxlength="7" data-toggle="tooltip" data-placement="top" title="¿Cuántos libros registraras?">
                            <span class="highlight"></span>
                            <span class="bar"></span>
                            <label>Ejemplares</label>
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
