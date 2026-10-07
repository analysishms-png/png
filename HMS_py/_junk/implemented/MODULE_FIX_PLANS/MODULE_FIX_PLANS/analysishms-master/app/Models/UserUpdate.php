<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

/**
 * @property int $sn
 * @property int $propertyid
 * @property string $oldvalue
 * @property string $newvalue
 * @property string $user
 * @property string $form_type
 * @property \Illuminate\Support\Carbon $u_entdt
 * @property \Illuminate\Support\Carbon $u_updatedt
 * @method static \Illuminate\Database\Eloquent\Builder|UserUpdate newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|UserUpdate newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|UserUpdate query()
 * @method static \Illuminate\Database\Eloquent\Builder|UserUpdate whereFormType($value)
 * @method static \Illuminate\Database\Eloquent\Builder|UserUpdate whereNewvalue($value)
 * @method static \Illuminate\Database\Eloquent\Builder|UserUpdate whereOldvalue($value)
 * @method static \Illuminate\Database\Eloquent\Builder|UserUpdate wherePropertyid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|UserUpdate whereSn($value)
 * @method static \Illuminate\Database\Eloquent\Builder|UserUpdate whereUEntdt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|UserUpdate whereUUpdatedt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|UserUpdate whereUser($value)
 * @mixin \Eloquent
 */
class UserUpdate extends Model
{
    use HasFactory;
    const CREATED_AT = 'u_entdt';
    const UPDATED_AT = 'u_updatedt';
    protected $table = 'userupdate';

    protected $fillable = [
        'user',
        'propertyid',
        'oldvalue',
        'newvalue',
        'form_type',
        'u_entdt',
        'u_updatedt',
    ];
}
