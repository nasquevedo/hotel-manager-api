<?php

use App\Http\Controllers\CityController;
use App\Http\Controllers\HotelController;
use App\Http\Middleware\Cors;
use Illuminate\Support\Facades\Route;

Route::name('v1')->prefix('v1')->group(function () {
    Route::controller(HotelController::class)->group(function() {
        Route::get('/hotels', 'index');
        Route::post('/hotels/create', 'store')->middleware(Cors::class);
        Route::get('/hotels/{id}', 'show');
        Route::put('/hotels/update/{id}', 'update');
        Route::delete('/hotels/delete/{id}', 'destroy');
    });

    Route::controller(CityController::class)->group(function () {
        Route::get('/cities', 'index');
    });
});

