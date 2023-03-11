<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class WorkingDays extends Model
{
    protected $casts = [
        'doctorId' => 'integer'
    ];
}
