<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\SpamController;
use App\Http\Controllers\CountryController;
use App\Http\Controllers\CityController;
use App\Http\Controllers\JobController;
use App\Http\Controllers\UserController;
use App\Http\Controllers\ReportController;
use App\Http\Controllers\HomeController;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

// Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
//     return $request->user();
// });

// Route::middleware('auth:api')->get('/user', function (Request $request) {
//     return $request->user();
// });

Route::group([
  'middleware' => 'auth:api'
], function() {

    Route::post('upload-avatar', [HomeController::class, 'uploadImageApi']);

    Route::group(['prefix' => 'countries'], function(){
        Route::get('/', [CountryController::class, 'index']);
        Route::get('/{country}', [CountryController::class, 'show']);
    });

    Route::group(['prefix' => 'cities'], function(){
        Route::get('/', [CityController::class, 'index']);
        Route::get('/{city}', [CityController::class, 'show']);
    });

    Route::group(['prefix' => 'jobs'], function(){
        Route::get('/', [JobController::class, 'index']);
        Route::get('/{job}', [JobController::class, 'show']);
    });

    Route::group(['prefix' => 'users'], function(){
        Route::get('/', [UserController::class, 'index']);
        Route::get('/get-user-profile', [UserController::class, 'getUserProfile']);
        Route::get('/{user}', [UserController::class, 'show']);
        Route::get('/{user}/update-profile', [UserController::class, 'updateProfile']);
    });
    
    Route::group(['prefix' => 'reports'], function(){
        Route::get('/', [ReportController::class, 'index']);
        Route::get('/{report}', [ReportController::class, 'show']);
        Route::post('/', [ReportController::class, 'store']);
        Route::post('/suggest-name', [ReportController::class, 'suggestName']);
        Route::post('/suggest-job', [ReportController::class, 'suggestJob']);
    });

    Route::group(['prefix' => 'spams'], function(){
        Route::get('/', [SpamController::class, 'index']);
        Route::get('/{spam}', [SpamController::class, 'show']);
    });
});