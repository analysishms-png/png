<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

/**
 * @property int $sn
 * @property int $propertyid
 * @property string $type
 * @property int $cat_code
 * @property string|null $name
 * @property string|null $shortname
 * @property string|null $rev_code
 * @property int|null $norooms
 * @property string|null $multiper
 * @property string|null $inclcount
 * @property string|null $map_code
 * @property string|null $image_path
 * @property string|null $ammenties
 * @property string $u_name
 * @property \Illuminate\Support\Carbon $u_entdt
 * @property \Illuminate\Support\Carbon|null $u_updatedt
 * @property string|null $u_ae
 * @property string|null $sysYN
 * @property-read \App\Models\Companyreg|null $companyreg
 * @property-read \Illuminate\Database\Eloquent\Collection<int, \App\Models\PlanMast> $plans
 * @property-read int|null $plans_count
 * @property-read \Illuminate\Database\Eloquent\Collection<int, \App\Models\RateList> $ratelistdetails
 * @property-read int|null $ratelistdetails_count
 * @property-read \Illuminate\Database\Eloquent\Collection<int, \App\Models\RoomMast> $room
 * @property-read int|null $room_count
 * @method static \Illuminate\Database\Eloquent\Builder|RoomCat newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|RoomCat newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|RoomCat query()
 * @method static \Illuminate\Database\Eloquent\Builder|RoomCat whereAmmenties($value)
 * @method static \Illuminate\Database\Eloquent\Builder|RoomCat whereCatCode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|RoomCat whereImagePath($value)
 * @method static \Illuminate\Database\Eloquent\Builder|RoomCat whereInclcount($value)
 * @method static \Illuminate\Database\Eloquent\Builder|RoomCat whereMapCode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|RoomCat whereMultiper($value)
 * @method static \Illuminate\Database\Eloquent\Builder|RoomCat whereName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|RoomCat whereNorooms($value)
 * @method static \Illuminate\Database\Eloquent\Builder|RoomCat wherePropertyid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|RoomCat whereRevCode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|RoomCat whereShortname($value)
 * @method static \Illuminate\Database\Eloquent\Builder|RoomCat whereSn($value)
 * @method static \Illuminate\Database\Eloquent\Builder|RoomCat whereSysYN($value)
 * @method static \Illuminate\Database\Eloquent\Builder|RoomCat whereType($value)
 * @method static \Illuminate\Database\Eloquent\Builder|RoomCat whereUAe($value)
 * @method static \Illuminate\Database\Eloquent\Builder|RoomCat whereUEntdt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|RoomCat whereUName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|RoomCat whereUUpdatedt($value)
 * @mixin \Eloquent
 */
class RoomCat extends Model
{
    use HasFactory;

    protected $table = 'room_cat';

    const CREATED_AT = 'u_entdt';
    const UPDATED_AT = 'u_updatedt';

    protected $fillable = [
        'sn',
        'propertyid',
        'type',
        'cat_code',
        'name',
        'shortname',
        'rev_code',
        'norooms',
        'multiper',
        'inclcount',
        'map_code',
        'image_path',
        'ammenties',
        'u_name',
        'u_entdt',
        'u_updatedt',
        'u_ae',
        'sysYN',
    ];

    public function companyreg()
    {
        return $this->belongsTo(Companyreg::class, 'propertyid', 'propertyid');
    }

    public function room()
    {
        return $this->hasMany(RoomMast::class, 'room_cat', 'cat_code');
    }

    public function plans()
    {
        return $this->hasMany(PlanMast::class, 'room_cat', 'cat_code');
    }

    public function ratelistdetails()
    {
        return $this->hasMany(RateList::class, 'room_cat', 'cat_code')
            ->select(
                'room_cat',
                'occtype',
                'rate1',
                'rate2',
                'rate3',
                'rate4',
                'rate5'
            );
    }
}
