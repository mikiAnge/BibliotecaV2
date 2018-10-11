@extends('layouts.log')
@section('title', 'Registro')

@section('content')

    <h4 class="text-center all-tittles" style="margin-bottom: 30px;">Registro de usuario</h4>
    <form class="form" method="POST" action="{{ route('register') }}">
        @csrf


        <label><i class="zmdi zmdi-account"></i> &nbsp; Nombres</label>
        <div class="group-material-login">
            <input id="name" type="text" class="material-login-control{{ $errors->has('name') ? ' is-invalid' : '' }}" name="name" value="{{ old('name') }}" required autofocus placeholder="Nombre completo">

            @if ($errors->has('name'))
                <span class="invalid-feedback" role="alert">
                    <strong>{{ $errors->first('name') }}</strong>
                </span>
            @endif
            <span class="highlight-login"></span>
            <span class="bar-login"></span>

        </div>

        <label><i class="zmdi zmdi-email"></i> &nbsp; Correo Electronico</label>
        <div class="group-material-login">
            <input id="email" type="email" class="material-login-control{{ $errors->has('email') ? ' is-invalid' : '' }}" name="email" value="{{ old('email') }}" required placeholder="Correo electronico">

            @if ($errors->has('email'))
                <span class="invalid-feedback" role="alert">
                    <strong>{{ $errors->first('email') }}</strong>
                </span>
            @endif
            <span class="highlight-login"></span>
            <span class="bar-login"></span>

        </div>


        <label><i class="zmdi zmdi-lock"></i> &nbsp; Contraseña</label>
        <div class="group-material-login">
            <input id="password" type="password" class="material-login-control{{ $errors->has('password') ? ' is-invalid' : '' }}" name="password" required placeholder="Introduzca su contraseña">

            @if ($errors->has('password'))
                <span class="invalid-feedback" role="alert">
                    <strong>{{ $errors->first('password') }}</strong>
                </span>
            @endif
            <span class="highlight-login"></span>
            <span class="bar-login"></span>
        </div>


        <label><i class="zmdi zmdi-lock"></i> &nbsp; Repetir Contraseña</label>
        <div class="group-material-login">
            <input id="password-confirm" type="password" class="material-login-control" name="password_confirmation" required placeholder="Repita su contraseña">

            <span class="highlight-login"></span>
            <span class="bar-login"></span>
        </div>

        <div class="checkbox">
            <label>
                <input type="checkbox" name="optionsCheckboxes" checked>
                Acepto los <a href="#" target="_blank">términos y condiciones</a>
        </div>

        <button class="btn-login" type="submit">Registrar <i class="zmdi zmdi-file"></i></button>
    </form>


@endsection
