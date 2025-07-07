<?php

namespace App\Http\Repositories;

use App\Models\Page;

class PageRepository
{
    public function getPage(int $book_id, array $page){
        $data = Page::query()->where("book_id", $book_id)->whereIn("page", $page)->get();
        
        return $data;
    }

    public function pageCount(int $book_id){
        $data = Page::query()->where("book_id", $book_id)->count();
        return $data;
    }   

    public function addPage(array $data){
        Page::query()->insert([
            "text" => $data["text"],
            "page" => $data["page"],
            "book_id" => $data["book_id"]
        ]);
    }

    public function updatePage(array $data){
        Page::query()->where("book_id", $data["book_id"])->where("page", $data["page"])->update([
            "text" => $data["text"],
        ]);
    }
}