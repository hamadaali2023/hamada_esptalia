<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Offer extends Model
{
    
     protected $casts = [
        'doctorId' => 'integer',
        
        'old_price' => 'integer',
        'new_price' => 'integer'
    ];
    public function scopeSelection($query)
    {
        return $query->select(
            'id',
            'doctorId',
            'offer_name_' . app()->getLocale() . ' as offer_name',
            'description_' . app()->getLocale() . ' as description',
            'old_price',
            'new_price',
            'percent',
            'image',
            'type',
            'created_at',
            'updated_at'
        );
    }
}
