<?php

use Illuminate\Support\Facades\Route;
use \App\Http\Controllers\MyController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/


Route::get('/', [MyController::class, 'index']);
Route::get('/about', [MyController::class, 'about']);

// Route::get('/', function () {
//     return view('welcome');
// });

// Route::get('/about', function () {
//     return view('about');
// });

// //Routes with parameters required
// Route::get('/products/{paramname}', function () {
//     return view('products');
// });

// // //Routes with parameters optional
// // Route::get('/services/{paramname?}', function () {
// //     return view('services');
// // });

// //another way to define routes
// Route::view('/services', 'services');


