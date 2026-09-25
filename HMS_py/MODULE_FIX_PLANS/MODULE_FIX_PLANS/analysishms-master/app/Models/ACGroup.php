<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

/**
 * @property int $sn
 * @property int $propertyid
 * @property string $group_code
 * @property string $group_name
 * @property string $maingroupcode
 * @property string $maingroupname
 * @property string $nature
 * @property string $sys_group
 * @property string $undergroup
 * @property string $u_name
 * @property \Illuminate\Support\Carbon $u_entdt
 * @property \Illuminate\Support\Carbon|null $u_updatedt
 * @property string $u_ae
 * @method static \Illuminate\Database\Eloquent\Builder|ACGroup newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|ACGroup newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|ACGroup query()
 * @method static \Illuminate\Database\Eloquent\Builder|ACGroup whereGroupCode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ACGroup whereGroupName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ACGroup whereMaingroupcode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ACGroup whereMaingroupname($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ACGroup whereNature($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ACGroup wherePropertyid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ACGroup whereSn($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ACGroup whereSysGroup($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ACGroup whereUAe($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ACGroup whereUEntdt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ACGroup whereUName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ACGroup whereUUpdatedt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ACGroup whereUndergroup($value)
 * @mixin \Eloquent
 */
class ACGroup extends Model
{
    use HasFactory;
    const CREATED_AT = 'u_entdt';
    const UPDATED_AT = 'u_updatedt';
    protected $table = 'acgroup';

    protected $fillable = [
        'group_code',
        'group_name',
        'maingroupcode',
        'maingroupname',
        'nature',
        'propertyid',
        'u_entdt',
        'u_updatedt',
        'u_name'
    ];
}
