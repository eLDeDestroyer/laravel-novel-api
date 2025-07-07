<?php

namespace App\Http\Controllers;

use App\Helpers\Response;
use App\Http\Services\BookService;
use Exception;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class BookController extends Controller
{
    protected $service;
    public function __construct(BookService $service){
        $this->service = $service;
    }

    public function getCategories(){
        try{
            $data = $this->service->getCategories();
            return Response::success($data);
        }catch(Exception $e){
            return Response::error($e, "fails get categories", 404);
        }
    }

    public function getBookByTitle(Request $requst){
        $title = $requst->query("title");

        try {
            $data = $this->service->getBookByTitle($title);
            return Response::success($data, "success get data by " . $title);
        } catch (Exception $e) {
            return Response::error($e, "fails get book by " . $title, 404);
        }
    }

    public function getRecentBook(){
        try {
            $data = $this->service->getRecentBook();
            return Response::success($data, "success get data");
        } catch (Exception $e) {
            return Response::error($e, "fails get book", 404);
        }
    }

    public function getBookMostLike(){
        try {
            $data = $this->service->getBookByMostLike();
            return Response::success($data, "success get data");
        } catch (Exception $e) {
            return Response::error($e, "fails get book", 404);
        }
    }

    public function getBookByCategory(int $category_id){
        try {
            $data = $this->service->getBookByCategory($category_id);
            return Response::success($data, "success get data");
        } catch (Exception $e) {
            return Response::error($e, "fails get book", 404);
        }
    }


    public function getBookDetail(int $book_id){
        try {
            $data = $this->service->getBookDetail($book_id);
            return Response::success($data, "success get data");
        } catch (Exception $e) {
            return Response::error($e, "fails get book detail", 404);
        }
    }

    public function addBook(Request $request){
        $userId = Auth::user()->id;
        try {
            $bookId = $this->service->addBook($request->only("title", "description"),$userId ,$request->file("image"));
            return Response::success($bookId, "success add book");
        } catch (Exception $e) {
            return Response::error($e, "fails add book", 404);
        }
    }

    public function updateBook(Request $request, int $book_id){
        $userId = Auth::user()->id;
        try {
            $this->service->updateBook($request->only("title", "description"),$userId , $book_id, $request->file("image"));
            return Response::success(null, "success update book");
        } catch (Exception $e) {
            return Response::error($e, "fails update book", 404);
        }
    }


    public function addBookCategory(Request $request){
        try {
            $this->service->addBookCategory($request->book_id, $request->category_id);
            return Response::success(null, "success add category");
        } catch (Exception $e) {
            return Response::error($e, "fails add book", 404);
        }
    }

    public function updateBookCategory(Request $request){
        try {
            $this->service->updateBookCategory($request->book_id, $request->category_id);
            return Response::success(null, "success update category");
        } catch (Exception $e) {
            return Response::error($e, "fails update category");
        }
    }

    public function deleteBook(int $book_id){
        try{
            $this->service->deletebook($book_id);
            return Response::success(null, "success delete book");
        }catch(Exception $e){
            return Response::error($e, "faisl delete book");
        }
    }
}
