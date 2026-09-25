<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

/**
 * @property int $sn
 * @property int $propertyid
 * @property int $opt1
 * @property int $opt2
 * @property int $opt3
 * @property int $code
 * @property string $route
 * @property string $module
 * @property string $module_name
 * @property string $flag
 * @property string $outletcode
 * @property \Illuminate\Support\Carbon $u_entdt
 * @property \Illuminate\Support\Carbon|null $u_updatedt
 * @method static \Illuminate\Database\Eloquent\Builder|UserModule newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|UserModule newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|UserModule query()
 * @method static \Illuminate\Database\Eloquent\Builder|UserModule whereCode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|UserModule whereFlag($value)
 * @method static \Illuminate\Database\Eloquent\Builder|UserModule whereModule($value)
 * @method static \Illuminate\Database\Eloquent\Builder|UserModule whereModuleName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|UserModule whereOpt1($value)
 * @method static \Illuminate\Database\Eloquent\Builder|UserModule whereOpt2($value)
 * @method static \Illuminate\Database\Eloquent\Builder|UserModule whereOpt3($value)
 * @method static \Illuminate\Database\Eloquent\Builder|UserModule whereOutletcode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|UserModule wherePropertyid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|UserModule whereRoute($value)
 * @method static \Illuminate\Database\Eloquent\Builder|UserModule whereSn($value)
 * @method static \Illuminate\Database\Eloquent\Builder|UserModule whereUEntdt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|UserModule whereUUpdatedt($value)
 * @mixin \Eloquent
 */
class UserModule extends Model
{
    use HasFactory;
    const CREATED_AT = 'u_entdt';
    const UPDATED_AT = 'u_updatedt';

    protected $table = 'usermodule';

    protected $fillable = [
        'propertyid',
        'opt1',
        'opt2',
        'opt3',
        'route',
        'code',
        'module',
        'module_name',
        'flag',
        'outletcode',
        'u_entdt',
        'u_updatedt',
    ];
}
