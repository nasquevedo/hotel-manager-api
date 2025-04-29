<?php

namespace Database\Seeders;

use App\Models\Room;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class RoomSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $rooms = ['Estándar', 'Junior', 'Suite'];

        foreach ($rooms as $room) {
            Room::create(['name' => $room]);
        }
    }
}
