<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Hotel extends Model
{
    use HasFactory;

    protected $fillable = [
        'name', 'city_id', 'address', 'nit', 'number_rooms'
    ];

    public function city()
    {
        return $this->belongsTo('App\Models\City');
    }

    public function HotelRooms()
    {
        return $this->hasMany('App\Models\HotelRoom');
    }
}
