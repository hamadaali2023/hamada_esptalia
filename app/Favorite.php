<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Favorite extends Model
{
    protected $casts = [
        'email_verified_at' => 'datetime',
        'doctorId' => 'integer',
        'patientId' => 'integer'
    ];
}
