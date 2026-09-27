<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        Schema::table('itemmast', function (Blueprint $table) {
            $table->tinyInteger('expiry_applicable')->default(0)->after('iempic');
        });
    }

    public function down(): void
    {
        Schema::table('itemmast', function (Blueprint $table) {
            $table->dropColumn('expiry_applicable');
        });
    }
};
