<?php

namespace App\Http\Controllers;

use App\Models\Category;
use Illuminate\Http\Request;

class IndexController extends Controller
{
    public function index(){

        return view('website.index',['cates'=>$this->menu]);
    }
}
