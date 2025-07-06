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

    public function getBookByTitle($title){
        $rawData = $this->repo->getBookByTitle($title);
        $group = $rawData->groupBy("id");

        $struct = $group->map(function($item){
            return [
                "id" => $item->first()->id,
                "title" => $item->first()->title,
                "description" => $item->first()->description,
                "page_count" => $item->count(),
            ];
        })->values();

        return $struct;
    }

    public function getRecentBook(){
        $rawData = $this->repo->getBookByDesc();
        $group = $rawData->groupBy("id");

        $struct = $group->map(function($item){
            return [
                "id" => $item->first()->id,
                "title" => $item->first()->title,
                "description" => $item->first()->description,
                "page_count" => $item->count(),
            ];
        })->values();

        return $struct;
    }

    public function getBookByMostLike(){
        $rawData = $this->repo->getBookByMostLike();
        $group = $rawData->groupBy("id");

        $struct = $group->map(function($item){
            return [
                "id" => $item->first()->id,
                "title" => $item->first()->title,
                "description" => $item->first()->description,
                "page_count" => $item->first()->page_count,
            ];
        })->values();

        return $struct;
    }

    public function getBookByCategory(int $category_id){
        $rawData = $this->repo->getBookBycategoryId($category_id);
        $group = $rawData->groupBy("id");

        $struct = $group->map(function($item){
            return [
                "id" => $item->first()->id,
                "title" => $item->first()->title,
                "description" => $item->first()->description,
                "page_count" => $item->count(),
            ];
        })->values();

        return $struct;
    }
}