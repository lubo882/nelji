<?php

namespace App\Admin\Controllers;

use App\Admin\Extensions\Tools\UserGender;
use App\Models\Demo;
use App\Http\Controllers\Controller;
use Encore\Admin\Controllers\HasResourceActions;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Layout\Content;
use Encore\Admin\Show;
use Illuminate\Support\Facades\Request;

class DemoController extends Controller
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
        $grid = new Grid(new Demo);
        if (in_array(Request::get('gender'), ['m', 'f'])) {
            $grid->model()->where('gender', Request::get('gender'));
        }
        $grid->id('Id');
        $grid->name('Name');
        $grid->gender('Gender');
        $grid->created_at('Created at');
        $grid->updated_at('Updated at');
        $grid->tools(function ($tools) {
            $tools->append(new UserGender());
        });
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
        $show = new Show(Demo::findOrFail($id));

        $show->id('Id');
        $show->name('Name');
        $show->gender('Gender');
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
        $form = new Form(new Demo);

        $form->text('name', 'Name');

        $states = [
            'on'  => ['value' => 'm', 'text' => '男', 'color' => 'success'],
            'off' => ['value' => 'f', 'text' => '女', 'color' => 'danger'],
        ];
        $form->switch('gender', 'Gender')->states($states);

        return $form;
    }
}
