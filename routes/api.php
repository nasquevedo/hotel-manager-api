<?php

use App\Http\Controllers\AccomodationController;
use App\Http\Controllers\CityController;
use App\Http\Controllers\HotelController;
use App\Http\Controllers\HotelRoomController;
use App\Http\Controllers\RoomController;
use Illuminate\Support\Facades\Route;

Route::name('v1')->prefix('v1')->group(function () {
    Route::controller(HotelController::class)->group(function() {
        Route::get('/hotels', 'index');
        Route::post('/hotels/create', 'store');
        Route::get('/hotels/{id}', 'show');
        Route::put('/hotels/update/{id}', 'update');
        Route::delete('/hotels/delete/{id}', 'destroy');
    });

    Route::controller(CityController::class)->group(function () {
        Route::get('/cities', 'index');
    });

    Route::controller(RoomController::class)->group(function () {
        Route::get('/rooms', 'index');
    });

    Route::controller(AccomodationController::class)->group(function () {
        Route::get('/accomodations', 'index');
        Route::get('/accomodations/{id}', 'showByRoomId');
    });

    Route::controller(HotelRoomController::class)->group(function () {
        Route::get('/hotel/rooms', 'index');
        Route::post('/hotel/rooms/create', 'store');
        Route::get('/hotel/rooms/{id}', 'show');
        Route::put('/hotel/rooms/update/{id}', 'update');
        Route::delete('/hotel/rooms/delete/{id}', 'destroy');
    });
});

