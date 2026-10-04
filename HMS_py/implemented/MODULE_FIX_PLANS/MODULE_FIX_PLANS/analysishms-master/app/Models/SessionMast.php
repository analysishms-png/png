<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

/**
 * @property int $sn
 * @property int $propertyid
 * @property string $scode
 * @property string $name
 * @property string $from_time
 * @property string $to_time
 * @property string $u_name
 * @property \Illuminate\Support\Carbon $u_entdt
 * @property \Illuminate\Support\Carbon|null $u_updatedt
 * @property string|null $u_ae
 * @property string|null $sysYN
 * @method static \Illuminate\Database\Eloquent\Builder|SessionMast newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|SessionMast newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|SessionMast query()
 * @method static \Illuminate\Database\Eloquent\Builder|SessionMast whereFromTime($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SessionMast whereName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SessionMast wherePropertyid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SessionMast whereScode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SessionMast whereSn($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SessionMast whereSysYN($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SessionMast whereToTime($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SessionMast whereUAe($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SessionMast whereUEntdt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SessionMast whereUName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SessionMast whereUUpdatedt($value)
 * @mixin \Eloquent
 */
class SessionMast extends Model
{
    use HasFactory;
    const CREATED_AT = 'u_entdt';
    const UPDATED_AT = 'u_updatedt';
    protected $table = 'session_mast';
}
