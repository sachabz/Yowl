<?php

use Illuminate\Foundation\Application;
use Illuminate\Support\Facades\Route;
use Inertia\Inertia;

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

Route::get('/', function () { 
    return view('home');
});

// Route::get('/signin', 'App\Http\Controllers\LoginController@formulaire');

// Route::post('/signin', 'App\Http\Controllers\LoginController@traitement');

// Route::get('/users', 'App\Http\Controllers\UsersController@liste');