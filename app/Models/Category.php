<?php
namespace App\Models;


use Encore\Admin\Traits\AdminBuilder;
use Encore\Admin\Traits\ModelTree;
use Illuminate\Database\Eloquent\Model;

class Category extends Model{
    use AdminBuilder, ModelTree {
        ModelTree::boot as treeBoot;
    }

    public function articles(){
        return $this->hasMany(Article::class);
    }

    protected static function boot()
    {
        static::treeBoot();

        static::deleting(function ($model) {
            $model->articles()->detach();
        });
    }

}