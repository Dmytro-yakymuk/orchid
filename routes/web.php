<?php

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

Route::get('/', 'IndexController@index')->name('home');

Route::get('shop', 'ShopController@index')->name('shop');
Route::get('shop/{product}', 'ShopController@show')->name('shop.show');
Route::get('pagination', 'ShopController@filter')->name('filter');

Route::get('cart', 'CartController@index')->name('cart.index');
Route::get('destroyCart', 'CartController@destroy')->name('cart.destroy');
Route::get('updateCart', 'CartController@count')->name('count');
Route::get('like', 'CartController@like')->name('cart.like');

Route::get('empty', function() {
	Cart::destroy();
});

Route::get('wishlist', 'WishlistController@index')->name('wishlist.index');
Route::get('storeWish', 'WishlistController@store')->name('wishlist.store');
Route::get('destroyWish', 'WishlistController@destroy')->name('wishlist.destroy');
Route::post('wishlist/{id}', 'WishlistController@cart')->name('wishlist.cart');
Route::get('empty_wishlist', function() {
	Cart::instance('wishlist')::destroy();
});

Route::get('checkout', 'CheckoutController@index')->name('checkout.index')->middleware('auth');
Route::post('checkout', 'CheckoutController@store')->name('checkout.store');
Route::get('guestCheckout', 'CheckoutController@index')->name('guestCheckout.index');

Route::get('thankyou', 'ThankyouController@index')->name('thankyou.index');

Route::get('couponAdd', 'CouponsController@store')->name('coupon.store');
Route::get('couponDelete', 'CouponsController@destroy')->name('coupon.destroy');

Route::view('about', 'about');
Route::view('blog', 'blog');
Route::view('contact', 'contact');


Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});

Route::post('login', 'Auth\LoginController@login');
Route::get('login', ['uses' => 'Auth\LoginController@showLoginForm', 'as' => 'login']);
Route::post('logout', ['uses' => 'Auth\LoginController@logout', 'as' => 'logout']);

Route::post('register', 'Auth\RegisterController@register');
Route::get('register', ['uses' => 'Auth\RegisterController@showRegistrationForm', 'as' => 'register']);

Route::post('logout', ['uses' => 'Auth\LoginController@logout', 'as' => 'logout']);
Route::post('password/email', ['uses' => 'Auth\ForgotPasswordController@sendResetLinkEmail', 'as' => 'password.email']);
Route::get('password/reset', ['uses' => 'Auth\ForgotPasswordController@showLinkRequestForm', 'as' => 'password.request']);
Route::post('password/reset', 'Auth\ResetPasswordController@reset');
Route::get('password/reset/{token}', ['uses' => 'Auth\ResetPasswordController@showResetForm', 'as' => 'password.reset']);


Route::get('search', 'ShopController@search')->name('search');
Route::get('search-algolia', 'ShopController@searchAlgolia')->name('search-algolia');
