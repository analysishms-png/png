<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * @property int $sn
 * @property int $propertyid
 * @property string $api_key
 * @property string $bearer_token
 * @property int|null $is_active
 * @property \Illuminate\Support\Carbon|null $u_entdt
 * @property \Illuminate\Support\Carbon|null $u_updatedt
 * @method static \Illuminate\Database\Eloquent\Builder|ApiClient newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|ApiClient newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|ApiClient query()
 * @method static \Illuminate\Database\Eloquent\Builder|ApiClient whereApiKey($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ApiClient whereBearerToken($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ApiClient whereIsActive($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ApiClient wherePropertyid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ApiClient whereSn($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ApiClient whereUEntdt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ApiClient whereUUpdatedt($value)
 * @mixin \Eloquent
 */
class ApiClient extends Model
{
    protected $table = 'api_clients';

    const CREATED_AT = 'u_entdt';
    const UPDATED_AT = 'u_updatedt';

    protected $primaryKey = 'sn';

    protected $fillable = [
        'propertyid',
        'api_key',
        'bearer_token',
        'is_active'
    ];
}
