<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class BookCategory extends Model
{
    protected $table = "book_category";
    
    protected $fillable = [
        "book_id",
        "category_id",
    ];

    protected $casts = [
        "category_id" => "integer",
        "book_id" => "integer"
    ];
}
