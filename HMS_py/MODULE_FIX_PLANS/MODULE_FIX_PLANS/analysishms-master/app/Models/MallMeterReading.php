<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class MallMeterReading extends Model
{
    protected $table = 'mall_meter_reading';

    protected $primaryKey = 'sn';

    public $timestamps = false;

    protected $fillable = [
        'propertyid',
        'shopid',
        'reading_date',
        'previous_reading',
        'current_reading',
        'multiplication_factor',
        'consumption',
        'reading_status',
        'remarks',
        'meter_photo',
        'entry_source',
        'u_name',
        'u_entdt',
        'u_ae',
        'u_updatedby',
        'u_updatedt',
    ];

    protected $casts = [
        'reading_date'          => 'date',
        'previous_reading'      => 'decimal:4',
        'current_reading'       => 'decimal:4',
        'multiplication_factor' => 'decimal:4',
        'consumption'           => 'decimal:4',
    ];
}