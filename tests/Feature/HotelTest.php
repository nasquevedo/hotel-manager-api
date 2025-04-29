<?php

use Illuminate\Foundation\Testing\DatabaseMigrations;
use Tests\TestCase;

class HotelTest extends TestCase
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

    public function test_create_hotel_success()
    {
        $response = $this->postJson('/api/v1/hotels/create', [
            "name" => "DECAMERON CARTAGENA",
            "city_id" => 1,
            "address"=> "CALLE 23 # 58-25",
            "nit"=> "12345678-9",
            "number_rooms"=> "42"
        ]);

        $response
            ->assertStatus(200)
            ->assertJson([
                "message" => "success",
                "hotel" => [
                    "name" => "DECAMERON CARTAGENA",
                    "city_id" => 1,
                    "address"=> "CALLE 23 # 58-25",
                    "nit"=> "12345678-9",
                    "number_rooms"=> "42"
                ]
            ]
        );
    }

    public function test_get_hotels_success()
    {
        $response = $this->getJson('/api/v1/hotels');

        $response
            ->assertStatus(200)
            ->assertJson([
                "message" => "success"
            ]
        );
    }

    public function test_get_hotel_by_id()
    {
        $response = $this->getJson('/api/v1/hotels/1');

        $response->assertStatus(200);
    }
}