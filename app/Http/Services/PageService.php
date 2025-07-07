<?php

namespace App\Http\Services;

use App\Http\Repositories\PageRepository;

class PageService
{
    protected $repo;
    public function __construct(PageRepository $repo){
        $this->repo = $repo;
    }


    public function getPage(int $book_id, int $page){
        $allPage = [$page - 1, $page, $page + 1];
        $rawData = $this->repo->getPage($book_id, $allPage);
        
        $data = [
            "text" => null,
            "page" => $page,
            "prev_page" => null,
            "next_page" => null
        ];
        
        if(count($rawData) == 2){
            if($allPage[1] == $rawData[0]["page"]){
                $data["text"] = $rawData[0]["text"];
                $data["next_page"] = $rawData[1]["page"];
                $data["prev_page"] = null;
            }
            if($allPage[1] == $rawData[1]["page"]){
                $data["text"] = $rawData[1]["text"];
                $data["next_page"] = null;
                $data["prev_page"] = $rawData[0]["page"];
            }
        } else {
            $data["text"] = $rawData[1]["text"];
            $data["next_page"] = $rawData[2]["page"];
            $data["prev_page"] = $rawData[0]["page"];
        }

        return $data;
    }

    public function addPage(array $data){
        $countPage = $this->repo->pageCount($data["book_id"]);
        $data["page"] = $countPage + 1;
        
        $this->repo->addPage($data);
    }

    public function updatePage(array $data){
        return $this->repo->updatePage($data);
    }
}