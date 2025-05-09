<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Repositories\HotelRepositoryInterface;

class HotelController extends Controller
{
    private $hotelRepository;

    public function __construct(HotelRepositoryInterface $hotelRepository)
    {
        $this->hotelRepository = $hotelRepository;
    }

    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $hotels = $this->hotelRepository->all();

        return response()->json([
            "message" => "success",
            "hotels" => $hotels
        ]);
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $hotel = $this->hotelRepository->create($request->request->all());

        return response()->json([
            "message" => 'success',
            "hotel" => $hotel
        ]);
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        $hotel = $this->hotelRepository->find($id);

        return response()->json([
            "message" => "success",
            "hotel" => $hotel
        ]);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        $hotel = $this->hotelRepository->update($request->request->all(), $id);

        return response()->json([
            "message" => "success",
            "hotel" => $hotel
        ]);
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        $hotel = $this->hotelRepository->delete($id);

        return response()->json([
            "message" => "success"
        ]);
    }
}
