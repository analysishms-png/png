<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     * Adds dcode column (dcode from depart table) to hkchecklistmast.
     */
    public function up(): void
    {
        Schema::table('hkchecklistmast', function (Blueprint $table) {
            $table->string('dcode', 10)->nullable()->after('name');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('hkchecklistmast', function (Blueprint $table) {
            $table->dropColumn('dcode');
        });
    }
};
