<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        Schema::table('mall_chargemast', function (Blueprint $table) {
            $table->string('shortcode', 5)->nullable()->after('chargename');
        });
    }

    public function down(): void
    {
        Schema::table('mall_chargemast', function (Blueprint $table) {
            $table->dropColumn('shortcode');
        });
    }
};
