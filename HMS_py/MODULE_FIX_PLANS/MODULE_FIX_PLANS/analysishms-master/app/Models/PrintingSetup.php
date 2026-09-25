<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

/**
 * @property int $sn
 * @property int $propertyid
 * @property string $module
 * @property string $restcode
 * @property string $description
 * @property string $printerpath
 * @property string $mark
 * @property string $kitchen
 * @property string $u_name
 * @property \Illuminate\Support\Carbon $u_entdt
 * @property \Illuminate\Support\Carbon|null $u_updatedt
 * @property string $u_ae
 * @method static \Illuminate\Database\Eloquent\Builder|PrintingSetup newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|PrintingSetup newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|PrintingSetup query()
 * @method static \Illuminate\Database\Eloquent\Builder|PrintingSetup whereDescription($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PrintingSetup whereKitchen($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PrintingSetup whereMark($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PrintingSetup whereModule($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PrintingSetup wherePrinterpath($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PrintingSetup wherePropertyid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PrintingSetup whereRestcode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PrintingSetup whereSn($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PrintingSetup whereUAe($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PrintingSetup whereUEntdt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PrintingSetup whereUName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PrintingSetup whereUUpdatedt($value)
 * @mixin \Eloquent
 */
class PrintingSetup extends Model
{
    use HasFactory;
    const CREATED_AT = 'u_entdt';
    const UPDATED_AT = 'u_updatedt';
    protected $table = 'printersetup'; 
}
