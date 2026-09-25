<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('laundry_ftr', function (Blueprint $table) {
            $table->increments('sn');                   // INT AUTO_INCREMENT PK
            $table->integer('propertyid');
            $table->integer('hdr_sn');                  // FK → laundry_hdr.sn
            $table->string('item_code', 10);            // from hkamentiesmaster.item (varchar 10)
            $table->string('item_name', 40);            // from itemmast.name (varchar 40)
            $table->string('uom', 8)->default('Nos');   // always 'Nos'
            // ── SEND PHASE ─────────────────────────────────────────────
            $table->integer('send_qty')->default(0);
            $table->string('send_remarks', 200)->nullable();
            // ── RECEIVE PHASE (NULL till receive) ──────────────────────
            $table->integer('received_qty')->nullable();
            $table->integer('good_qty')->nullable();
            $table->integer('missing_qty')->nullable();
            $table->integer('damage_qty')->nullable();
            $table->string('recv_remarks', 200)->nullable();
            // ── AUDIT ──────────────────────────────────────────────────
            $table->string('u_name', 15);
            $table->dateTime('u_entdt');
            $table->char('u_ae', 1);                    // a = add, e = edit

            $table->index(['propertyid', 'hdr_sn'], 'idx_laundry_ftr_hdr');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('laundry_ftr');
    }
};

