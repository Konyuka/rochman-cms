<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Auth::routes();
Auth::routes(['verify' => true]);
Route::get('logout', 'Auth\LoginController@logout');
Route::get('/', 'Auth\LoginController@showLoginForm');
Route::post('signup', 'Auth\RegisterController@signup')->name('signup');

Route::middleware('auth','verified')->group(function(){
   //Route::get('dashboard','modules\dashboardController@dashboard')->name('cms.dashboard');
   Route::get('dashboard','modules\pagesController@index')->name('cms.dashboard');

   /* === pages === */
   Route::get('pages','modules\pagesController@index')->name('pages.index');
   Route::get('pages/create','modules\pagesController@create')->name('pages.create');
   Route::get('pages/{id}/edit','modules\pagesController@edit')->name('pages.edit');
   Route::post('pages/{id}/update','modules\pagesController@update')->name('pages.update');
   Route::get('pages/{id}/delete','modules\pagesController@delete')->name('pages.delete');

   //custom field
   Route::post('page/custom/field', 'modules\pagesController@custom_field')->name('custom.page.field');
   Route::get('custome/field/delete/{id}','modules\pagesController@custom_field_delete')->name('custom.field.delete');

   //pages templates
   Route::post('/page/template/post', 'modules\templateController@store')->name('post.page.template');

   /* === slider === */
   Route::get('sliders','modules\sliderController@index')->name('slider.index');
   Route::get('slider/create','modules\sliderController@create')->name('slider.create');
   Route::post('slider/store','modules\sliderController@store')->name('slider.store');
   Route::get('slider/{id}/edit','modules\sliderController@edit')->name('slider.edit');
   Route::post('slider/{id}/update','modules\sliderController@update')->name('slider.update');
   Route::get('slider/{id}/delete','modules\sliderController@delete')->name('slider.delete');

   /* === menu === */
   Route::get('menu','modules\menuController@index')->name('menu.index');
   Route::post('menu/store','modules\menuController@store')->name('menu.store');
   Route::post('menu/{id}/update','modules\menuController@update')->name('menu.update');
   Route::get('menu/{id}/show','modules\menuController@show')->name('menu.show');
   Route::get('menu/{menuID}/add/{pageID}/page','modules\menuController@addToMenu')->name('menu.add.page');
   Route::get('menu/pages/position','modules\menuController@menu_page_position')->name('menu_page_position');
   Route::get('menu/{menuID}/page/{id}/delete','modules\menuController@menu_page_delete')->name('menu.page.delete');
   Route::get('menu/{id}/delete','modules\menuController@delete')->name('menu.delete');

   /* === gallery === */
   Route::get('gallery','modules\galleryController@index')->name('gallery.index');
   Route::get('gallery/create','modules\galleryController@create')->name('gallery.create');
   Route::post('gallery/store','modules\galleryController@store')->name('gallery.store');
   Route::get('gallery/{id}/edit','modules\galleryController@edit')->name('gallery.edit');
   Route::post('gallery/{id}/update','modules\galleryController@update')->name('gallery.update');
   Route::get('gallery/{id}/show','modules\galleryController@show')->name('gallery.show');
   Route::post('gallery/images/upload','modules\galleryController@upload_image')->name('gallery.images.upload');
   Route::get('gallery/{galleryID}/images/{id}/delete','modules\galleryController@delete_image')->name('gallery.image.delete');
   Route::get('gallery/{id}/delete','modules\galleryController@delete_gallery')->name('gallery.delete');

   /* === posts === */
   Route::get('posts', 'modules\postsController@index')->name('posts.index');
   Route::get('posts/create', 'modules\postsController@create')->name('posts.create');
   Route::post('/posts/store', 'modules\postsController@store')->name('posts.store');
   Route::get('/posts/{id}/edit', 'modules\postsController@edit')->name('posts.edit');
   Route::post('/posts/{id}/update', 'modules\postsController@update')->name('posts.update');
   Route::get('posts/{id}/delete', 'modules\postsController@destroy')->name('posts.delete');

   /* === post category === */
   Route::get('posts/category', 'modules\categoryController@index')->name('post.category.index');
   Route::get('posts/category/create', 'modules\categoryController@create')->name('post.category.create');
   Route::post('posts/category/store', 'modules\categoryController@store')->name('post.category.store');
   Route::get('posts/category/{id}/edit', 'modules\categoryController@edit')->name('post.category.edit');
   Route::post('posts/category/{id}/update', 'modules\categoryController@update')->name('post.category.update');
   Route::get('posts/category/{id}/destroy', 'modules\categoryController@destroy')->name('post.category.destroy');

   /* === post tags === */
   Route::get('posts/tags',['uses' => 'modules\tagsController@index','as' => 'post.tags.index']);
   Route::get('posts/tags/{id}/edit',['uses' => 'modules\tagsController@edit','as' => 'post.tags.edit']);
   Route::post('posts/tags/store',['uses' => 'modules\tagsController@store','as' => 'post.tags.store']);
   Route::post('posts/tags/{id}/update',['uses' => 'modules\tagsController@update','as' => 'post.tags.update']);
   Route::get('posts/tags/{id}/destroy',['uses' => 'modules\tagsController@destroy','as' => 'post.tags.destroy']);

   /* === Media === */
   Route::get('file-manager',['uses' => 'modules\filemanagerController@index','as' => 'file.manager']);

   //product
   Route::get('products',['uses' => 'modules\duka\productController@index','as' => 'duka.product.index']);
   Route::get('products/create',['uses' => 'modules\duka\productController@create','as' => 'duka.products.create']);
   Route::post('products/store',['uses' => 'modules\duka\productController@store','as' => 'duka.products.store']);
   Route::get('products/{id}/edit',['uses' => 'modules\duka\productController@edit','as' => 'duka.products.edit']);
   Route::post('products/{id}/update',['uses' => 'modules\duka\productController@update','as' => 'duka.products.update']);
   Route::get('products/{id}/destroy',['uses' => 'modules\duka\productController@destroy','as' => 'duka.products.destroy']);

   /* === product description === */
   Route::get('products/{id}/description',['uses' => 'modules\duka\productController@description','as' => 'duka.description']);
   Route::post('products/{id}/description/update',['uses' => 'modules\duka\productController@description_update','as' => 'duka.description.update']);

   /* === product price === */
   Route::get('products/price/{id}/edit',['uses' => 'modules\duka\productController@price','as' => 'duka.price']);
   Route::post('price/{id}/update',['uses' => 'modules\duka\productController@price_update','as' => 'duka.price.update']);

   /* === product quantities === */
   Route::get('products/inventory/{id}/edit',['uses' => 'modules\duka\inventoryController@inventory','as' => 'duka.inventory']);
   Route::post('products/inventory/{id}/update',['uses' => 'modules\duka\inventoryController@inventroy_update','as' => 'duka.inventory.update']);

   /* === product images === */
   Route::get('images/{id}/edit',['uses' => 'modules\duka\imagesController@edit','as' => 'duka.product.images']);
   Route::post('images/{id}/update',['uses' => 'modules\duka\imagesController@update','as' => 'duka.product.images.update']);
   Route::post('images/store',['uses' => 'modules\duka\imagesController@store','as' => 'duka.product.images.store']);
   Route::post('images/{id}/destroy',['uses' => 'modules\duka\imagesController@destroy','as' => 'duka.product.images.destroy']);

   /* === product category === */
   Route::get('products/category',['uses' => 'modules\duka\categoryController@index','as' => 'duka.product.category']);
   Route::post('products/category/store',['uses' => 'modules\duka\categoryController@store','as' => 'duka.product.category.store']);
   Route::get('products/category/{id}/edit',['uses' => 'modules\duka\categoryController@edit','as' => 'duka.product.category.edit']);
   Route::post('product.category/{id}/update',['uses' => 'modules\duka\categoryController@update','as' => 'duka.product.category.update']);
   Route::get('products/category/{id}/destroy',['uses' => 'modules\duka\categoryController@destroy','as' => 'duka.product.category.destroy']);

   /* === product tags === */
   Route::get('products/tags',['uses' => 'modules\duka\tagsController@index','as' => 'duka.product.tags']);
   Route::post('products/tags/store',['uses' => 'modules\duka\tagsController@store','as' => 'duka.product.tags.store']);
   Route::get('products/tags/{id}/edit',['uses' => 'modules\duka\tagsController@edit','as' => 'duka.product.tags.edit']);
   Route::post('product.tags/{id}/update',['uses' => 'modules\duka\tagsController@update','as' => 'duka.product.tags.update']);
   Route::get('products/tags/{id}/destroy',['uses' => 'modules\duka\tagsController@destroy','as' => 'duka.product.tags.destroy']);

   /* === inquiry === */
   Route::get('property/view-inquiry',['uses' => 'modules\duka\productController@inquiry','as' => 'duka.product.inquiry']);

});
