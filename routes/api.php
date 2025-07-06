<?php

use App\Http\Controllers\AuthController;
use App\Http\Controllers\UserController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

Route::post("/signin", [AuthController::class, "signin"]);
Route::post("/signup", [AuthController::class, "signup"]);

Route::middleware(["auth"])->group(function(){
    Route::get("/auth/user", [UserController::class, "getUserDetail"]);
    Route::get("/auth/user/{username}", [UserController::class, "getUserDetailByUsername"]);

    Route::post("/auth/user/action/{action}/{book_id}", [UserController::class, "addActionBook"]);
    Route::get("/auth/user/action/{action}", [UserController::class, "getActionBook"]);
});