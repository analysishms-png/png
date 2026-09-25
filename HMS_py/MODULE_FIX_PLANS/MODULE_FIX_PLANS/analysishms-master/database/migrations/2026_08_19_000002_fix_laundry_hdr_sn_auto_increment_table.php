<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     *
     * Ensures laundry_hdr.sn is AUTO_INCREMENT. On databases where the table
     * was created/imported without the migration's ALTER statement the sn
     * column stays a plain INT, so every new insert gets sn=0 and the UNIQUE
     * index rejects the second voucher ("Duplicate entry '0'"). Re-running
     * this ALTER is harmless.
     */
    public function up(): void
    {
        if (! Schema::hasTable('laundry_hdr')) {
            return;
        }

        DB::statement('ALTER TABLE laundry_hdr MODIFY sn INT NOT NULL AUTO_INCREMENT');
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        // Intentionally left blank — removing AUTO_INCREMENT would break inserts.
    }
};