<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run(): void
    {
        $this->call(CitySeeder::class);
        $this->call(RoomSeeder::class);
        $this->call(AccomodationSeeder::class);
        $this->call(RoomAccomodationSeeder::class);
    }  
}
