<?php

namespace App\Repositories;

use App\Models\City;
use App\Repositories\CityRepositoryInterface;

class CityRepository implements CityRepositoryInterface
{
    protected $city;

    public function __construct(City $city)
    {
        $this->city = $city;
    }

    public function all() {
        return $this->city->all();
    }
}