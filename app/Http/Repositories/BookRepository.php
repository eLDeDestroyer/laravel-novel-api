<?php

namespace App\Http\Repositories;

use App\Models\Category;

class BookRepository
{
    public function getCategories(){
        $data = Category::query()->get();
        return $data;
    }
}