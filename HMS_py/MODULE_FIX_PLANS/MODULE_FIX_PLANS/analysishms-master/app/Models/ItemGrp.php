<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

/**
 * @property int $sn
 * @property int $property_id
 * @property int $code
 * @property string $name
 * @property string|null $type
 * @property string|null $activeyn
 * @property string|null $u_name
 * @property \Illuminate\Support\Carbon|null $u_entdt
 * @property \Illuminate\Support\Carbon|null $u_updatedt
 * @property string|null $u_ae
 * @property string $restcode
 * @property string $cattype
 * @method static \Illuminate\Database\Eloquent\Builder|ItemGrp newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|ItemGrp newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|ItemGrp query()
 * @method static \Illuminate\Database\Eloquent\Builder|ItemGrp whereActiveyn($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ItemGrp whereCattype($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ItemGrp whereCode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ItemGrp whereName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ItemGrp wherePropertyId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ItemGrp whereRestcode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ItemGrp whereSn($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ItemGrp whereType($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ItemGrp whereUAe($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ItemGrp whereUEntdt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ItemGrp whereUName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ItemGrp whereUUpdatedt($value)
 * @mixin \Eloquent
 */
class ItemGrp extends Model
{
    use HasFactory;
    const CREATED_AT = 'u_entdt';
    const UPDATED_AT = 'u_updatedt';
    protected $table = 'itemgrp';

    protected $fillable = [
        'code',
        'name',
        'property_id',
        'restcode',
        'type',
        'cattype',
        'activeyn',
        'u_name',
        'u_ae',
        'u_entdt',
        'u_updatedt',
    ];
}
