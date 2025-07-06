<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Book extends Model
{
    protected $table  = "books";
    protected $fillable = [
        "title",
        "description",
        "image_path",
        "user_id"
    ];

    protected $casts = [
        "title" => "string",
        "description" => "string",
        "image_path" => "string",
        "user_id" => "integer"
    ];
}
