<?php

namespace App\Repositories;

use App\Models\RoomAccomodation;

class RoomAccomodationRepository implements RoomAccomodationRepositoryInterface
{
    protected $roomAccomodation;

    public function __construct(RoomAccomodation $roomAccomodation)
    {
        $this->roomAccomodation = $roomAccomodation;
    }

    public function all() {
        return $this->roomAccomodation->all();
    }

    public function findByRoomId(int $id)
    {
        $accomodations = $this->roomAccomodation->with(['room', 'accomodation'])->get()->where('room_id', '=', $id);

        return $accomodations;
    }
}