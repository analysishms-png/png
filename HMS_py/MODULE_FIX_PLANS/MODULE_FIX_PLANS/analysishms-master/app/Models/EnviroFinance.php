<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

/**
 * @property int $sn
 * @property int $propertyid
 * @property string $openingstock
 * @property string $closingstock
 * @property string $negtivecashbalance
 * @property string $u_name
 * @property string $u_ae
 * @property \Illuminate\Support\Carbon $u_entdt
 * @property \Illuminate\Support\Carbon|null $u_updatedt
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroFinance newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroFinance newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroFinance query()
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroFinance whereClosingstock($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroFinance whereNegtivecashbalance($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroFinance whereOpeningstock($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroFinance wherePropertyid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroFinance whereSn($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroFinance whereUAe($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroFinance whereUEntdt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroFinance whereUName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroFinance whereUUpdatedt($value)
 * @mixin \Eloquent
 */
class EnviroFinance extends Model
{
    use HasFactory;
    const CREATED_AT = 'u_entdt';
    const UPDATED_AT = 'u_updatedt';
    protected $table = 'enviro_finance';

    protected $primaryKey = 'propertyid';

    protected $fillable = [
        'propertyid',
        'openingstock',
        'closingstock',
        'negtivecashbalance',
        'u_name',
        'u_ae'
    ];
}
