<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('laundry_hdr', function (Blueprint $table) {
            $table->integer('sn');                      // autoincrement added below — NOT the PK
            $table->unique('sn');
            $table->integer('propertyid');
            $table->string('docid', 50);
            $table->string('vtype', 6);                 // always 'LAISS' (Laundry Issue)
            $table->integer('vno');
            $table->integer('vprefix');
            // ── SEND PHASE ─────────────────────────────────────────────
            $table->date('vdate');                      // send date
            $table->time('vtime');                      // send time
            $table->string('sent_by', 25);              // hotel staff who sent
            $table->string('challan_no', 20)->nullable();
            $table->string('contractor_recv_by', 25)->nullable();   // contractor who collected
            $table->date('expected_return_date')->nullable();
            $table->string('send_remarks', 200)->nullable();
            $table->string('send_status', 10)->default('Open');     // Open / Partial / Received
            // ── RECEIVE VOUCHER (LAREC) — NULL till receive ───────────
            $table->string('recv_docid', 50)->nullable();       // LAREC docid
            $table->string('recv_vtype', 6)->nullable();        // always 'LAREC'
            $table->integer('recv_vno')->nullable();            // LAREC serial number
            $table->integer('recv_vprefix')->nullable();        // year prefix (2026)
            // ── RECEIVE PHASE (NULL till receive) ─────────────────────
            $table->date('recv_date')->nullable();
            $table->time('recv_time')->nullable();
            $table->string('recv_by', 25)->nullable();  // hotel staff who received
            $table->string('delivered_by', 25)->nullable();
            $table->string('recv_challan_no', 20)->nullable();
            $table->string('recv_remarks', 200)->nullable();
            // ── AUDIT ──────────────────────────────────────────────────
            $table->string('u_name', 15);
            $table->dateTime('u_entdt');
            $table->dateTime('u_updatedt')->nullable();
            $table->char('u_ae', 1);                    // a = add, e = edit

            $table->primary(['propertyid', 'docid']);
        });

        // Laravel's MySQL grammar adds "auto_increment primary key" to any autoIncrement()
        // column, which would clash with the composite PK above. So make sn auto_increment
        // via ALTER instead — allowed because sn already has a UNIQUE index.
        DB::statement('ALTER TABLE laundry_hdr MODIFY sn INT NOT NULL AUTO_INCREMENT');
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('laundry_hdr');
    }
};
