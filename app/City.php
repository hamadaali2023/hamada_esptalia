<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class City extends Model
{
    protected $casts = [
        'countryId' => 'integer'
    ];
    public function scopeSelection($query)
    {
        return $query->select(
            'id',
            'countryId',
            'name_' . app()->getLocale() . ' as name',
            'created_at',
            'updated_at'       
        );
    }
}