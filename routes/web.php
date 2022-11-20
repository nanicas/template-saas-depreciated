<?php

use Illuminate\Support\Facades\Route;
use Zevitagem\LegoAuth\Helpers\Helper;

/*
  |--------------------------------------------------------------------------
  | Web Routes
  |--------------------------------------------------------------------------
  |
  | Here is where you can register web routes for your application. These
  | routes are loaded by the RouteServiceProvider within a group which
  | contains the "web" middleware group. Now create something great!
  |
 */

$middlewares = Helper::defineLaravelWebMiddlewares(['web'], $legoConfig);

Route::get('/', function () {
    return redirect('login');
});

Auth::routes();

Route::group(['middleware' => $middlewares],
        function () use ($legoConfig) {
        
            Route::middleware(['admin'])->group(function () {

                //modality
                Route::resource('modality', App\Http\Controllers\Pages\ModalityController::class);
            });

        }
);
