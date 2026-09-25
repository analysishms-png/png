<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

/**
 * @property int $propertyid
 * @property string $ncur
 * @property string $cashpurcheffect
 * @property string|null $sundry_password
 * @property string|null $creditcard_info_mandatory
 * @property string|null $interest_amount
 * @property string|null $sms_featureYN
 * @property string|null $mobileno
 * @property string|null $sms_center_username
 * @property string|null $sms_center_password
 * @property string|null $sms_display_name
 * @property string|null $sms_url
 * @property string|null $tuser
 * @property string|null $tpassword
 * @property string|null $tfrom_send
 * @property string|null $tmessage
 * @property string|null $textra
 * @property string|null $tphno
 * @property string|null $sending_message_text
 * @property string $u_name
 * @property \Illuminate\Support\Carbon $u_entdt
 * @property \Illuminate\Support\Carbon|null $u_updatedt
 * @property string|null $u_ae
 * @property string $autonightaudit
 * @property string $time
 * @property string $expdate
 * @property string $amount
 * @property string|null $api_key
 * @property string|null $bearer_token
 * @property int $blockdays
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroGeneral newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroGeneral newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroGeneral query()
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroGeneral whereAmount($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroGeneral whereApiKey($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroGeneral whereAutonightaudit($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroGeneral whereBearerToken($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroGeneral whereBlockdays($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroGeneral whereCashpurcheffect($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroGeneral whereCreditcardInfoMandatory($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroGeneral whereExpdate($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroGeneral whereInterestAmount($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroGeneral whereMobileno($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroGeneral whereNcur($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroGeneral wherePropertyid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroGeneral whereSendingMessageText($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroGeneral whereSmsCenterPassword($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroGeneral whereSmsCenterUsername($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroGeneral whereSmsDisplayName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroGeneral whereSmsFeatureYN($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroGeneral whereSmsUrl($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroGeneral whereSundryPassword($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroGeneral whereTextra($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroGeneral whereTfromSend($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroGeneral whereTime($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroGeneral whereTmessage($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroGeneral whereTpassword($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroGeneral whereTphno($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroGeneral whereTuser($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroGeneral whereUAe($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroGeneral whereUEntdt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroGeneral whereUName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EnviroGeneral whereUUpdatedt($value)
 * @mixin \Eloquent
 */
class EnviroGeneral extends Model
{
    use HasFactory;
    protected $primaryKey = 'propertyid';
    public $incrementing = false;
    protected $keyType = 'string';  
    const CREATED_AT = 'u_entdt';
    const UPDATED_AT = 'u_updatedt';
    protected $table = 'enviro_general';

    protected $fillable = [
        'propertyid',
        'api_key',
        'bearer_token',
    ];
}
