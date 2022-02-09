<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Biblioteca - @yield('title')</title>

    <link rel="Shortcut Icon" type="image/x-icon" href="{{ asset('assets/icons/book.ico')}}" />
    <script src="{{ asset('js/sweet-alert.min.js')}}"></script>

    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <!-- hoja de style y font -->

    <link rel="stylesheet" href="{{ asset('css/sweet-alert.cs')}}s">
    <link rel="stylesheet" href="{{ asset('css/material-design-iconic-font.min.css')}}">
    <link rel="stylesheet" href="{{ asset('css/normalize.css')}}">
    <link rel="stylesheet" href="{{ asset('css/bootstrap.min.css')}}">
    <link rel="stylesheet" href="{{ asset('css/jquery.mCustomScrollbar.css')}}">
    <link rel="stylesheet" href="{{ asset('css/style.css')}}">
    <!-- hoja de style para login -->
    <link rel="stylesheet" href="{{ asset('css/login.css')}}"/>

    <!-- Todos los js -->
    <script src="{{ asset('//ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js')}}"></script>
    <script>window.jQuery || document.write('<script src="{{ asset('js/jquery-1.11.2.min.js')}}"><\/script>')</script>
    <script src="{{ asset('js/modernizr.js')}}"></script>
    <script src="{{ asset('js/bootstrap.min.js')}}"></script>
    <script src="{{ asset('js/jquery.mCustomScrollbar.concat.min.js')}}"></script>
    <script src="{{ asset('js/main.js')}}"></script>
