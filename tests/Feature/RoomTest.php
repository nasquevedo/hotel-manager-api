<?php

namespace Tests\Feature;

use Illuminate\Foundation\Testing\DatabaseMigrations;
use Tests\TestCase;

class RoomTest extends TestCase
{
    use DatabaseMigrations;

    public function setUp(): void
    {
        parent::setUp();

        $this->artisan('migrate');
        $this->artisan('db:seed');
    }

    public function tearDown(): void
    {
        $this->artisan('migrate:reset');
    }

    public function test_get_rooms_success()
    {
        $response = $this->getJson('http://localhost:8000/api/v1/rooms');
        

        $response
            ->assertStatus(200)
            ->assertJson([
                "message" => "success"
            ]);
    }
}