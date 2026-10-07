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
        Schema::create('hklaundryservicemaster', function (Blueprint $table) {
            $table->id('sn');
            $table->string('propertyid', 20);
            $table->string('code', 30);
            $table->string('name', 100);
            $table->string('dcode', 20)->nullable();
            $table->string('u_name', 50)->nullable();
            $table->timestamp('u_entdt')->nullable();
            $table->char('u_ae', 1)->nullable();
            $table->timestamps();
            $table->index(['propertyid']);
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        // Schema::dropIfExists('hklaundryservicemaster');
        Schema::dropIfExists('hklaundryservicemaster');
    }
};
