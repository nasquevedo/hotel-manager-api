<?php

namespace Tests\Feature;

use Illuminate\Foundation\Testing\DatabaseMigrations;
use Tests\TestCase;

class RoomAccomodationTest extends TestCase
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

    public function test_get_room_accomodations_success()
    {
        $response = $this->getJson('http://localhost:8000/api/v1/accomodations/2');

        $response
            ->assertStatus(200)
            ->assertJson([
                "message" => "success"
            ]);
    }
}