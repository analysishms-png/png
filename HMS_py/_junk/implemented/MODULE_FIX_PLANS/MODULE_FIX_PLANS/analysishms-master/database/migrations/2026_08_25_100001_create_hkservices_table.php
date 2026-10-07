<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        Schema::create('hkservices', function (Blueprint $table) {
            $table->integer('sn', true)->unique('sn');
            $table->string('propertyid', 15)->default('');
            $table->string('code', 9)->default('');
            $table->string('name', 25)->default('');
            $table->string('dcode', 10)->nullable();
            $table->string('u_name', 15)->nullable();
            $table->dateTime('u_entdt')->nullable();
            $table->string('u_ae', 1)->nullable();
        });
    }

    public function down(): void
    {
        Schema::dropIfExists('hkservices');
    }
};
