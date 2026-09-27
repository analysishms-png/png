<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        if (!Schema::hasColumn('hkcleaningtype', 'd_code')) {
            Schema::table('hkcleaningtype', function (Blueprint $table) {
                $table->string('dcode', 10)->nullable()->after('esttime');
            });
        }
    }

    public function down(): void
    {
        if (Schema::hasColumn('hkcleaningtype', 'd_code')) {
            Schema::table('hkcleaningtype', function (Blueprint $table) {
                $table->dropColumn('dcode');
            });
        }
    }
};
