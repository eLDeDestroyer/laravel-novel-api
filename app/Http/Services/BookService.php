<?php

namespace App\Http\Services;

use App\Http\Repositories\BookRepository;
use Carbon\Carbon;
use Illuminate\Support\Str;

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
                "image_path" => $item->first()->image_path
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
                "image_path" => $item->first()->image_path
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
                "image_path" => $item->first()->image_path
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
                "image_path" => $item->first()->image_path
            ];
        })->values();

        return $struct;
    }


    public function getBookDetail(int $book_id){
        $rawData = $this->repo->getBookDetail($book_id);
        $action = $this->repo->getActionBookDetail($book_id);

        $group = $rawData->groupBy("id");
        $struct = $group->map(function($item){
            return[
                "id" => $item->first()->id,
                "page" => $item->first()->page,
                "text" => $item->first()->text
            ];
        })->values();

        $data = [
            "title" => $rawData->first()->title,
            "description" => $rawData->first()->description,
            "image_path" => $rawData->first()->image_path,
            "name" => $rawData->first()->name,
            "action" => [
                "seen" => $action["seen"],
                "like" => $action["like"],
                "page" => $action["page"]
            ],
            "pages" => $struct
        ];

        return $data;
    }

    public function addBook(array $data,int $user_id, $image = null){
        $filename = Str::random(10) . "." . $image->getClientOriginalExtension();
        $dbname = "uploads/" . $filename;

        $data["image_path"] = $dbname;
        $data["user_id"] = $user_id;
        
        $image->move(public_path("uploads"), $filename);
        
        $bookId = $this->repo->addBook($data);
        return $bookId;
    }

    public function updateBook(array $data,int $user_id, int $book_id, $image = null){
        if($image){
            $filename = Str::random(10) . "." . $image->getClientOriginalExtension();
            $dbname = "uploads/" . $filename;
            $data["image_path"] = $dbname;
            $image->move(public_path("uploads"), $filename);
        } else {
            $data["image_path"] = null;
        }
        
        $data["user_id"] = $user_id;
        $this->repo->updateBook($data,$book_id);
    }

    public function addBookCategory(int $book_id, array $category_id){
        foreach($category_id as $id){
            $this->repo->addBookCategory($book_id, $id);
        }
    }

    public function updateBookCategory(int $book_id, array $category_id){
        $this->repo->deleteBookCategory($book_id);

        foreach($category_id as $id){
            $this->repo->addBookCategory($book_id, $id);
        }
    }


    public function deletebook(int $book_id){
        return $this->repo->deleteBook($book_id);
    }
}