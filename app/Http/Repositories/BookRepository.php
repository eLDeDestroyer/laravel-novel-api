<?php

namespace App\Http\Repositories;

use App\Models\Category;
use Illuminate\Support\Facades\DB;

class BookRepository
{
    public function getCategories(){
        $data = Category::query()->get();
        return $data;
    }

    public function getBookByTitle($title){
        $data = DB::table("books")
            ->leftJoin("pages","pages.book_id", "=", "books.id")
            ->select("books.id", "books.title", "books.image_path", "books.description")
            ->where("books.title", "like", "%" . $title . "%")
            ->get();

        return $data;
    }


    public function getBookByDesc(){
        $data = DB::table("books")
            ->leftJoin("pages","pages.book_id", "=", "books.id")
            ->select("books.id", "books.title", "books.image_path", "books.description")
            ->orderBy("books.id", "desc")
            ->get();

        return $data;
    }

    public function getBookByMostLike(){
        $data = DB::table('books')
            ->leftJoin('pages', 'pages.book_id', '=', 'books.id')
            ->leftJoin('likes', 'likes.book_id', '=', 'books.id')
            ->select(
                'books.id',
                'books.title',
                'books.image_path',
                'books.description',
                DB::raw('COUNT(DISTINCT likes.id) as like_count'),
                DB::raw('COUNT(DISTINCT pages.id) as page_count')
            )
            ->groupBy(
                'books.id',
                'books.title',
                'books.image_path',
                'books.description'
            )
            ->orderByDesc('like_count')
            ->get();


        return $data;
    }


    public function getBookBycategoryId(int $category_id){
        $data = DB::table("books")
            ->leftJoin("pages","pages.book_id", "=", "books.id")
            ->leftJoin("book_category","book_category.book_id", "=", "books.id")
            ->select("books.id", "books.title", "books.image_path", "books.description")
            ->where("book_category.category_id", $category_id)
            ->get();

        return $data;
    }
}