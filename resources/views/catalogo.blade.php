@extends('layouts.app')
@section('title', 'Menu Inicio')

@section('content')
        <div class="container">
            <div class="page-header">
              <h1 class="all-tittles">Sistema bibliotecario <small>Catálogo de libros</small></h1>
            </div>
        </div>
         <div class="container-fluid"  style="margin: 40px 0;">
            <div class="row">
                <div class="col-xs-12 col-sm-4 col-md-3">
                    <img src="assets/img/checklist.png" alt="pdf" class="img-responsive center-box" style="max-width: 110px;">
                </div>
                <div class="col-xs-12 col-sm-8 col-md-8 text-justify lead">
                    Bienvenido al catálogo, selecciona una categoría de la lista para empezar, si deseas buscar un libro por nombre o título has click en el icono &nbsp; <i class="zmdi zmdi-search"></i> &nbsp; que se encuentra en la barra superior
                </div>
            </div>
        </div>
        <!--
        <div class="container-fluid" style="margin: 0 0 50px 0;">
            <h2 class="text-center" style="margin: 0 0 25px 0;">Categorías</h2>
            <ul class="list-unstyled text-center list-catalog-container">
                <select id="categoria" name="categoria" class="tooltips-general material-control" data-toggle="tooltip" data-placement="top" title="Elige la categoría del libro">
                    <option value="" disabled="" selected="">Selecciona una categoría</option>
                    @foreach ($categorias as $categoria)
                        <option value="{{ $categoria->name}}">{{ $categoria->name}}</option>
                    @endforeach
                </select>
            </ul>
        </div>
        -->
        <div class="container-fluid">
            @foreach ($books as $book)
            <div class="media media-hover">
                <div class="media-left media-middle">
                    <a href="{{route('catalogo')}}/{{ $book->slug}}" class="tooltips-general" data-toggle="tooltip" data-placement="right" title="Para mas detalles">
                      <img class="media-object" src="{{ Voyager::image($book->image)}}" alt="Libro" width="150" height="250">
                    </a>
                </div>
                <div class="media-body">
                    <h4 class="media-heading">{{$book->titulo}}</h4>
                    <div class="pull-left">
                        <strong>Autor<br>
                        <p>{{ $book->autor}}</p>
                        <strong>Año<br>
                        <p>{{ $book->anio}}</p>
                        <strong>Descripcion:<br>
                        <p>{{ $book->descripcion}}</p>
                    </div>
                    <p class="text-center pull-right">
                        <a href="{{route('catalogo')}}/{{ $book->slug}}" class="btn btn-info btn-xs" style="margin-right: 10px;"><i class="zmdi zmdi-info-outline"></i> &nbsp;&nbsp; Registrar prestamo</a>
                    </p>
                </div>
            </div>
            @endforeach
            <div class="pagination">
                {{ $books->render()}}
            </div>
        </div>
@endsection
