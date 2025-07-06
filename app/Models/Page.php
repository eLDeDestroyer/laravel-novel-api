<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Page extends Model
{
    protected $table = "pages";

    protected $fillable = [
        "page",
        "text", 
        "book_id"
    ];

    protected $casts = [
        "page" => "integer", 
        "text" => "string", 
        "book_id" => "integer"
    ];
}
