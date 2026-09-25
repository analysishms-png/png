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
 * @method static \Illuminate\Database\Eloquent\Builder|EmpCategory newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|EmpCategory newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|EmpCategory query()
 * @method static \Illuminate\Database\Eloquent\Builder|EmpCategory whereActiv($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EmpCategory whereCode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EmpCategory whereName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EmpCategory wherePropertyid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EmpCategory whereSn($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EmpCategory whereUAe($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EmpCategory whereUEntdt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EmpCategory whereUName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EmpCategory whereUUpdatedt($value)
 * @mixin \Eloquent
 */
class EmpCategory extends Model
{
   use HasFactory;
    protected $primaryKey = 'id';
    const CREATED_AT = 'u_entdt';
    const UPDATED_AT = 'u_updatedt';
    protected $table = 'empcategory';

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
