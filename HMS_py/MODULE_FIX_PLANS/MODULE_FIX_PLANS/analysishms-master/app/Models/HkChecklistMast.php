<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * @property int $sn
 * @property int $propertyid
 * @property string $code
 * @property int $sno
 * @property string $name
 * @property string $dcode
 * @property string $u_name
 * @property string $u_entdt
 * @property string $u_ae
 * @method static \Illuminate\Database\Eloquent\Builder|HkChecklistMast newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|HkChecklistMast newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|HkChecklistMast query()
 * @method static \Illuminate\Database\Eloquent\Builder|HkChecklistMast whereCode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HkChecklistMast whereDcode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HkChecklistMast whereName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HkChecklistMast wherePropertyid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HkChecklistMast whereSn($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HkChecklistMast whereSno($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HkChecklistMast whereUAe($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HkChecklistMast whereUEntdt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HkChecklistMast whereUName($value)
 * @mixin \Eloquent
 */
class HkChecklistMast extends Model
{
    protected $table = 'hkchecklistmast';

    protected $primaryKey = 'sn';

    public $timestamps = false;

    protected $fillable = [
        'propertyid',
        'code',
        'sno',
        'name',
        'dcode',
        'u_name',
        'u_entdt',
        'u_ae',
    ];
}