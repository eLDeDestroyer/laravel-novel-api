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
}
