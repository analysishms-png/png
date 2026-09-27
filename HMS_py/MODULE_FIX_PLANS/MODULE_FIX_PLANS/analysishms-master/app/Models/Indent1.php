<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

/**
 * @property int $sn
 * @property int $propertyid
 * @property string $docid
 * @property int $sno
 * @property string $vtype
 * @property int $vno
 * @property string $vdate
 * @property string $vprefix
 * @property string $item
 * @property string $qty
 * @property string $rate
 * @property string $amount
 * @property string $unit
 * @property string $vqty
 * @property string $balqty
 * @property string $wtunit
 * @property string $delflag
 * @property string $u_name
 * @property \Illuminate\Support\Carbon $u_entdt
 * @property \Illuminate\Support\Carbon|null $u_updatedt
 * @property string $u_ae
 * @property string $specification
 * @property float $convfactor
 * @property float $qtqty
 * @method static \Illuminate\Database\Eloquent\Builder|Indent1 newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Indent1 newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Indent1 query()
 * @method static \Illuminate\Database\Eloquent\Builder|Indent1 whereAmount($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Indent1 whereBalqty($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Indent1 whereConvfactor($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Indent1 whereDelflag($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Indent1 whereDocid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Indent1 whereItem($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Indent1 wherePropertyid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Indent1 whereQtqty($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Indent1 whereQty($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Indent1 whereRate($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Indent1 whereSn($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Indent1 whereSno($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Indent1 whereSpecification($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Indent1 whereUAe($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Indent1 whereUEntdt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Indent1 whereUName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Indent1 whereUUpdatedt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Indent1 whereUnit($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Indent1 whereVdate($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Indent1 whereVno($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Indent1 whereVprefix($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Indent1 whereVqty($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Indent1 whereVtype($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Indent1 whereWtunit($value)
 * @mixin \Eloquent
 */
class Indent1 extends Model
{
    use HasFactory;
    const CREATED_AT = 'u_entdt';
    const UPDATED_AT = 'u_updatedt';
    protected $primaryKey = 'sn';

    protected $table = 'indent1';

    protected $fillable = [
        'sn',
        'propertyid',
        'docid',
        'vtype',
        'vno',
        'vprefix',
        'vdate',
        'sno',
        'item',
        'qty',
        'unit ',
        'vqty',
        'balqty',
        'wtunit',
        'u_name',
        'u_entdt',
        'u_updatedt',
        'u_ae'
    ];
}
