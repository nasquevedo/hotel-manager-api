<?php

namespace App\Repositories;

use App\Models\Room;

class RoomRepository implements RoomRepositoryInterface
{
    protected $room;

    public function __contrusct(Room $room)
    {
        $this->room = $room;
    }

    public function all()
    {
        return Room::all();
    }
}