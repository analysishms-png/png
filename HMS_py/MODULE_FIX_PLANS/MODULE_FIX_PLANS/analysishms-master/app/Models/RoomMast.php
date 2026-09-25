<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

/**
 * @property int $sno
 * @property int $cs
 * @property int $propertyid
 * @property string $rcode
 * @property string $name
 * @property string $type
 * @property string $room_cat
 * @property int|null $multiper
 * @property string|null $maid_station
 * @property string $inclcount
 * @property string $rest_code
 * @property string|null $room_stat
 * @property string $floor
 * @property string|null $pic_path
 * @property string $u_name
 * @property \Illuminate\Support\Carbon $u_entdt
 * @property \Illuminate\Support\Carbon|null $u_updatedt
 * @property string|null $u_ae
 * @property string|null $sysYN
 * @method static \Illuminate\Database\Eloquent\Builder|RoomMast newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|RoomMast newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|RoomMast query()
 * @method static \Illuminate\Database\Eloquent\Builder|RoomMast whereCs($value)
 * @method static \Illuminate\Database\Eloquent\Builder|RoomMast whereFloor($value)
 * @method static \Illuminate\Database\Eloquent\Builder|RoomMast whereInclcount($value)
 * @method static \Illuminate\Database\Eloquent\Builder|RoomMast whereMaidStation($value)
 * @method static \Illuminate\Database\Eloquent\Builder|RoomMast whereMultiper($value)
 * @method static \Illuminate\Database\Eloquent\Builder|RoomMast whereName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|RoomMast wherePicPath($value)
 * @method static \Illuminate\Database\Eloquent\Builder|RoomMast wherePropertyid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|RoomMast whereRcode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|RoomMast whereRestCode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|RoomMast whereRoomCat($value)
 * @method static \Illuminate\Database\Eloquent\Builder|RoomMast whereRoomStat($value)
 * @method static \Illuminate\Database\Eloquent\Builder|RoomMast whereSno($value)
 * @method static \Illuminate\Database\Eloquent\Builder|RoomMast whereSysYN($value)
 * @method static \Illuminate\Database\Eloquent\Builder|RoomMast whereType($value)
 * @method static \Illuminate\Database\Eloquent\Builder|RoomMast whereUAe($value)
 * @method static \Illuminate\Database\Eloquent\Builder|RoomMast whereUEntdt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|RoomMast whereUName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|RoomMast whereUUpdatedt($value)
 * @mixin \Eloquent
 */
class RoomMast extends Model
{
    use HasFactory;

    protected $table = 'room_mast';

    protected $primaryKey = 'sno';

    public $incrementing = false;

    const CREATED_AT = 'u_entdt';
    const UPDATED_AT = 'u_updatedt';

    protected $fillable = [
        'sno',
        'cs',
        'propertyid',
        'rcode',
        'name',
        'type',
        'room_cat',
        'multiper',
        'maid_station',
        'inclcount',
        'rest_code',
        'room_stat',
        'pic_path',
        'u_name',
        'u_entdt',
        'u_updatedt',
        'u_ae',
        'sysYN',
    ];
}
