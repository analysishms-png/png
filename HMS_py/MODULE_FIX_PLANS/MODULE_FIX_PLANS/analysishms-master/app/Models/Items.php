<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

/**
 * @property int $sn
 * @property int $propertyid
 * @property int $icode
 * @property string $name
 * @property string|null $barcode
 * @property string|null $hsncode
 * @property string|null $itempic
 * @property string $u_name
 * @property \Illuminate\Support\Carbon $u_entdt
 * @property \Illuminate\Support\Carbon|null $u_updatedt
 * @property string|null $u_ae
 * @method static \Illuminate\Database\Eloquent\Builder|Items newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Items newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Items query()
 * @method static \Illuminate\Database\Eloquent\Builder|Items whereBarcode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Items whereHsncode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Items whereIcode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Items whereItempic($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Items whereName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Items wherePropertyid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Items whereSn($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Items whereUAe($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Items whereUEntdt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Items whereUName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Items whereUUpdatedt($value)
 * @mixin \Eloquent
 */
class Items extends Model
{
    use HasFactory;
    const CREATED_AT = 'u_entdt';
    const UPDATED_AT = 'u_updatedt';
    protected $table = 'items';

    protected $fillable = [
        'propertyid',
        'icode',
        'barcode',
        'name',
        'hsncode',
        'itempic',
        'u_name',
        'u_ae',
        'u_entdt',
        'u_updatedt',
    ];
}
