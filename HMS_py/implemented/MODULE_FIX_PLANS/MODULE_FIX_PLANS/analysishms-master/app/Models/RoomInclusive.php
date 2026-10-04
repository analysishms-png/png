<?php

namespace App\Models;

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
 * @property-read \App\Models\GrpBookinDetail|null $grpbookingdetail
 * @method static \Illuminate\Database\Eloquent\Builder|RoomInclusive newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|RoomInclusive newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|RoomInclusive query()
 * @method static \Illuminate\Database\Eloquent\Builder|RoomInclusive whereAmount($value)
 * @method static \Illuminate\Database\Eloquent\Builder|RoomInclusive whereBookno($value)
 * @method static \Illuminate\Database\Eloquent\Builder|RoomInclusive whereChargepost($value)
 * @method static \Illuminate\Database\Eloquent\Builder|RoomInclusive whereContradocid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|RoomInclusive whereContrasno($value)
 * @method static \Illuminate\Database\Eloquent\Builder|RoomInclusive whereDocid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|RoomInclusive wherePropertyid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|RoomInclusive whereRevCode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|RoomInclusive whereSn($value)
 * @method static \Illuminate\Database\Eloquent\Builder|RoomInclusive whereSno($value)
 * @method static \Illuminate\Database\Eloquent\Builder|RoomInclusive whereUAe($value)
 * @method static \Illuminate\Database\Eloquent\Builder|RoomInclusive whereUEntdt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|RoomInclusive whereUName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|RoomInclusive whereUUpdatedt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|RoomInclusive whereVdate($value)
 * @method static \Illuminate\Database\Eloquent\Builder|RoomInclusive whereVprefix($value)
 * @method static \Illuminate\Database\Eloquent\Builder|RoomInclusive whereVtype($value)
 * @mixin \Eloquent
 */
class RoomInclusive extends Model
{
    protected $table = 'room_inclusive';
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

    public function grpbookingdetail()
    {
        return $this->belongsTo(GrpBookinDetail::class, 'docid', 'BookingDocid');
    }
}
