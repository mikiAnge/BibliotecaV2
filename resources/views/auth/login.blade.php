@extends('layouts.log')
@section('title', 'Login')

@section('content')

        <h4 class="text-center all-tittles" style="margin-bottom: 30px;">inicia sesión con tu cuenta</h4>
        <form class="form" method="POST" action="{{ route('login')}}">
            @csrf


            <label><i class="zmdi zmdi-email"></i> &nbsp; Usuario</label>
            <div class="group-material-login">
                <input id="email" type="email" placeholder="Correo electronico" class="material-login-control{{ $errors->has('email') ? ' is-invalid' : '' }}" name="email" required="" maxlength="70" value="{{ old('email') }}" required autofocus>
                    @if ($errors->has('email'))
                        <span class="invalid-feedback" role="alert">
                            <strong>{{ $errors->first('email') }}</strong>
                        </span>
                    @endif
                <span class="highlight-login"></span>
                <span class="bar-login"></span>
            </div><br>

            <label><i class="zmdi zmdi-lock"></i> &nbsp; Contraseña</label>
            <div class="group-material-login">
                <input type="password" placeholder="Contraseña" class="material-login-control{{ $errors->has('password') ? ' is-invalid' : '' }}" name="password" required maxlength="70">
                    @if ($errors->has('password'))
                        <span class="invalid-feedback" role="alert">
                            <strong>{{ $errors->first('password') }}</strong>
                        </span>
                    @endif
                <span class="highlight-login"></span>
                <span class="bar-login"></span>
            </div><br>

            <div class="form-check">
                <label>
                    <input type="checkbox" name="remember" id="remember" {{ old('remember') ? 'checked' : '' }}>
                    Recordar mis datos
                </label>
            </div>

            <button class="btn-login" type="submit">Ingresar <i class="zmdi zmdi-mail-send"></i></button>

            <div class="password"><a href="{{ route('password.request')}}"><span class="label label-danger">¿Olvidaste la Contraseña?</span></a></div>
        </form>
@endsection
