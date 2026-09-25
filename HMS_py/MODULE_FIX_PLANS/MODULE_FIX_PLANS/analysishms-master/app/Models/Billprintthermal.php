<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

/**
 * @property int $sn
 * @property int $propertyid
 * @property string $type
 * @property string $docid
 * @property string $billdata
 * @property string $printerpath
 * @property int $psno
 * @property \Illuminate\Support\Carbon|null $u_entdt
 * @property \Illuminate\Support\Carbon|null $u_updatedt
 * @property string $u_name
 * @method static \Illuminate\Database\Eloquent\Builder|Billprintthermal newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Billprintthermal newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Billprintthermal query()
 * @method static \Illuminate\Database\Eloquent\Builder|Billprintthermal whereBilldata($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Billprintthermal whereDocid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Billprintthermal wherePrinterpath($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Billprintthermal wherePropertyid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Billprintthermal wherePsno($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Billprintthermal whereSn($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Billprintthermal whereType($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Billprintthermal whereUEntdt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Billprintthermal whereUName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Billprintthermal whereUUpdatedt($value)
 * @mixin \Eloquent
 */
class Billprintthermal extends Model
{
    use HasFactory;
    const CREATED_AT = 'u_entdt';
    const UPDATED_AT = 'u_updatedt';

    protected $fillable = [
        'docid',
        'type',
        'propertyid',
        'billdata',
        'printerpath',
        'psno',
        'u_entdt',
        'u_updatedt',
        'u_name'
    ];
}
