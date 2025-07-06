<?php

namespace App\Http\Repositories;

use App\Models\History;
use App\Models\Like;
use App\Models\SaveBook;
use Illuminate\Support\Facades\DB;

class UserRepository
{
    public function getDataUserBook(int $userId){
        $data = DB::table("users")
            ->leftJoin("books","books.user_id", "=", "users.id")
            ->leftJoin("pages","pages.book_id", "=", "books.id")
            ->select("users.username", "users.name", "books.id", "books.title", "books.image_path", "books.description")
            ->where("users.id", $userId)
            ->get();
        
        return $data;
    }

    public function getDataUserBookByUsername(string $username){
        $data = DB::table("users")
            ->leftJoin("books","books.user_id", "=", "users.id")
            ->leftJoin("pages","pages.book_id", "=", "books.id")
            ->select("users.username", "users.name", "books.id", "books.title", "books.image_path", "books.description")
            ->where("users.username", $username)
            ->get();
        
        return $data;
    }

    public function addLikeBook(array $data):void{
        Like::query()->insert([
            "book_id" => $data["book_id"],
            "user_id" => $data["user_id"]
        ]);
    }

    public function addSaveBook(array $data):void{
        SaveBook::query()->insert([
            "book_id" => $data["book_id"],
            "user_id" => $data["user_id"]
        ]);
    }

    public function addHistoryBook(array $data):void{
        History::query()->insert([
            "book_id" => $data["book_id"],
            "user_id" => $data["user_id"]
        ]);
    }

    public function checkLikeBook(array $data):bool{
        $check = Like::query()->where("book_id",$data["book_id"])->where("user_id", $data["user_id"])->exists();
        return $check;
    }

    public function checkSaveBook(array $data):bool{
        $check = SaveBook::query()->where("book_id",$data["book_id"])->where("user_id", $data["user_id"])->exists();
        return $check;
    }

    public function deleteLikeBook(array $data){
        Like::query()->where("book_id",$data["book_id"])->where("user_id", $data["user_id"])->delete();
    }

    public function deleteSaveBook(array $data){
        SaveBook::query()->where("book_id",$data["book_id"])->where("user_id", $data["user_id"])->delete();
    }


    public function getBookByActionSave(int $user_id){
        $data = DB::table("books")
            ->leftJoin("pages","pages.book_id", "=", "books.id")
            ->leftJoin("save_book", "save_book.book_id", "=", "books.id")
            ->select("books.id", "books.title", "books.image_path", "books.description", "pages.id as pages_id")
            ->where("save_book.user_id", $user_id)
            ->get();
        
        return $data;
    }

    public function getBookByActionLike(int $user_id){
        $data = DB::table("books")
            ->leftJoin("pages","pages.book_id", "=", "books.id")
            ->leftJoin("likes", "likes.book_id", "=", "books.id")
            ->select("books.id", "books.title", "books.image_path", "books.description", "pages.id as pages_id")
            ->where("likes.user_id", $user_id)
            ->get();
        
        return $data;
    }

    public function getBookByActionHistory(int $user_id){
        $data = DB::table("books")
            ->leftJoin("pages","pages.book_id", "=", "books.id")
            ->leftJoin("histories", "histories.book_id", "=", "books.id")
            ->select("books.id", "books.title", "books.image_path", "books.description", "pages.id as pages_id")
            ->where("histories.user_id", $user_id)
            ->get();
        
        return $data;
    }
}