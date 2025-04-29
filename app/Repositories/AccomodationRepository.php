<?php

namespace App\Repositories;

use App\Models\Accomodation;

class AccomodationRepository implements AccomodationRepositoryInterface
{
    protected $accomodation;

    public function __construct(Accomodation $accomodation)
    {
        $this->accomodation = $accomodation;
    }

    public function all()
    {
        return $this->accomodation->all();
    }
}