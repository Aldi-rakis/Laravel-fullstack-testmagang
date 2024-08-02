<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

Route::get('/user', function (Request $request) {
    return $request->user();
})->middleware('auth:sanctum');

//Route CRUD posts
Route::apiResource('/posts', App\Http\Controllers\Api\PostController::class);



// Route untuk register
Route::post('/register', [App\Http\Controllers\Api\RegisterController::class, 'register']);