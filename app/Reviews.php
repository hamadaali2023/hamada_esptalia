<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Reviews extends Model
{
    protected $casts = [
        'doctorId' => 'integer',
        'patientId' => 'integer'
    ];
}
