<?php

use Tests\TestCase;

class HotelTest extends TestCase
{

    public function test_get_hotels_success()
    {
        $response = $this->getJson('/api/v1/hotels');

        $response->assertStatus(200);
    }
}