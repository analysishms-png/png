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
        Schema::create('mall_meter_reading', function (Blueprint $table) {
            $table->bigInteger('sn', true)->unique('sn');            // AUTO_INCREMENT PK
            $table->unsignedBigInteger('propertyid');
            $table->string('shopid', 50);                            // mall_shopmast.sn
            $table->date('reading_date');
            $table->decimal('previous_reading', 18, 4)->default(0);
            $table->decimal('current_reading', 18, 4)->default(0);
            $table->decimal('multiplication_factor', 18, 4)->default(1);
            $table->decimal('consumption', 18, 4)->default(0);
            $table->string('reading_status', 30)->default('Normal');
            $table->string('remarks', 50)->nullable();
            $table->string('meter_photo', 255)->nullable();
            $table->string('entry_source', 20)->default('MOBILE');
            $table->string('u_name', 50)->nullable();
            $table->dateTime('u_entdt')->nullable();
            $table->string('u_ae', 1)->default('A');
            $table->string('u_updatedby', 50)->nullable();
            $table->dateTime('u_updatedt')->nullable();

            $table->index(['propertyid', 'reading_date'], 'idx_mallmeterreading_prop_date');
            $table->index(['shopid', 'reading_date'], 'idx_mallmeterreading_shop_date');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('mall_meter_reading');
    }
};