<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class BuildingMaster extends Model
{
    use HasFactory;
    const CREATED_AT = 'u_entdt';
    const UPDATED_AT = null;
    protected $primaryKey = 'sn';
    protected $table = 'buildingmaster';

    protected $fillable = [
        'sn',
        'propertyid',
        'code',
        'name',
        'activeyn',
        'u_name',
        'u_entdt',
        'u_ae',
    ];
}