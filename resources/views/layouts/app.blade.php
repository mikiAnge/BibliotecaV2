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
                            <div class="dropdown-menu-button"><i class="zmdi zmdi-assignment-o zmdi-hc-fw"></i>&nbsp;&nbsp; Libros y catálogo <i class="zmdi zmdi-chevron-down pull-right zmdi-hc-fw"></i></div>
                            <ul class="list-unstyled">
                                <!-- editando linea de la uri para dirigirnos a la pestaña deseada -->
                                <li><a href="{{ route('book')}}"><i class="zmdi zmdi-book zmdi-hc-fw"></i>&nbsp;&nbsp; Registro libro</a></li>
                                <li><a href="{{ route('catalogo')}}"><i class="zmdi zmdi-bookmark-outline zmdi-hc-fw"></i>&nbsp;&nbsp; Catálogo</a></li>
                            </ul>
                        </li>
                        <li>
                            <div class="dropdown-menu-button"><i class="zmdi zmdi-alarm zmdi-hc-fw"></i>&nbsp;&nbsp; Préstamos y reservaciones <i class="zmdi zmdi-chevron-down pull-right zmdi-hc-fw"></i></div>
                            <ul class="list-unstyled">
                                <!-- crear la pagina de registro de prestamo y agregarlo ver reservaciones y ver Devoluciones -->
                                <li><a href="#"><i class="zmdi zmdi-calendar zmdi-hc-fw"></i>&nbsp;&nbsp; Registrar prestamo de libro</a></li>
                                <li>
                                <li><a href=" {{ route('prestamo')}} "><i class="zmdi zmdi-calendar zmdi-hc-fw"></i>&nbsp;&nbsp; Todos los préstamos</a></li>
                                <li>
                                    <a href="loanpending.html"><i class="zmdi zmdi-time-restore zmdi-hc-fw"></i>&nbsp;&nbsp; Devoluciones pendientes <span class="label label-danger pull-right label-mhover">7</span></a>
                                </li>
                                <li>
                                    <a href="loanreservation.html"><i class="zmdi zmdi-timer zmdi-hc-fw"></i>&nbsp;&nbsp; Reservaciones <span class="label label-danger pull-right label-mhover">7</span></a>
                                </li>
                            </ul>
                        </li>
                        <li><a href="report.html"><i class="zmdi zmdi-trending-up zmdi-hc-fw"></i>&nbsp;&nbsp; Reportes y estadísticas</a></li>
                        <li><a href="advancesettings.html"><i class="zmdi zmdi-wrench zmdi-hc-fw"></i>&nbsp;&nbsp; Configuraciones avanzadas</a></li>
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




                        <li  class="tooltips-general search-book-button" data-href="searchbook.html" data-placement="bottom" title="Buscar libro">
                            <i class="zmdi zmdi-search"></i>
                        </li>
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
                        Describir aqui la ayuda referente a la pagina.
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
                                Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquam quam dicta et, ipsum quo. Est saepe deserunt, adipisci eos id cum, ducimus rem, dolores enim laudantium eum repudiandae temporibus sapiente.
                            </p>
                        </div>
                        <div class="col-xs-12 col-sm-6">
                            <h4 class="all-tittles">Desarrollador</h4>
                            <ul class="list-unstyled">
                                <li><i class="zmdi zmdi-check zmdi-hc-fw"></i>&nbsp; bootstrap 3 <i class="zmdi zmdi-facebook zmdi-hc-fw footer-social"></i><i class="zmdi zmdi-twitter zmdi-hc-fw footer-social"></i></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="footer-copyright full-reset all-tittles">© 2016 modelo Creado con bootstrap 3</div>
            </footer>
        </div>
</body>
</html>
