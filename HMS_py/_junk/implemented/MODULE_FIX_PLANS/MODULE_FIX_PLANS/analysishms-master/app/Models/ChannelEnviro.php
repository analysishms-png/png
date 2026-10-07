<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

/**
 * @property int $sn
 * @property int $propertyid
 * @property int $eglobepropertyid
 * @property string $name
 * @property string $url
 * @property string $username
 * @property string $password
 * @property string $apikey
 * @property string $authorization
 * @property string $providercode
 * @property string $checkyn
 * @property string $u_name
 * @property \Illuminate\Support\Carbon $u_entdt
 * @property \Illuminate\Support\Carbon|null $u_updatedt
 * @property string|null $u_ae
 * @method static \Illuminate\Database\Eloquent\Builder|ChannelEnviro newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|ChannelEnviro newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|ChannelEnviro query()
 * @method static \Illuminate\Database\Eloquent\Builder|ChannelEnviro whereApikey($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ChannelEnviro whereAuthorization($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ChannelEnviro whereCheckyn($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ChannelEnviro whereEglobepropertyid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ChannelEnviro whereName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ChannelEnviro wherePassword($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ChannelEnviro wherePropertyid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ChannelEnviro whereProvidercode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ChannelEnviro whereSn($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ChannelEnviro whereUAe($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ChannelEnviro whereUEntdt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ChannelEnviro whereUName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ChannelEnviro whereUUpdatedt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ChannelEnviro whereUrl($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ChannelEnviro whereUsername($value)
 * @mixin \Eloquent
 */
class ChannelEnviro extends Model
{
    use HasFactory;
    const CREATED_AT = 'u_entdt';
    const UPDATED_AT = 'u_updatedt';
    protected $table = 'channelenviro';
}
