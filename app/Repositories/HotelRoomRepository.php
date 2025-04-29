<?php

namespace App\Repositories;

use App\Models\HotelRoom;

class HotelRoomRepository implements HotelRoomRepositoryInterface
{
    protected $hotelRoom;

    public function __construct(HotelRoom $hotelRoom)
    {
        $this->hotelRoom = $hotelRoom;
    }

    public function all() 
    {
        return $this->hotelRoom->with(['hotel', 'RoomAccomodation.room', 'RoomAccomodation.accomodation'])->get();
    }

    public function create(array $data) 
    {
        return $this->hotelRoom->create($data);
    }

    public function update(array $data, int $id) 
    {
        $hotelRoom = $this->hotelRoom->find($id);
        $hotelRoom->update($data);

        return $hotelRoom;
    }

    public function delete(int $id) 
    {
        return $this->hotelRoom->destroy($id);
    }

    public function find(int $id) 
    {
        return $this->hotelRoom->with(['RoomAccomodation'])->get()->where('id', '=', $id);
    }
}