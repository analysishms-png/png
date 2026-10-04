<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        Schema::table('mall_lease_commercial', function (Blueprint $table) {
            // Rent structure
            $table->string('rent_basis', 30)->nullable()->after('commercialmodel');
            $table->date('rentfree_to')->nullable()->after('turnoverbasis');
            $table->date('fitout_period_to')->nullable()->after('rentfree_to');
            $table->integer('due_day')->nullable()->default(10)->after('fitout_period_to');
            $table->string('review_basis', 30)->nullable()->after('due_day');

            // Billing & payment terms
            $table->integer('grace_period_days')->nullable()->default(5)->after('review_basis');
            $table->string('payment_mode', 30)->nullable()->after('grace_period_days');
            $table->string('late_interest_type', 30)->nullable()->after('payment_mode');
            $table->decimal('late_interest_pct', 18, 2)->nullable()->default(0.00)->after('late_interest_type');
            $table->string('interest_calculation', 30)->nullable()->after('late_interest_pct');
            $table->string('interest_start_from', 30)->nullable()->after('interest_calculation');
            $table->string('security_deposit_adj', 30)->nullable()->after('interest_start_from');
        });
    }

    public function down(): void
    {
        Schema::table('mall_lease_commercial', function (Blueprint $table) {
            $table->dropColumn([
                'rent_basis',
                'rentfree_to',
                'fitout_period_to',
                'due_day',
                'review_basis',
                'grace_period_days',
                'payment_mode',
                'late_interest_type',
                'late_interest_pct',
                'interest_calculation',
                'interest_start_from',
                'security_deposit_adj',
            ]);
        });
    }
};
