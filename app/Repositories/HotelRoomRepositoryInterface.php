<?php

namespace App\Repositories;

interface HotelRoomRepositoryInterface extends CrudRepositoryInterface
{
    public function getHotelRoomSum(int $hotelId, ?int $id);
}