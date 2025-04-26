<?php

namespace Database\Seeders;

use App\Models\City;
use Illuminate\Database\Seeder;

class CitySeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $cities = [
            'Cartagena',
            'Santa Marta',
            'San Andres',
            'Isla de Barú',
            'Quindio',
            'Boyacá',
            'Amazonas',
            'Providencia'
        ];

        foreach ($cities as $city) {
            City::create(['name' => $city]);
        }        
    }
}
