<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('catalogmast', function (Blueprint $table) {
            $table->integer('sn', true)->unique('sn');   // AUTO_INCREMENT PK
            $table->integer('propertyid');
            $table->string('code', 6);
            $table->string('itemcode', 9);
            $table->string('restcode', 9);
            $table->string('name', 25);
            $table->string('itemcatcode', 9);
            $table->string('u_name', 15);
            $table->dateTime('u_entdt');
            $table->string('u_ae', 1)->default('a');

            $table->index(['propertyid', 'code', 'restcode'], 'idx_catalogmast_prop_code');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('catalogmast');
    }
};
