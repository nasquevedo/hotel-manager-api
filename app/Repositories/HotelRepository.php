<?php

namespace App\Repositories;

use App\Models\Hotel;

class HotelRepository implements HotelRepositoryInterface
{
    protected $hotel;

    public function __construct(Hotel $hotel) {
        $this->hotel = $hotel;
    }

    public function all()
    {
        $hotels = $this->hotel->with('city')->get();
        return $hotels;
    }

    public function create(array $data)
    {
        return $this->hotel->create($data);
    }

    public function update(array $data, int $id)
    {
        $hotel = $this->hotel->find($id);
        $hotel->update($data);

        return $hotel;
    }

    public function delete(int $id)
    {
        return $this->hotel->destroy($id);
    }

    public function find(int $id)
    {
        return $this->hotel->find($id);
    }
}