<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        Schema::table('mall_lease_hdr', function (Blueprint $table) {
            $table->string('renttype', 30)->nullable()->after('renewaldate');
            $table->string('rentbasis', 30)->nullable()->after('renttype');
            $table->decimal('rentrate', 18, 2)->nullable()->default(0.00)->after('rentbasis');
            $table->decimal('minimumrent', 18, 2)->nullable()->default(0.00)->after('rentrate');
            $table->decimal('currentrent', 18, 2)->nullable()->default(0.00)->after('minimumrent');
        });
    }

    public function down(): void
    {
        Schema::table('mall_lease_hdr', function (Blueprint $table) {
            $table->dropColumn([
                'renttype',
                'rentbasis',
                'rentrate',
                'minimumrent',
                'currentrent',
            ]);
        });
    }
};