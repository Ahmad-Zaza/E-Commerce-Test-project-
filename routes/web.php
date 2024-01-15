<?php

use App\Http\Livewire\Admin\AdminDashboardComponent;
use App\Http\Livewire\CartComponent;
use App\Http\Livewire\CategoryComponent;
use App\Http\Livewire\CheckoutComponent;
use App\Http\Livewire\DetailsComponent;
use App\Http\Livewire\HomeComponent;
use App\Http\Livewire\SearchComponent;
use App\Http\Livewire\ShopComponent;
use App\Http\Livewire\User\UserDashboardComponent;
use Illuminate\Support\Facades\Route;

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

Route::GET('/' , HomeComponent::class);
Route::GET('/shop', ShopComponent::class);
Route::GET('/checkout' , CheckoutComponent::class);
Route::GET('/cart', CartComponent::class)->name('product.cart');
Route::GET('/product/{slug}', DetailsComponent::class)->name('product.details');
Route::GET('product-category/{category_slug}', CategoryComponent::class)->name('product.category');
Route::GET('search', SearchComponent::class)->name('product.search');

// For User
Route::middleware(['auth:sanctum', 'verified'])->group(function () {
    Route::GET('/user/dashboard', UserDashboardComponent::class)->name('user.dashboard');
});

// For Admin
Route::middleware(['auth:sanctum', 'verified', 'authAdmin'])->group(function () {
    Route::GET('/admin/dashboard', AdminDashboardComponent::class)->name('admin.dashboard');
});
