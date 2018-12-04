<?php

namespace Tests\Feature;

use Tests\TestCase;
use Illuminate\Foundation\Testing\WithFaker;
use Illuminate\Foundation\Testing\RefreshDatabase;

class BusquedaTest extends TestCase
{
    /** @test */

    function it_enviar_ver_busqueda(){
        $this->get('/resultados?search=algebra linieal')
        ->assertStatus(200);
    }
}
