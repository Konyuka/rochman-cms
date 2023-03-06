<?php
namespace App\Http\Controllers\modules;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\cms\blog\category;
use App\Models\cms\blog\blog_category;
use Session;
use Limitless;
use Input;
use File;
use Auth;
use Image;

class categoryController extends Controller
{
   public function index(){
      $category = category::join('status','status.id','=','category_blogs.status') 
                          ->OrderBy('category_blogs.id','DESC')
                          ->select('*','category_blogs.id as categoryID','status.name as status','category_blogs.name as category_name','category_blogs.created_at as date')
                          ->get();
      $count = 1;
      return view('modules.category.index', compact('category','count'));
   }

   public function create(){
      $parents =  category::OrderBy('id','DESC')->pluck('name','id')->prepend('Choose parent Category if any','0');
      return view('modules.category.create', compact('parents'));
   }

   public function store(Request $request){
      //validate data
      $this->validate($request, array(
         'name' => 'required',
         'parent' => 'required',
         'status' => 'required',
      ));

      $category = new category;

      if(!empty($request->image)){
         $file = Input::file('image');
         // SET UPLOAD PATH
         $destinationPath = base_path().'/storage/media/posts/';
         // GET THE FILE EXTENSION
         $extension = $file->getClientOriginalExtension();

         // RENAME THE UPLOAD WITH RANDOM NUMBER
         $fileName = Limitless::generateRandomString(). '.' . $extension;
         // MOVE THE UPLOADED FILES TO THE DESTINATION DIRECTORY
         $upload_success = $file->move($destinationPath, $fileName);

         $category->image = $fileName;
      }

      //check if unique
      $check = category::where('name','=',$request->name)->count();

      if ($check > 0 ) {
         $category->url = Limitless::seoUrl($request->name).'-'.Limitless::generateRandomString(4);
      }else{
         $category->url = Limitless::seoUrl($request->name);
      }

      $category->name = $request->name;
      $category->parentID = $request->parent;
      $category->status = $request->status;
      $category->keywords = $request->keywords;
      $category->meta_description = $request->meta_description;
      $category->featured = $request->featured;
      $category->description = $request->description;

      $category->save();

      Session::flash('success', 'Category Created!');
      return redirect()->route('post.category.edit', $category->id);
   }

   public function edit($id){
      $category = category::find($id);
      $parents =  category::all();
      $parentCategory = category::where('id',$category->parentID)->first();

      return view('modules.category.edit', compact('parents','category','parentCategory'));
   }

   public function update(Request $request,$id){
      //validate data
      $this->validate($request, array(
         'name' => 'required',
         'parent' => 'required',
         'status' => 'required',
      ));

      $category = category::find($id);

      if(!empty($request->image)){

         $check_old_image = category::where('id','=',$id)->where('image','!=',"")->count();

         if ($check_old_image > 0) {
               $oldimage = category::where('id','=',$id)->select('image')->first();

               $image_path = base_path().'/storage/media/posts/'.$oldimage->image;

               if (File::exists($image_path)) {
                  unlink($image_path);
               }
         }

         $file = Input::file('image');

         // SET UPLOAD PATH
         $destinationPath = base_path().'/storage/media/posts/';
         // GET THE FILE EXTENSION
         $extension = $file->getClientOriginalExtension();
         // RENAME THE UPLOAD WITH RANDOM NUMBER
         $fileName = Limitless::generateRandomString(). '.' . $extension;
         // MOVE THE UPLOADED FILES TO THE DESTINATION DIRECTORY
         $upload_success = $file->move($destinationPath, $fileName);

         $category->image = $fileName;
      }

      //check if name is the same
      if ($request->name == $category->name) {
         $category->url = Limitless::seoUrl($request->name);
      }elseif ($category->name != $request->name) {
         //check if unique
         $check = category::where('name','=',$request->name)->count();

         if ($check > 0 ) {
               $category->url = Limitless::seoUrl($request->name).'-'.Limitless::generateRandomString(4);
         }else{
               $category->url = Limitless::seoUrl($request->name);
         }
      }

      $category->name = $request->name;
      $category->parentID = $request->parent;
      $category->status = $request->status;
      $category->keywords = $request->keywords;
      $category->meta_description = $request->meta_description;
      $category->featured = $request->featured;
      $category->description = $request->description;

      $category->save();

      Session::flash('success', 'Category Updated!');
      return redirect()->back();

   }

   public function destroy($id)
   {
      //check if category has an Article
      $check = blog_category::where('category_id',$id)->count();

      if($check == 0){

         //delete image from folder/directory plus thumb image
         $check = category::where('id','=',$id)->where('image','!=',"")->count();

         if($check > 0){
            $oldimage = category::where('id','=',$id)->select('image')->first();

            $image_path = base_path().'/storage/media/posts/'.$oldimage->image;
            if (File::exists($image_path)) {
                  unlink($image_path);
            }
         }

         $category = category::find($id);

         $category->delete();

         Session::flash('success', 'Category Deleted !');

         return redirect()->back();
      }else{
         Session::flash('error','You have linked posts to this category. Hence, this category cannot be deleted.');

			return redirect()->back();
      }
   }
}
