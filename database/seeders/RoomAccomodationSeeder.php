<?php

namespace Database\Seeders;

use App\Models\RoomAccomodation;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class RoomAccomodationSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $roomAccomodations = [
            ['room_id' => 1, 'accomodation_id' => 1],
            ['room_id' => 1, 'accomodation_id' => 2],
            ['room_id' => 2, 'accomodation_id' => 3],
            ['room_id' => 2, 'accomodation_id' => 4],
            ['room_id' => 3, 'accomodation_id' => 1],
            ['room_id' => 3, 'accomodation_id' => 2],
            ['room_id' => 3, 'accomodation_id' => 3],
        ];

        foreach ($roomAccomodations as $roomAccomodation) {
            RoomAccomodation::create(['room_id' => $roomAccomodation['room_id'], 'accomodation_id' => $roomAccomodation['accomodation_id']]);
        }
    }
}
