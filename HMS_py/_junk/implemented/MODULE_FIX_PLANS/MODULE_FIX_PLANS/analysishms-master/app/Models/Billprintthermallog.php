<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

/**
 * @property int $sn
 * @property int $propertyid
 * @property string $docid
 * @property string $billdata
 * @property \Illuminate\Support\Carbon|null $u_entdt
 * @property \Illuminate\Support\Carbon|null $u_updatedt
 * @property string $u_name
 * @method static \Illuminate\Database\Eloquent\Builder|Billprintthermallog newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Billprintthermallog newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Billprintthermallog query()
 * @method static \Illuminate\Database\Eloquent\Builder|Billprintthermallog whereBilldata($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Billprintthermallog whereDocid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Billprintthermallog wherePropertyid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Billprintthermallog whereSn($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Billprintthermallog whereUEntdt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Billprintthermallog whereUName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Billprintthermallog whereUUpdatedt($value)
 * @mixin \Eloquent
 */
class Billprintthermallog extends Model
{
    use HasFactory;
    const CREATED_AT = 'u_entdt';
    const UPDATED_AT = 'u_updatedt';

    protected $fillable = [
        'propertyid',
        'docid',
        'billdata',
        'printerpath',
        'psno',
        'u_entdt',
        'u_updatedt',
        'u_name'
    ];
}
