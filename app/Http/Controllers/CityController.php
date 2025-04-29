<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Repositories\CityRepositoryInterface;

class CityController extends Controller
{
    private $cityRepository;

    public function __construct(CityRepositoryInterface $cityRepository)
    {
        $this->cityRepository = $cityRepository;
    }

    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $cities = $this->cityRepository->all();

        return response()->json([
            "message" => "success",
            "cities" => $cities
        ]);
    }
}
