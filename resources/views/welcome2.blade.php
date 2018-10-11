<!DOCTYPE html>
<html lang="es">
<head>
    <title>Inicio</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="Shortcut Icon" type="image/x-icon" href="{{ asset('assets/icons/book.ico')}}" />
    <script src="{{ asset('js/sweet-alert.min.js')}}"></script>

    <!-- hoja de style y font -->

    <link rel="stylesheet" href="{{ asset('css/sweet-alert.cs')}}s">
    <link rel="stylesheet" href="{{ asset('css/material-design-iconic-font.min.css')}}">
    <link rel="stylesheet" href="{{ asset('css/normalize.css')}}">
    <link rel="stylesheet" href="{{ asset('css/bootstrap.min.css')}}">
    <link rel="stylesheet" href="{{ asset('css/jquery.mCustomScrollbar.css')}}">
    <link rel="stylesheet" href="{{ asset('css/style.css')}}">
    <!-- hoja de style para login -->
    <link rel="stylesheet" href="{{ asset('css/login.css')}}"/>

    <script src="{{ asset('//ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js')}}"></script>
    <script>window.jQuery || document.write('<script src="{{ asset('js/jquery-1.11.2.min.js')}}"><\/script>')</script>
    <script src="{{ asset('js/modernizr.js')}}"></script>
    <script src="{{ asset('js/bootstrap.min.js')}}"></script>
    <script src="{{ asset('js/jquery.mCustomScrollbar.concat.min.js')}}"></script>
    <script src="{{ asset('js/main.js')}}"></script>
</head>

<!-- body -->
<body class="full-cover-background" style="background-image:url(assets/img/font-login.jpg);">

    <!-- cabezal -->
        <div class="pull-right">

                    @if (Route::has('login'))
                                <span class="all-tittles">
                                    @auth
                                        <a href="{{ url('/home') }}">Home</a>
                                    @else
                                        <a href="{{ route('login') }}">Login</a>
                                        <a href="{{ route('register') }}">Register</a>
                                    @endauth
                                </span>
                    @endif
                </ul>
        </div>
</body>
</html>
