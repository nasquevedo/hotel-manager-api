<?php

namespace App\Repositories;

interface RoomAccomodationRepositoryInterface extends RepositoryInterface
{
    public function findByRoomId(int $id);
}