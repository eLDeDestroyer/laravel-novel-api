<?php 
namespace App\Http\Services;

use App\Http\Repositories\AuthRepository;
use Exception;
use Illuminate\Support\Facades\Auth;
use Validator;

class AuthService {
    protected $repo;
    public function __construct(AuthRepository $repo) {
        $this->repo = $repo;
    }

    public function signup(array $data){
        $validate = Validator::make($data, [
            "username" => "string|unique:users,username|min:0",
            "name" => "string|min:0",
            "password" => "string|min:0"
        ]);

        if($validate->fails()){
            throw new Exception($validate->errors()->first());
        }

        $this->repo->createUser($data);      
    }

    public function signin(array $data):array{
        $validate = Validator::make($data, [
            "username" => "string",
            "password" => "string|min:0"
        ]);

        if($validate->fails()) throw new Exception($validate->errors()->first());
        
        $userId = $this->repo->getUserId($data["username"]);
        
        if(!$token = Auth::guard('api')->claims(["id" => $userId])->attempt($data)){
            return throw new Exception("fails get data");
        }

        $data = [
            "username" => $data["username"],
            "token" => $token
        ];

        return $data;
    }
}