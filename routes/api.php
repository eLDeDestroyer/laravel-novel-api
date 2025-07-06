<?php

use App\Http\Controllers\AuthController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

Route::post("/signin", [AuthController::class, "signin"]);
Route::post("/signup", [AuthController::class, "signup"]);
