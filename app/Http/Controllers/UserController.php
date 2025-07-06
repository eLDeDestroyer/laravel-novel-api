<?php

namespace App\Http\Controllers;

use App\Helpers\Response;
use App\Http\Services\UserService;
use Exception;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class UserController extends Controller
{
    protected $service;
    public function __construct(UserService $service) {
        $this->service = $service;
    }

    public function getUserDetail(){
        $userId = Auth::user()->id;

        try{
            $data = $this->service->getUserDetail($userId);
            return Response::success($data, "success get detail user", 200);
        } catch(Exception $e){
            return Response::error($e, "fails get data", 400);
        }
    }

    public function getUserDetailByUsername($username){
        try{
            $data = $this->service->getUserDetailByUsername($username);
            return Response::success($data, "success get detail user", 200);
        } catch(Exception $e){
            return Response::error($e, "fails get data", 400);
        }
    }

    public function addActionBook(string $action,int $book_id){
        $user_id = Auth::user()->id;

        $data = [
            "book_id" => $book_id,
            "user_id" => $user_id,
            "action" => $action
        ];

        try{
            $this->service->addActionBook($data);
            return Response::success(null, "success add action to " . $action, 200);
        } catch(Exception $e){
            return Response::error($e, "fails get data", 400);
        }
    }

    public function getActionBook($action){
        $userId = Auth::user()->id;

        try{
            $data = $this->service->getActionBook($action, $userId);
            return Response::success($data, "success get data by " . $action);
        } catch(Exception $e){
            return Response::error($e, "fails get data", 400);
        }
    }

}
