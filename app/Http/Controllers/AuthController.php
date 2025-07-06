<?php

namespace App\Http\Controllers;

use App\Helpers\Response;
use App\Http\Services\AuthService;
use Illuminate\Http\Request;
use Exception;

class AuthController extends Controller
{   
    protected $service;
    public function __construct(AuthService $service){
        $this->service = $service;
    }

    public function signup(Request $request){
        try{
            $this->service->signup($request->only("username", "name", "password"));
            return Response::success(null);
        } catch(Exception $e){
            return Response::error($e, "error validate", 422);
        }
    }

    public function signin(Request $request) {
        try{
            $data = $this->service->signin($request->only("username", "password"));
            return Response::success($data, "success Login");
        } catch(Exception $e){
            return Response::error($e, "fails login", 400);
        }
    }
}
