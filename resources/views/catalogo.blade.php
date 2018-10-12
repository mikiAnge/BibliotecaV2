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
        <div class="container-fluid" style="margin: 0 0 50px 0;">
            <h2 class="text-center" style="margin: 0 0 25px 0;">Categorías</h2>
            <ul class="list-unstyled text-center list-catalog-container">
                <li class="list-catalog">Categoría</li>
                <li class="list-catalog">Categoría</li>
                <li class="list-catalog">Categoría</li>
            </ul>
        </div>
        <div class="container-fluid">
            @foreach ($posts as $post)
            <div class="media media-hover">
                <div class="media-left media-middle">
                    <a href="/catalogo/{{ $post->slug}}" class="tooltips-general" data-toggle="tooltip" data-placement="right" title="Para mas detalles">
                      <img class="media-object" src="{{ Voyager::image($post->image)}}" alt="Libro" width="48" height="48">
                    </a>
                </div>
                <div class="media-body">
                    <h4 class="media-heading">{{$post->title}}</h4>
                    <div class="pull-left">
                        <strong>Autor<br>
                        <strong>Año<br>
                        <strong>Descripcion:<br>
                        <p>{{ $post->excerpt}}</p>
                    </div>
                    <p class="text-center pull-right">
                        <a href="#!" class="btn btn-info btn-xs" style="margin-right: 10px;"><i class="zmdi zmdi-info-outline"></i> &nbsp;&nbsp; Más información</a>
                    </p>
                </div>
            </div>
            @endforeach
        </div>
@endsection
