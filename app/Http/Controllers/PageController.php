<?php

namespace App\Http\Controllers;

use App\Helpers\Response;
use App\Http\Services\PageService;
use Exception;
use Illuminate\Http\Request;

class PageController extends Controller
{
    protected $service;
    public function __construct(PageService $service){
        $this->service = $service;
    }

    public function getPage(int $book_id, int $page){
        try {
            $data = $this->service->getPage($book_id, $page);
            return Response::success($data, "success get page");
        } catch (Exception $e) {
            return Response::error($e, "fails get data page");
        }
    }

    public function addPage(Request $request){
        try {
            $this->service->addPage($request->only("text", "book_id"));
            return Response::success( "success add page");
        } catch (Exception $e) {
            return Response::error($e, "fails add data page");
        }
    }

    public function updatePage(Request $request){
        try {
            $this->service->updatePage($request->only("text", "book_id", "page"));
            return Response::success( "success update page");
        } catch (Exception $e) {
            return Response::error($e, "fails update data page");
        }
    }
}
