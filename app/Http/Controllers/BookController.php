<?php

namespace App\Http\Controllers;

use App\Helpers\Response;
use App\Http\Services\BookService;
use Exception;
use Illuminate\Http\Request;

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
}
