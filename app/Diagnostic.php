<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Diagnostic extends Model
{
    protected $casts = [
        'doctorId' => 'integer',
        'patientId' => 'integer',
        'appointmentId' => 'integer'
    ];
}
