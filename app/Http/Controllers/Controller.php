<?php

namespace App\Http\Controllers;

use Illuminate\Foundation\Bus\DispatchesJobs;
use Illuminate\Routing\Controller as BaseController;
use Illuminate\Foundation\Validation\ValidatesRequests;
use Illuminate\Foundation\Auth\Access\AuthorizesRequests;
use App\Models\Category;
class Controller extends BaseController
{
    use AuthorizesRequests, DispatchesJobs, ValidatesRequests;
    protected $menu;
    public function __construct(){
        $model = new Category();
        $cateTree = $model->toTree();
        $filterCateTree = [];
        foreach($cateTree as $cate){
            if($cate['is_menu']){
                if($cate['title']=='首页'){
                    $cate['url'] = url('/');
                }else{
                    $cate['url'] = '#';
                }
                $filterCateTree[] = $cate;
            }
        }

        $this->menu = $filterCateTree;
    }
}
