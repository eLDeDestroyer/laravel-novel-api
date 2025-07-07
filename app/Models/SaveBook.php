<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class SaveBook extends Model
{
    protected $table = "save_book";

    protected $fillable = [
        "user_id",
        "book_id"
    ];

    protected $casts = [
        "user_id" => "integer",
        "book_id" => "integer"
    ];

    public $timestamps = false;

}
