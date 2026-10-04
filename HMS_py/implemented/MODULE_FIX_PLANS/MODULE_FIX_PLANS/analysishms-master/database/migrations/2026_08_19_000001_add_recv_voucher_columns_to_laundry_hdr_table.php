<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     *
     * Adds the LAREC receive-voucher columns to laundry_hdr for databases
     * that already have the original table (created 2026-08-14 without them).
     * Guarded with hasColumn so it is a safe no-op on fresh installs where the
     * create migration already includes these columns.
     */
    public function up(): void
    {
        if (! Schema::hasTable('laundry_hdr')) {
            return;
        }

        Schema::table('laundry_hdr', function (Blueprint $table) {
            if (! Schema::hasColumn('laundry_hdr', 'recv_docid')) {
                $table->string('recv_docid', 50)->nullable()->after('send_status');
            }
            if (! Schema::hasColumn('laundry_hdr', 'recv_vtype')) {
                $table->string('recv_vtype', 6)->nullable()->after('recv_docid');
            }
            if (! Schema::hasColumn('laundry_hdr', 'recv_vno')) {
                $table->integer('recv_vno')->nullable()->after('recv_vtype');
            }
            if (! Schema::hasColumn('laundry_hdr', 'recv_vprefix')) {
                $table->integer('recv_vprefix')->nullable()->after('recv_vno');
            }
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        if (! Schema::hasTable('laundry_hdr')) {
            return;
        }

        Schema::table('laundry_hdr', function (Blueprint $table) {
            foreach (['recv_vprefix', 'recv_vno', 'recv_vtype', 'recv_docid'] as $column) {
                if (Schema::hasColumn('laundry_hdr', $column)) {
                    $table->dropColumn($column);
                }
            }
        });
    }
};