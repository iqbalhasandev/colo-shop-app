<?php

use App\Http\Controllers\CartController;
use TCG\Voyager\Facades\Voyager;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ContactController;
use App\Http\Controllers\ProductController;

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

Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});


Route::prefix('/')->group(function () {
    Route::get('/', [ProductController::class, 'index'])->name('product.index');
    Route::get('/contact', [ContactController::class, 'index'])->name('contact.index');
    Route::post('/contact', [ContactController::class, 'store'])->name('contact.store');

    Route::prefix('cart')->group(function () {
        Route::get('/', [CartController::class, 'index'])->name('cart.index');
        Route::get('/store', [CartController::class, 'store'])->name('cart.store');
        Route::get('/delete', [CartController::class, 'destroy'])->name('cart.destroy');
        Route::get('/order', [CartController::class, 'order'])->name('cart.order');
    });

    Route::get('/{product}', [ProductController::class, 'show'])->name('product.show');
});
