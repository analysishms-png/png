<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * @property int $sn
 * @property int $propertyid
 * @property int $leaseid
 * @property string $chargecode
 * @property string|null $effectivefrom
 * @property string|null $effectiveto
 * @property int $aftermonths
 * @property string $increasetype
 * @property float $increasepercent
 * @property float $increaseamount
 * @property float $oldrate
 * @property float $newrate
 * @property float $oldamount
 * @property float $newamount
 * @property float $area
 * @property string|null $u_name
 * @property string|null $u_entdt
 * @property string|null $u_updatedby
 * @property string|null $u_updatedt
 */
class MallLeaseEscalation extends Model
{
    protected $table      = 'mall_lease_escalation';
    protected $primaryKey = 'sn';

    public $timestamps = false;

    protected $fillable = [
        'propertyid',
        'leaseid',
        'chargecode',
        'effectivefrom',
        'effectiveto',
        'aftermonths',
        'increasetype',
        'increasepercent',
        'increaseamount',
        'oldrate',
        'newrate',
        'oldamount',
        'newamount',
        'area',
        'u_name',
        'u_entdt',
        'u_updatedby',
        'u_updatedt',
    ];
}