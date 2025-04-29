<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     */
    public function register(): void
    {
        $this->app->bind(
            'App\Repositories\CityRepositoryInterface',
            'App\Repositories\CityRepository'
        );

        $this->app->bind(
            'App\Repositories\HotelRepositoryInterface',
            'App\Repositories\HotelRepository'
        );

        $this->app->bind(
            'App\Repositories\RoomRepositoryInterface',
            'App\Repositories\RoomRepository'
        );

        $this->app->bind(
            'App\Repositories\AccomodationRepositoryInterface',
            'App\Repositories\AccomodationRepository'
        );

        $this->app->bind(
            'App\Repositories\RoomAccomodationRepositoryInterface',
            'App\Repositories\RoomAccomodationRepository'
        );

        $this->app->bind(
            'App\Repositories\HotelRoomRepositoryInterface',
            'App\Repositories\HotelRoomRepository'
        );
    }

    /**
     * Bootstrap any application services.
     */
    public function boot(): void
    {
        //
    }
}
