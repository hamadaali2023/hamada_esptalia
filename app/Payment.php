<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Payment extends Model
{
     protected $casts = [
        'doctorId' => 'integer',
        'patientId' => 'integer',
        'appointmentId' => 'integer',
        'amount' => 'integer'
    ];
}
