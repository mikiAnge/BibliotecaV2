@extends('layouts.wel')
@section('title', 'Login')

@section('content')
    <div class="text-center">
        <div class="flex-center position-ref full-height">
            @if (Route::has('login'))
                <div class="top-right links">
                    <span style="font-size: 200%">
                        @auth
                            <a>{{ Auth::user()->name}} | </a>
                            <a href="{{ url('/home') }}">Home</a>
                        @else
                            <a>Invitado | </a>
                            <a href="{{ route('login') }}">Ingresar</a>
                            <a href="{{ route('register') }}">Registrarse</a>
                        @endauth
                    </span>
                </div>
            @endif

            <div class="content">
                <span style="font-size: 4.6em">
                    BIBLIOTECA
                </span>
            </div>
        </div>
    </div>
@endsection
