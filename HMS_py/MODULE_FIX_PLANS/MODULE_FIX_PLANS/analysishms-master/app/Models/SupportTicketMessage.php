<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

/**
 * @property int $id
 * @property int $support_ticket_id
 * @property int|null $sender_id
 * @property string|null $sender_name
 * @property string $sender_role
 * @property string|null $message
 * @property string|null $image_path
 * @property \Illuminate\Support\Carbon|null $delivered_at
 * @property \Illuminate\Support\Carbon|null $read_at
 * @property \Illuminate\Support\Carbon|null $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @property-read \App\Models\SupportTicket|null $ticket
 * @method static \Illuminate\Database\Eloquent\Builder|SupportTicketMessage newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|SupportTicketMessage newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|SupportTicketMessage query()
 * @method static \Illuminate\Database\Eloquent\Builder|SupportTicketMessage whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SupportTicketMessage whereDeliveredAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SupportTicketMessage whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SupportTicketMessage whereImagePath($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SupportTicketMessage whereMessage($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SupportTicketMessage whereReadAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SupportTicketMessage whereSenderId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SupportTicketMessage whereSenderName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SupportTicketMessage whereSenderRole($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SupportTicketMessage whereSupportTicketId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SupportTicketMessage whereUpdatedAt($value)
 * @mixin \Eloquent
 */
class SupportTicketMessage extends Model
{
    use HasFactory;

    protected $table = 'support_ticket_messages';

    protected $fillable = [
        'support_ticket_id',
        'sender_id',
        'sender_name',
        'sender_role',
        'message',
        'image_path',
        'delivered_at',
        'read_at',
    ];

    protected $casts = [
        'created_at' => 'datetime',
        'updated_at' => 'datetime',
        'delivered_at' => 'datetime',
        'read_at' => 'datetime',
    ];

    public function ticket()
    {
        return $this->belongsTo(SupportTicket::class, 'support_ticket_id');
    }
}
