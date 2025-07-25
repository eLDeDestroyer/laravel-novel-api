<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class History extends Model
{
    protected $table = "histories";

    protected $fillable = [
        "user_id",
        "book_id"
    ];

    protected $casts = [
        "user_id" => "integer",
        "book_id" => "integer"
    ];
}
