<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

/**
 * @property int $sn
 * @property int $propertyid
 * @property string $order_id
 * @property string $rest_code
 * @property string $baserestcode
 * @property string $roomno
 * @property string $roomtype
 * @property int $item
 * @property string $qty
 * @property string $waiter
 * @property string $status
 * @property \Illuminate\Support\Carbon|null $u_entdt
 * @property \Illuminate\Support\Carbon|null $u_updatedt
 * @method static \Illuminate\Database\Eloquent\Builder|OrderRequest newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|OrderRequest newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|OrderRequest query()
 * @method static \Illuminate\Database\Eloquent\Builder|OrderRequest whereBaserestcode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|OrderRequest whereItem($value)
 * @method static \Illuminate\Database\Eloquent\Builder|OrderRequest whereOrderId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|OrderRequest wherePropertyid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|OrderRequest whereQty($value)
 * @method static \Illuminate\Database\Eloquent\Builder|OrderRequest whereRestCode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|OrderRequest whereRoomno($value)
 * @method static \Illuminate\Database\Eloquent\Builder|OrderRequest whereRoomtype($value)
 * @method static \Illuminate\Database\Eloquent\Builder|OrderRequest whereSn($value)
 * @method static \Illuminate\Database\Eloquent\Builder|OrderRequest whereStatus($value)
 * @method static \Illuminate\Database\Eloquent\Builder|OrderRequest whereUEntdt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|OrderRequest whereUUpdatedt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|OrderRequest whereWaiter($value)
 * @mixin \Eloquent
 */
class OrderRequest extends Model
{
    use HasFactory;

    const CREATED_AT = 'u_entdt';
    const UPDATED_AT = 'u_updatedt';
    protected $table = 'order_requests';

    protected $fillable = [
        'sn',
        'propertyid',
        'order_id',
        'rest_code',
        'baserestcode',
        'roomno',
        'roomtype',
        'itemcode',
        'item',
        'qty',
        'waiter',
        'status',
        'u_entdt',
        'u_updatedt'
    ];
}
