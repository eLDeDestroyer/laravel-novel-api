<?php

namespace App\Http\Services;

use App\Http\Repositories\BookRepository;

class BookService
{
    protected $repo;
    public function __construct(BookRepository $repo){
        $this->repo = $repo;
    }

    public function getCategories(){
        $data = $this->repo->getCategories();
        return $data;
    }
}