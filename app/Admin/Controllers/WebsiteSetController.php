<?php

namespace App\Admin\Controllers;

use App\Models\WebsiteSet;
use App\Http\Controllers\Controller;
use Encore\Admin\Controllers\HasResourceActions;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Layout\Content;
use Encore\Admin\Show;

class WebsiteSetController extends Controller
{
    use HasResourceActions;

    /**
     * Index interface.
     *
     * @param Content $content
     * @return Content
     */
    public function index(Content $content)
    {
        return $content
            ->header('Index')
            ->description('description')
            ->body($this->grid());
    }

    /**
     * Show interface.
     *
     * @param mixed $id
     * @param Content $content
     * @return Content
     */
    public function show($id, Content $content)
    {
        return $content
            ->header('Detail')
            ->description('description')
            ->body($this->detail($id));
    }

    /**
     * Edit interface.
     *
     * @param mixed $id
     * @param Content $content
     * @return Content
     */
    public function edit($id, Content $content)
    {
        return $content
            ->header('Edit')
            ->description('description')
            ->body($this->form()->edit($id));
    }

    /**
     * Create interface.
     *
     * @param Content $content
     * @return Content
     */
    public function create(Content $content)
    {
        return $content
            ->header('Create')
            ->description('description')
            ->body($this->form());
    }

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new WebsiteSet);

        $grid->id('Id');
        $grid->title('Title');
        $grid->value('Value')->display(function(){
            switch ($this->type){
                case 'text':
                    return $this->value;
                case 'select':
                    return '选择框暂不可用';
                case 'img':
                    return "<img width='600' src='/uploads/".$this->value ."' />";
            }
        });
        $grid->type_id('Type id');
        $grid->created_at('Created at');
        $grid->updated_at('Updated at');

        return $grid;
    }

    /**
     * Make a show builder.
     *
     * @param mixed $id
     * @return Show
     */
    protected function detail($id)
    {
        $show = new Show(WebsiteSet::findOrFail($id));

        $show->id('Id');
        $show->title('Title');
        $show->value('Value');
        $show->type_id('Type id');
        $show->created_at('Created at');
        $show->updated_at('Updated at');

        return $show;
    }

    /**
     * Make a form builder.
     *
     * @return Form
     */
    protected function form()
    {
        $form = new Form(new WebsiteSet);

        $form->text('title', 'Title');


        $form->text('value', 'Value|图片路径');

        $options = [
            'text'=>'字符串',
            'select'=>'单选框',
            'img'=>'图片'
        ];
        $form->select('type', '数据类型')->options($options);

        return $form;
    }
}
