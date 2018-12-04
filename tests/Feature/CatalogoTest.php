<?php

namespace Tests\Feature;

use Tests\TestCase;
use Illuminate\Foundation\Testing\WithFaker;
use Illuminate\Foundation\Testing\RefreshDatabase;

class CatalogoTest extends TestCase
{
    /** @test */

    function it_vista_catalogo(){
        $this->get('/catalogo')
        ->assertStatus(200)
        ->assertSee('Autor')
        ->assertSee('Jose Ricardo Luna Victoria Muñoz');
        //->assertSee('Precio')
        //->assertSee('2000');
    }
}
