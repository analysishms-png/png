<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

/**
 * @property int $id
 * @property int $support_ticket_id
 * @property int|null $transferred_by_id
 * @property string|null $transferred_by_name
 * @property int|null $transferred_to_id
 * @property string|null $transferred_to_name
 * @property string $reason
 * @property \Illuminate\Support\Carbon|null $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @property-read \App\Models\SupportTicket|null $ticket
 * @method static \Illuminate\Database\Eloquent\Builder|SupportTicketTransfer newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|SupportTicketTransfer newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|SupportTicketTransfer query()
 * @method static \Illuminate\Database\Eloquent\Builder|SupportTicketTransfer whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SupportTicketTransfer whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SupportTicketTransfer whereReason($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SupportTicketTransfer whereSupportTicketId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SupportTicketTransfer whereTransferredById($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SupportTicketTransfer whereTransferredByName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SupportTicketTransfer whereTransferredToId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SupportTicketTransfer whereTransferredToName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SupportTicketTransfer whereUpdatedAt($value)
 * @mixin \Eloquent
 */
class SupportTicketTransfer extends Model
{
    use HasFactory;

    protected $table = 'support_ticket_transfers';

    protected $fillable = [
        'support_ticket_id',
        'transferred_by_id',
        'transferred_by_name',
        'transferred_to_id',
        'transferred_to_name',
        'reason',
    ];

    protected $casts = [
        'created_at' => 'datetime',
        'updated_at' => 'datetime',
    ];

    public function ticket()
    {
        return $this->belongsTo(SupportTicket::class, 'support_ticket_id');
    }
}
