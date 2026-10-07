<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

/**
 * @property int $sn
 * @property int $propertyid
 * @property int $ucode
 * @property string $name
 * @property string $u_name
 * @property \Illuminate\Support\Carbon $u_entdt
 * @property \Illuminate\Support\Carbon|null $u_updatedt
 * @property string|null $u_ae
 * @property string|null $sysYN
 * @property string|null $activeYN
 * @method static \Illuminate\Database\Eloquent\Builder|UnitMast newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|UnitMast newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|UnitMast query()
 * @method static \Illuminate\Database\Eloquent\Builder|UnitMast whereActiveYN($value)
 * @method static \Illuminate\Database\Eloquent\Builder|UnitMast whereName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|UnitMast wherePropertyid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|UnitMast whereSn($value)
 * @method static \Illuminate\Database\Eloquent\Builder|UnitMast whereSysYN($value)
 * @method static \Illuminate\Database\Eloquent\Builder|UnitMast whereUAe($value)
 * @method static \Illuminate\Database\Eloquent\Builder|UnitMast whereUEntdt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|UnitMast whereUName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|UnitMast whereUUpdatedt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|UnitMast whereUcode($value)
 * @mixin \Eloquent
 */
class UnitMast extends Model
{
    use HasFactory;
    const CREATED_AT = 'u_entdt';
    const UPDATED_AT = 'u_updatedt';
    protected $table = 'unitmast';

    protected $fillable = [
        'ucode',
        'name',
        'propertyid',
        'activeYN',
        'sysYN',
        'u_name',
        'u_ae',
        'u_entdt',
        'u_updatedt',
    ];
}
