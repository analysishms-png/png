<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        Schema::table('catalogmast', function (Blueprint $table) {
            $table->integer('mlimit')->default(0)->after('itemgroupcode');
        });
    }

    public function down(): void
    {
        Schema::table('catalogmast', function (Blueprint $table) {
            $table->dropColumn('mlimit');
        });
    }
};
