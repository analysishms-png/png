<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        Schema::table('mall_lease_hdr', function (Blueprint $table) {
            $table->string('billingcycle', 30)->nullable()->default('MONTHLY')->after('currentrent');
            $table->date('billingstartfrom')->nullable()->after('billingcycle');
            $table->tinyInteger('duedateofmonth')->nullable()->after('billingstartfrom');
        });
    }

    public function down(): void
    {
        Schema::table('mall_lease_hdr', function (Blueprint $table) {
            $table->dropColumn([
                'billingcycle',
                'billingstartfrom',
                'duedateofmonth',
            ]);
        });
    }
};