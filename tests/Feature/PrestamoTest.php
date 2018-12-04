<?php

namespace Tests\Feature;

use Tests\TestCase;
use Illuminate\Foundation\Testing\WithFaker;
use Illuminate\Foundation\Testing\RefreshDatabase;

class PrestamoTest extends TestCase
{
    /** @test */

    function it_enviar_datos_prestamo(){
        $this->get('/catalogo/fisicabasica')
        ->assertStatus(200);
    }

    function it_recibir_datos(){
        $this->get('/prestamo')
        ->assertStatus(200);
    }
}
