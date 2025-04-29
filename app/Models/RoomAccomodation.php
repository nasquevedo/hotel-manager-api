<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class RoomAccomodation extends Model
{
    use HasFactory;

    protected $fillable = [
        'room_id', 'accomodation_id'
    ];

    public function Room()
    {
        return $this->belongsTo('App\Models\Room');
    }

    public function accomodation()
    {
        return $this->belongsTo('App\Models\Accomodation');
    }

    public function HotelRooms()
    {
        return $this->hasMany('App\Models\HotelRoom');
    }
}
