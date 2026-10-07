<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

/**
 * @property int $sn
 * @property int $propertyid
 * @property string $code
 * @property string $name
 * @property string $Activ
 * @property string $u_name
 * @property \Illuminate\Support\Carbon $u_entdt
 * @property string $u_ae
 * @property \Illuminate\Support\Carbon $u_updatedt
 * @method static \Illuminate\Database\Eloquent\Builder|Hrpayrolls newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Hrpayrolls newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Hrpayrolls query()
 * @method static \Illuminate\Database\Eloquent\Builder|Hrpayrolls whereActiv($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Hrpayrolls whereCode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Hrpayrolls whereName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Hrpayrolls wherePropertyid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Hrpayrolls whereSn($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Hrpayrolls whereUAe($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Hrpayrolls whereUEntdt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Hrpayrolls whereUName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Hrpayrolls whereUUpdatedt($value)
 * @mixin \Eloquent
 */
class Hrpayrolls extends Model
{
    use HasFactory;
    protected $primaryKey = 'id';
    const CREATED_AT = 'u_entdt';
    const UPDATED_AT = 'u_updatedt';
    protected $table = 'desig';

    protected $fillable = [
        'propertyid',
        'code',
        'name',
        'Activ',
        'u_name',
        'u_entdt',
        'u_ae',
        'u_updatedt'
    ];
}
