<?php

use App\Http\Controllers\AndroidSaleBill\BillingController;
use App\Http\Controllers\Android\FcmTokenController;
use App\Http\Controllers\Api\ChequeDesignController;
use App\Http\Controllers\Api\CompanyInfo;
use App\Http\Controllers\Api\InhouseRoomGet;
use App\Http\Controllers\Api\Reservation;
use App\Http\Controllers\Api\NotificationDeliveryController;
use App\Http\Controllers\Api\NotificationController;
use App\Http\Controllers\ApiInhouseRoomGet;
use App\Http\Controllers\Auth\LoginController;
use App\Http\Controllers\Essl\EsslWebhookController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;



/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "api" middleware group. Make something great!
|
*/

Route::post('/reservation/push/{api_key}', [Reservation::class, 'pushReservation']);
Route::post('/essl/webhook/attendance', [EsslWebhookController::class, 'attendance']);
Route::middleware(['api.auth'])->group(function () {
    // Get Company Info
    Route::get('companyinfo/{api_key}', [CompanyInfo::class, 'companyinfoget']);
    // Inhouse Booked Room Get
    Route::get('bookedrooms/{api_key}', [InhouseRoomGet::class, 'bookedrooms']);
    // Inhouse Reserved Room Get
    Route::get('reservedrooms/{api_key}', [InhouseRoomGet::class, 'reservedrooms']);
});

Route::post('/reactlogin', [LoginController::class, 'reactlogin']);
Route::post('/reactlogout', [LoginController::class, 'reactlogout']);
// FCM Token Push
Route::middleware('auth:sanctum')->post('/fcm-token', [FcmTokenController::class, 'store']);
Route::middleware('auth:sanctum')->group(function () {
    Route::get('/notifications/sync', [NotificationController::class, 'sync']);
    Route::post('/notifications/{notificationId}/{state}', [NotificationDeliveryController::class, 'acknowledge'])
        ->whereIn('state', ['delivered', 'seen', 'opened']);
    Route::get('/notifications/{notificationId}/statistics', [NotificationDeliveryController::class, 'statistics']);
});
// Load Cheque Designs
Route::get('/cheque-designs', [ChequeDesignController::class, 'index']);
// Get Single Cheque Design
Route::get('/cheque-designs/{id}', [ChequeDesignController::class, 'show']);
// Save Cheque Design
Route::post('/cheque-designs',[ChequeDesignController::class, 'store']);
// Update Cheque Design
Route::put('/cheque-designs/{id}', [ChequeDesignController::class, 'update']);
// Delete Cheque Design
Route::delete('/cheque-designs/{id}', [ChequeDesignController::class, 'destroy']);



//abhishek salebillmobile api
Route::post('/v1/login', [BillingController::class, 'login']);

Route::middleware('auth:sanctum')->group(function () {
    Route::get('/v1/outlets',                [BillingController::class, 'outlets']);
    Route::get('/v1/categories',             [BillingController::class, 'categories']);
    Route::get('/v1/products',               [BillingController::class, 'products']);
    Route::post('/v1/bills',                 [BillingController::class, 'createBill']);
    Route::get('/v1/bills/{billId}',         [BillingController::class, 'getBill']);
});