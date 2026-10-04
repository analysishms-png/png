<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

/**
 * @property int $sn
 * @property int $Property_ID
 * @property string $BookingDocid
 * @property string $BookNo
 * @property string|null $GuestName
 * @property string|null $GuestProf
 * @property int $Sno
 * @property float $RoomDet
 * @property float $Adults
 * @property float $Childs
 * @property string $Tarrif
 * @property string $IncTax
 * @property \Illuminate\Support\Carbon $U_EntDt
 * @property \Illuminate\Support\Carbon|null $u_updatedt
 * @property string $U_AE
 * @property string $RoomCat
 * @property string $ccode
 * @property string $pcode
 * @property string $Plan_Code
 * @property string $ServiceChrg
 * @property string $RoomNo
 * @property string $RateCode
 * @property string $ArrDate
 * @property string $ArrTime
 * @property int $NoDays
 * @property string $DepDate
 * @property string $Cancel
 * @property string|null $CancelDate
 * @property string $U_Name
 * @property string $DepTime
 * @property int $status
 * @property string $RoomTaxStru
 * @property string $CancelUName
 * @property string|null $ContraDocId
 * @property int|null $ContraSno
 * @property string $chkoutyn
 * @property-read \Illuminate\Database\Eloquent\Collection<int, \App\Models\RoomInclusive> $roominclusive
 * @property-read int|null $roominclusive_count
 * @method static \Illuminate\Database\Eloquent\Builder|GrpBookinDetail newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|GrpBookinDetail newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|GrpBookinDetail query()
 * @method static \Illuminate\Database\Eloquent\Builder|GrpBookinDetail whereAdults($value)
 * @method static \Illuminate\Database\Eloquent\Builder|GrpBookinDetail whereArrDate($value)
 * @method static \Illuminate\Database\Eloquent\Builder|GrpBookinDetail whereArrTime($value)
 * @method static \Illuminate\Database\Eloquent\Builder|GrpBookinDetail whereBookNo($value)
 * @method static \Illuminate\Database\Eloquent\Builder|GrpBookinDetail whereBookingDocid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|GrpBookinDetail whereCancel($value)
 * @method static \Illuminate\Database\Eloquent\Builder|GrpBookinDetail whereCancelDate($value)
 * @method static \Illuminate\Database\Eloquent\Builder|GrpBookinDetail whereCancelUName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|GrpBookinDetail whereCcode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|GrpBookinDetail whereChilds($value)
 * @method static \Illuminate\Database\Eloquent\Builder|GrpBookinDetail whereChkoutyn($value)
 * @method static \Illuminate\Database\Eloquent\Builder|GrpBookinDetail whereContraDocId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|GrpBookinDetail whereContraSno($value)
 * @method static \Illuminate\Database\Eloquent\Builder|GrpBookinDetail whereDepDate($value)
 * @method static \Illuminate\Database\Eloquent\Builder|GrpBookinDetail whereDepTime($value)
 * @method static \Illuminate\Database\Eloquent\Builder|GrpBookinDetail whereGuestName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|GrpBookinDetail whereGuestProf($value)
 * @method static \Illuminate\Database\Eloquent\Builder|GrpBookinDetail whereIncTax($value)
 * @method static \Illuminate\Database\Eloquent\Builder|GrpBookinDetail whereNoDays($value)
 * @method static \Illuminate\Database\Eloquent\Builder|GrpBookinDetail wherePcode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|GrpBookinDetail wherePlanCode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|GrpBookinDetail wherePropertyID($value)
 * @method static \Illuminate\Database\Eloquent\Builder|GrpBookinDetail whereRateCode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|GrpBookinDetail whereRoomCat($value)
 * @method static \Illuminate\Database\Eloquent\Builder|GrpBookinDetail whereRoomDet($value)
 * @method static \Illuminate\Database\Eloquent\Builder|GrpBookinDetail whereRoomNo($value)
 * @method static \Illuminate\Database\Eloquent\Builder|GrpBookinDetail whereRoomTaxStru($value)
 * @method static \Illuminate\Database\Eloquent\Builder|GrpBookinDetail whereServiceChrg($value)
 * @method static \Illuminate\Database\Eloquent\Builder|GrpBookinDetail whereSn($value)
 * @method static \Illuminate\Database\Eloquent\Builder|GrpBookinDetail whereSno($value)
 * @method static \Illuminate\Database\Eloquent\Builder|GrpBookinDetail whereStatus($value)
 * @method static \Illuminate\Database\Eloquent\Builder|GrpBookinDetail whereTarrif($value)
 * @method static \Illuminate\Database\Eloquent\Builder|GrpBookinDetail whereUAE($value)
 * @method static \Illuminate\Database\Eloquent\Builder|GrpBookinDetail whereUEntDt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|GrpBookinDetail whereUName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|GrpBookinDetail whereUUpdatedt($value)
 * @mixin \Eloquent
 */
class GrpBookinDetail extends Model
{
    use HasFactory;
    const CREATED_AT = 'U_EntDt';
    const UPDATED_AT = 'u_updatedt';
    protected $primaryKey = 'sn';
    protected $table = 'grpbookingdetails';

    protected $fillable = [
        'sn',
        'Property_ID',
        'BookingDocid',
        'BookNo',
        'GuestName',
        'GuestProf',
        'Sno',
        'RoomDet',
        'Adults',
        'Childs',
        'Tarrif',
        'IncTax',
        'U_EntDt',
        'u_updatedt',
        'U_AE',
        'RoomCat',
        'ccode',
        'pcode',
        'Plan_Code',
        'Remarks',
        'ServiceChrg',
        'RoomNo',
        'RateCode',
        'ArrDate',
        'ArrTime',
        'NoDays',
        'DepDate',
        'Cancel',
        'CancelDate',
        'U_Name',
        'DepTime',
        'status',
        'RoomTaxStru',
        'CancelUName',
        'extraadd',
        'ContraDocId',
        'ContraSno',
        'chkoutyn'
    ];

    public function roominclusive()
    {
        return $this->hasMany(RoomInclusive::class, 'docid', 'BookingDocid');
    }
}
