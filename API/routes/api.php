<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

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

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});


// Requêtes users

Route::apiResource('user', 'App\Http\Controllers\UsersController');

// Requêtes posts

Route::apiResource('post', 'App\Http\Controllers\PostsController');

// Requêtes comments

Route::apiResource('comment', 'App\Http\Controllers\CommentsController');

// Route inscription

Route::post('inscription', [App\Http\Controllers\AuthController::class, 'signin']);

// Route connexion

Route::post('connexion', [App\Http\Controllers\AuthController::class, 'login']);



// Requêtes avec authentification

// Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
//     Route::apiResource('user', 'App\Http\Controllers\UsersController');
// });

// Route::middleware('auth:sanctum')->get('/post', function (Request $request) {
//     Route::apiResource('post', 'App\Http\Controllers\PostsController');
// });

// Route::middleware('auth:sanctum')->get('/comment', function (Request $request) {
//     Route::apiResource('comment', 'App\Http\Controllers\CommentsController');
// });

