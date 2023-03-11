<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Appointment extends Model
{
     protected $fillable = [
        'expire'
    ];
    
    protected $casts = [
        'doctorId' => 'integer',
        'patientId' => 'integer',
        'payment_status' => 'integer',
        'amount' => 'integer'
    ];
}
