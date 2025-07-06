<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Like extends Model
{
    protected $table = "likes";

    protected $fillable = [
        "user_id",
        "book_id"
    ];

    protected $casts = [
        "user_id" => "integer",
        "book_id" => "integer"
    ];
}