</head>
<body>
    <!--barra latera -->
        <div class="navbar-lateral full-reset">
            <div class="visible-xs font-movile-menu mobile-menu-button"></div>
            <div class="full-reset container-menu-movile custom-scroll-containers">
                <div class="logo full-reset all-tittles">
                    <i class="visible-xs zmdi zmdi-close pull-left mobile-menu-button" style="line-height: 55px; cursor: pointer; padding: 0 10px; margin-left: 7px;"></i>
                    sistema bibliotecario
                </div>
                <div class="full-reset" style="background-color:#2B3D51; padding: 10px 0; color:#fff;">
                    <figure>
                        <img src="{{ asset('assets/img/logo.png')}}" alt="Biblioteca" class="img-responsive center-box" style="width:55%;">
                    </figure>
                    <p class="text-center" style="padding-top: 15px;">Sistema Bibliotecario</p>
                </div>
                <div class="full-reset nav-lateral-list-menu">
                    <ul class="list-unstyled">
                        <li><a href=" {{route('inicio')}} "><i class="zmdi zmdi-home zmdi-hc-fw"></i>&nbsp;&nbsp; Inicio</a></li>
                        <li>
                            <div class="dropdown-menu-button"><i class="zmdi zmdi-assignment-o zmdi-hc-fw"></i>&nbsp;&nbsp; Catalogo de libros <i class="zmdi zmdi-chevron-down pull-right zmdi-hc-fw"></i></div>
                            <ul class="list-unstyled">
                                <!-- editando linea de la uri para dirigirnos a la pestaña deseada -->

                                <li><a href="{{ route('catalogo')}}"><i class="zmdi zmdi-bookmark-outline zmdi-hc-fw"></i>&nbsp;&nbsp; Catálogo</a></li>
                            </ul>
                        </li>
                        <!--
                        <li>
                            <div class="dropdown-menu-button"><i class="zmdi zmdi-alarm zmdi-hc-fw"></i>&nbsp;&nbsp; Préstamos y reservaciones <i class="zmdi zmdi-chevron-down pull-right zmdi-hc-fw"></i></div>
                            <ul class="list-unstyled">

                                <li><a href=" {{ route('showprestamo')}} "><i class="zmdi zmdi-calendar zmdi-hc-fw"></i>&nbsp;&nbsp; Todos los préstamos</a></li>
                                <li>
                                    <a href="loanpending.html"><i class="zmdi zmdi-time-restore zmdi-hc-fw"></i>&nbsp;&nbsp; Devoluciones pendientes <span class="label label-danger pull-right label-mhover">7</span></a>
                                </li>
                                <li>
                                    <a href="loanreservation.html"><i class="zmdi zmdi-timer zmdi-hc-fw"></i>&nbsp;&nbsp; Reservaciones <span class="label label-danger pull-right label-mhover">7</span></a>
                                </li>
                            </ul>
                        </li>
                        -->
                    </ul>
                </div>
            </div>
        </div>
        <!-- cabezal -->
        <div class="content-page-container full-reset custom-scroll-containers">
                <nav class="navbar-user-top full-reset">
                    <ul class="list-unstyled full-reset">
                        <figure>
                           <img src="{{ asset('assets/img/user01.png')}}" alt="user-picture" class="img-responsive img-circle center-box">
                        </figure>
                        <li style="color:#fff; cursor:default;">
                            <span class="all-tittles">
                                @auth
                                    <a>{{ Auth::user()->name}} | </a>
                                    <a href="{{ url('/home') }}">Home</a>
                                @else
                                    <a>Invitado | </a>
                                    <a href="{{ route('login') }}">Ingresar</a>
                                    <a href="{{ route('register') }}">Registrarse</a>
                                @endauth
                            </span>
                        </li>
                        <!-- boton salir modificado en estilo css y aqui -->
                        <li  class="tooltips-general exit-system-button" data-href="{{ route('logout') }}" data-placement="bottom" title="Salir del sistema">
                            <i class="zmdi zmdi-power"></i>

                            <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                                @csrf
                            </form>
                        </li>


                        <li  class="tooltips-general search-book-button" data-href="{{ route('search')}}" data-placement="bottom" title="Buscar libro">
                            <i class="zmdi zmdi-search"></i>


                        <!-- metodo para el buscador esto esta comentado por cuestiones de mejora en el codigo

                        <li  class="tooltips-general">

                            <form action="{{ route('search') }}" method="POST" role="search">
                                @csrf
                                <input class="buscar" align="middle" type="search" name="search" placeholder="¿Que libro esta buscando?">
                                <button type="submit">
                                    <i class="zmdi zmdi-search"></i>
                                </button>
                            </form>
                        </li> -->
                        <li  class="tooltips-general btn-help" data-placement="bottom" title="Ayuda">
                            <i class="zmdi zmdi-help-outline zmdi-hc-fw"></i>
                        </li>
                        <li class="mobile-menu-button visible-xs" style="float: left !important;">
                            <i class="zmdi zmdi-menu"></i>
                        </li>
                    </ul>
                </nav>


    @section('content')
    @show


    <!-- fade -->
            <div class="modal fade" tabindex="-1" role="dialog" id="ModalHelp">
              <div class="modal-dialog modal-lg">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                        <h4 class="modal-title text-center all-tittles">ayuda del sistema</h4>
                    </div>
                    <div class="modal-body">
                        Mediante los diferentes botones, de esta paleta, podes realizar &nbsp;
                        Busquedas referentes al contenido de los libros, y el boton de salir &nbsp; 
                        para salir del sistema, en el sector izquierdo de tu pantalla podes ir a la vista del catalogo &nbsp;
                        en donde podras ver todos los libros disponibles en el banco de la biblioteca. 
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-primary" data-dismiss="modal"><i class="zmdi zmdi-thumb-up"></i> &nbsp; De acuerdo</button>
                    </div>
                </div>
              </div>
            </div>

    <!-- footer -->
            <footer class="footer full-reset">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-xs-12 col-sm-6">
                            <h4 class="all-tittles">Acerca de</h4>
                            <p>
                                Plataforma virtual desarrolada para la busqueda, consulta y reserva de libros para el estudiante, docente y personas que requieran de un libro.
                            </p>
                        </div>
                        <div class="col-xs-12 col-sm-6">
                            <h4 class="all-tittles">Desarrollador</h4>
                            <ul class="list-unstyled">
                                <li><i class="zmdi zmdi-check zmdi-hc-fw"></i>&nbsp; Miguel A. Ruiz & Wilson Medina <i class="zmdi zmdi-facebook zmdi-hc-fw footer-social"></i><i class="zmdi zmdi-twitter zmdi-hc-fw footer-social"></i></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="footer-copyright full-reset all-tittles">© Ingenieria de Software II</div>
            </footer>
        </div>
</body>
</html>
