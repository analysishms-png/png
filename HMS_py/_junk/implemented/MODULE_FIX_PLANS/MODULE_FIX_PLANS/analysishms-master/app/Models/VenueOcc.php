<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

/**
 * @property int $sn
 * @property int $propertyid
 * @property string $fpdocid
 * @property string $venucode
 * @property int $sno
 * @property string $fromdate
 * @property string $dromtime
 * @property string $todate
 * @property string $totime
 * @property string $u_name
 * @property \Illuminate\Support\Carbon $u_entdt
 * @property string $u_ae
 * @property \Illuminate\Support\Carbon|null $u_updatedt
 * @method static \Illuminate\Database\Eloquent\Builder|VenueOcc newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|VenueOcc newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|VenueOcc query()
 * @method static \Illuminate\Database\Eloquent\Builder|VenueOcc whereDromtime($value)
 * @method static \Illuminate\Database\Eloquent\Builder|VenueOcc whereFpdocid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|VenueOcc whereFromdate($value)
 * @method static \Illuminate\Database\Eloquent\Builder|VenueOcc wherePropertyid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|VenueOcc whereSn($value)
 * @method static \Illuminate\Database\Eloquent\Builder|VenueOcc whereSno($value)
 * @method static \Illuminate\Database\Eloquent\Builder|VenueOcc whereTodate($value)
 * @method static \Illuminate\Database\Eloquent\Builder|VenueOcc whereTotime($value)
 * @method static \Illuminate\Database\Eloquent\Builder|VenueOcc whereUAe($value)
 * @method static \Illuminate\Database\Eloquent\Builder|VenueOcc whereUEntdt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|VenueOcc whereUName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|VenueOcc whereUUpdatedt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|VenueOcc whereVenucode($value)
 * @mixin \Eloquent
 */
class VenueOcc extends Model
{
    use HasFactory;
    const CREATED_AT = 'u_entdt';
    const UPDATED_AT = 'u_updatedt';
    protected $table = 'venueocc';

    protected $fillable = [
        'propertyid',
        'fpdocid',
        'venucode',
        'sno',
        'fromdate',
        'dromtime',
        'todate',
        'totime',
        'u_name',
        'u_entdt',
        'u_updatedt',
        'u_ae'
    ];
}
