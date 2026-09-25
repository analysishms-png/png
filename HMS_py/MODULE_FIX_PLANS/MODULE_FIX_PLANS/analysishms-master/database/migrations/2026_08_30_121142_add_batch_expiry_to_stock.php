<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        Schema::table('stock', function (Blueprint $table) {
            $table->string('batch_no', 30)->default('')->after('mergedwith');
            $table->date('mfg_date')->nullable()->after('batch_no');
            $table->date('expiry_date')->nullable()->after('mfg_date');
        });
    }

    public function down(): void
    {
        Schema::table('stock', function (Blueprint $table) {
            $table->dropColumn(['batch_no', 'mfg_date', 'expiry_date']);
        });
    }
};
