<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

/**
 * @property int $sn
 * @property int $propertyid
 * @property string $docid
 * @property int $bookno
 * @property string $vtype
 * @property string $vprefix
 * @property string|null $vdate
 * @property int $sno
 * @property string $rev_code
 * @property string $amount
 * @property string $chargepost
 * @property string $contradocid
 * @property int $contrasno
 * @property \Illuminate\Support\Carbon $u_entdt
 * @property \Illuminate\Support\Carbon $u_updatedt
 * @property string $u_name
 * @property string $u_ae
 * @method static \Illuminate\Database\Eloquent\Builder|RoomInclusiveLog newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|RoomInclusiveLog newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|RoomInclusiveLog query()
 * @method static \Illuminate\Database\Eloquent\Builder|RoomInclusiveLog whereAmount($value)
 * @method static \Illuminate\Database\Eloquent\Builder|RoomInclusiveLog whereBookno($value)
 * @method static \Illuminate\Database\Eloquent\Builder|RoomInclusiveLog whereChargepost($value)
 * @method static \Illuminate\Database\Eloquent\Builder|RoomInclusiveLog whereContradocid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|RoomInclusiveLog whereContrasno($value)
 * @method static \Illuminate\Database\Eloquent\Builder|RoomInclusiveLog whereDocid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|RoomInclusiveLog wherePropertyid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|RoomInclusiveLog whereRevCode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|RoomInclusiveLog whereSn($value)
 * @method static \Illuminate\Database\Eloquent\Builder|RoomInclusiveLog whereSno($value)
 * @method static \Illuminate\Database\Eloquent\Builder|RoomInclusiveLog whereUAe($value)
 * @method static \Illuminate\Database\Eloquent\Builder|RoomInclusiveLog whereUEntdt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|RoomInclusiveLog whereUName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|RoomInclusiveLog whereUUpdatedt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|RoomInclusiveLog whereVdate($value)
 * @method static \Illuminate\Database\Eloquent\Builder|RoomInclusiveLog whereVprefix($value)
 * @method static \Illuminate\Database\Eloquent\Builder|RoomInclusiveLog whereVtype($value)
 * @mixin \Eloquent
 */
class RoomInclusiveLog extends Model
{
    use HasFactory;
    protected $table = 'room_inclusive_log';
    const CREATED_AT = 'u_entdt';
    const UPDATED_AT = 'u_updatedt';

    protected $fillable = [
        'propertyid',
        'docid',
        'bookno',
        'vtype',
        'vprefix',
        'vdate',
        'sno',
        'rev_code',
        'amount',
        'chargepost',
        'contradocid',
        'contrasno',
        'u_entdt',
        'u_updatedt',
        'u_name',
        'u_ae'
    ];
}
