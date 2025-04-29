<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Repositories\HotelRoomRepositoryInterface;
use App\Services\ValidatorServiceInterface;
use Illuminate\Http\Request;

class HotelRoomController extends Controller
{
    private $hotelRoomRepository;

    private $validatorService;

    public function __construct(
        HotelRoomRepositoryInterface $hotelRoomRepository,
        ValidatorServiceInterface $validatorService
    )
    {
        $this->hotelRoomRepository = $hotelRoomRepository;
        $this->validatorService = $validatorService;
    }

    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $hotelRooms = $this->hotelRoomRepository->all();

        return response()->json([
            "message" => "success",
            "hotel_rooms" => $hotelRooms 
        ]);
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $validRooms = $this->validatorService->validateAvailableRooms($request->request->all(), null);
        if (!$validRooms) {
            return response()->json([
                "message" => "Ha llegado al limite de cuartos para este hotel"
            ]);
        }
        
        $hotelRoom = $this->hotelRoomRepository->create($request->request->all());

        return response()->json([
            "message" => "success",
            "hotel_room" => $hotelRoom
        ]);
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        $hotelRoom = $this->hotelRoomRepository->find($id);

        return response()->json([
            "message" => "success",
            "hotel_room" => $hotelRoom
        ]);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        $validRooms = $this->validatorService->validateAvailableRooms($request->request->all(), $id);
        if (!$validRooms) {
            return response()->json([
                "message" => "Ha llegado al limite de cuartos para este hotel"
            ]);
        }
        
        $hotelRoom = $this->hotelRoomRepository->update($request->request->all(), $id);

        return response()->json([
            "message" => "success",
            "hotel_room" => $hotelRoom
        ]);
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        $this->hotelRoomRepository->delete($id);

        return response()->json([
            "message" => "success"
        ]);
    }
}
