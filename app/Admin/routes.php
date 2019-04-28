<?php

use Illuminate\Routing\Router;

Admin::registerAuthRoutes();

Route::group([
    'prefix'        => config('admin.route.prefix'),
    'namespace'     => config('admin.route.namespace'),
    'middleware'    => config('admin.route.middleware'),
], function (Router $router) {

    $router->get('/', 'HomeController@index')->name('admin.home');
    $router->resource('website/articles', ArticleController::class);
    $router->resource('website/categories', CategoryController::class);
    $router->resource('website/slide_images', SlideImageController::class);
    $router->resource('website/setting', WebsiteSetController::class);
    $router->resource('demo', DemoController::class);

});

