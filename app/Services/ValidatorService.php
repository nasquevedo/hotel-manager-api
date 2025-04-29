<?php

namespace App\Services;

use App\Repositories\HotelRepository;
use App\Repositories\HotelRoomRepositoryInterface;

class ValidatorService implements ValidatorServiceInterface
{
    protected $hotelRepository;

    protected $hotelRoomRepository;

    public function __construct(
        HotelRepository $hotelRepository,
        HotelRoomRepositoryInterface $hotelRoomRepository
    )
    {
        $this->hotelRepository = $hotelRepository;
        $this->hotelRoomRepository = $hotelRoomRepository;
    }

    public function validateAvailableRooms(array $request, ?int $id)
    {
        $hotelNumberRooms = $this->hotelRepository->find($request['hotel_id'])->number_rooms;
        $hotelRoomSum = $this->hotelRoomRepository->getHotelRoomSum($request['hotel_id'], $id);
        $newHotelRoomSum = $hotelRoomSum + $request['number_rooms'];

        if ($newHotelRoomSum > $hotelNumberRooms) {
            return false;
        }

        return true;
    }
}