<?php

namespace App\Http\Services;

use App\Http\Repositories\UserRepository;

class UserService
{
    protected $repo;
    public function __construct(UserRepository $repo){
        $this->repo = $repo;
    }

    public function getUserDetail(int $userId){
        $rawData = $this->repo->getDataUserBook($userId);

        $group = $rawData->groupBy("id");

        $struct = $group->map(function($item){
            return[
                "id" => $item->first()->id,
                "title" => $item->first()->title,
                "description" => $item->first()->description,
                "page_count" => $item->count(),
            ];
        })->values();

        $data = [
            "username" => $rawData->first()->username,
            "name" => $rawData->first()->name,
            "books" => $struct
        ];

        return $data;
    }

    public function getUserDetailByUsername(string $username){
        $rawData = $this->repo->getDataUserBookByUsername($username);

        $group = $rawData->groupBy("id");

        $struct = $group->map(function($item){
            return[
                "id" => $item->first()->id,
                "title" => $item->first()->title,
                "description" => $item->first()->description,
                "page_count" => $item->count(),
            ];
        })->values();

        if($rawData->first()->id == null){
            $data = [
                "username" => $rawData->first()->username,
                "name" => $rawData->first()->name,
                "books" => null
            ];
        } else {            
            $data = [
                "username" => $rawData->first()->username,
                "name" => $rawData->first()->name,
                "books" => $struct
            ];
        }

        return $data;
    }


    public function addActionBook(array $data){
        if($data["action"] == "like"){
            $check = $this->repo->checkLikeBook($data);
            if(!$check){
                $this->repo->addLikeBook($data);
            } else {
                $this->repo->deleteLikeBook($data);
            }
        } else if($data["action"] == "save"){
            $check = $this->repo->checkSaveBook($data);
            if(!$check){
                $this->repo->addSaveBook($data);
            } else {
                $this->repo->deleteSaveBook($data);
            }
        } else {
            $this->repo->addHistoryBook($data);
        }
    }

    public function getActionBook(string $action, int $user_id){
        if($action == "like") {
            $rawData = $this->repo->getBookByActionLike($user_id);
        } else if($action == "save"){
            $rawData = $this->repo->getBookByActionSave($user_id);
        }else {
            $rawData = $this->repo->getBookByActionHistory($user_id);
        }

        $group = $rawData->groupBy("id");

        $struct = $group->map(function($item){
            return[
                "id" => $item->first()->id,
                "title" => $item->first()->title,
                "description" => $item->first()->description,
                "page_count" => $item->count() / $item->where("pages_id", $item->first()->pages_id)->count(),
            ];
        })->values();


        return $struct;
    }
}