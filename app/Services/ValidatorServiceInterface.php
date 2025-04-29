<?php

namespace App\Services;

interface ValidatorServiceInterface
{
    public function validateAvailableRooms(array $request, ?int $id);
}