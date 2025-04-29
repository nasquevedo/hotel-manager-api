<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Models\Accomodation;
use App\Repositories\AccomodationRepositoryInterface;
use App\Repositories\RoomAccomodationRepositoryInterface;
use Illuminate\Http\Request;

class AccomodationController extends Controller
{
    private $accomodationRepository;

    private $roomAccomodationRepository;

    public function __construct(
        AccomodationRepositoryInterface $accomodationRepository,
        RoomAccomodationRepositoryInterface $roomAccomodationRepository
    )
    {
        $this->accomodationRepository = $accomodationRepository;
        $this->roomAccomodationRepository = $roomAccomodationRepository;
    }
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $accomodations = $this->accomodationRepository->all();

        return response()->json([
            "message" => "success",
            "accomodations" => $accomodations
        ]);
    }

    /**
     * Display the specified resource.
     */
    public function showByRoomId(string $roomId)
    {
        $accomodations = $this->roomAccomodationRepository->findByRoomId($roomId);

        return response()->json([
            "message" => "success",
            "accomodations" => $accomodations
        ]);
    }
}
