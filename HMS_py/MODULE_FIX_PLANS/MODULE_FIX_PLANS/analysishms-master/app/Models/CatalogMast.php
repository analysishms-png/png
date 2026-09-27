<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class CatalogMast extends Model
{
    use HasFactory;

    const CREATED_AT = 'u_entdt';
    const UPDATED_AT = null;          // no updated_at column

    protected $table = 'catalogmast';

    protected $fillable = [
        'propertyid',
        'code',
        'itemcode',
        'restcode',
        'name',
        'itemcatcode',
        'u_name',
        'u_entdt',
        'u_ae',
    ];
}
