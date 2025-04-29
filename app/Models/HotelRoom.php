<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class HotelRoom extends Model
{
    use HasFactory;

    protected $fillable = [
        'hotel_id', 'room_accomodation_id', 'number_rooms'
    ];

    public function Hotel()
    {
        return $this->belongsTo('App\Models\Hotel');
    }

    public function RoomAccomodation()
    {
        return $this->belongsTo('App\Models\RoomAccomodation');
    }
}
