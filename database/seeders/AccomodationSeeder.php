<?php

namespace Database\Seeders;

use App\Models\Accomodation;
use Illuminate\Database\Seeder;

class AccomodationSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $accomodations = ['Sencilla', 'Doble', 'Triple', 'Cuádruple'];

        foreach ($accomodations as $accomodation) {
            Accomodation::create(['name' => $accomodation]);
        }
    }
}
