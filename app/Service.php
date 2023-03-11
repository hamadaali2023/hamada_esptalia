<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Service extends Model
{
    
    protected $fillable=['doctorId','services_name_ar','services_name_en','price','type'];
    
    protected $casts = [
        'doctorId' => 'integer',
        'price' => 'integer',
        'status' => 'integer'
    ];
    public function scopeSelection($query)
    {
        
        return $query->select(
            'id',
            'doctorId',
            'services_name_' . app()->getLocale() . ' as services_name',
            'price',
            'status',
            'duration',
            'icon',
            'type',
            'created_at',
            'updated_at'
        );
    }

}
