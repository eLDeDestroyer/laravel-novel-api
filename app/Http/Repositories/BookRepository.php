<?php

namespace App\Http\Repositories;

use App\Models\Book;
use App\Models\BookCategory;
use App\Models\Category;
use App\Models\History;
use App\Models\Like;
use App\Models\Page;
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

    public function getBookDetail(int $book_id){
        $data =  DB::table("books")
            ->leftJoin("users", "users.id", "=", "books.user_id")
            ->leftJoin("pages", "pages.book_id", "=", "books.id")
            ->select("users.name", "books.title", "books.description", "books.image_path", "pages.id", "pages.page", "pages.text")
            ->where("books.id", $book_id)
            ->get();
        
        return $data;
    }

    public function getActionBookDetail(int $book_id){
        $seen = History::where("book_id", $book_id)->count();
        $like = Like::where("book_id", $book_id)->count();
        $page = Page::where("book_id", $book_id)->count();

        $data = [
            "seen" => $seen,
            "like" => $like,
            "page" => $page
        ];

        return $data;
    }

    public function addBook(array $book){
        $bookId = Book::query()->insertGetId([
            "title" => $book["title"],
            "description" => $book["description"],
            "image_path" => $book["image_path"],
            "user_id" => $book["user_id"]
        ]);

        return $bookId;
    }

    public function updateBook(array $book,int $book_id){
        $bookId = Book::query()->where("id", $book_id)->update([
            "title" => $book["title"],
            "description" => $book["description"],
            "image_path" => $book["image_path"],
            "user_id" => $book["user_id"]
        ]);
    }

    public function addBookCategory(int $book_id ,int $category_id){
        BookCategory::query()->insert([
            "book_id" => $book_id,
            "category_id" => $category_id 
        ]);
    }

    public function deleteBookCategory(int $book_id){
        BookCategory::query()->where("book_id", $book_id)->delete();
    }


    public function deleteBook(int $book_id){
        Book::query()->where("id", $book_id)->delete();
    }
}