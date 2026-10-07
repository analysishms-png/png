<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        Schema::table('mall_chargemast', function (Blueprint $table) {
            $table->string('saccode', 8)->nullable()->after('shortcode');
        });
    }

    public function down(): void
    {
        Schema::table('mall_chargemast', function (Blueprint $table) {
            $table->dropColumn('saccode');
        });
    }
};