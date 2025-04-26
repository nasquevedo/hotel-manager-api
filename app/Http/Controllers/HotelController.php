<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Hotel;

class HotelController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $hotels = Hotel::all();
        return response()->json([
            "hotels" => $hotels
        ]);
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        dd($request);
        $hotel = new Hotel();

        $hotel->name = $request->input('name');
        $hotel->city_id = $request->input('city');
        $hotel->address = $request->input('address');
        $hotel->nit = $request->input('nit');
        $hotel->number_rooms = $request->input('number_rooms');

        $hotel->save();

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
        $hotel = Hotel::find($id);

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
        $hotel = Hotel::find($id);

        $hotel->name = $request->input('name');
        $hotel->city_id = $request->input('city');
        $hotel->address = $request->input('address');
        $hotel->nit = $request->input('nit');
        $hotel->number_rooms = $request->input('number_rooms');

        $hotel->save();

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
        //
    }
}
