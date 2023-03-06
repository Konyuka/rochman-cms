<?php

namespace App\Http\Controllers\modules;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\cms\blog\blog;
use App\Models\cms\blog\blog_types;
use App\Models\cms\blog\category;
use App\Models\cms\blog\tag;
use App\Models\cms\blog\attachment;
use App\Models\cms\blog\blog_category;
use App\Models\cms\blog\blog_tag;
use App\Models\cms\blog\blog_tags;
use Session;
use Limitless;
use File;
use App\Models\cms\pages\comment;
use Illuminate\Support\Facades\Auth;
use Intervention\Image\Facades\Image;
class postsController extends Controller
{
   public function index(){
      $posts = blog::join('status','status.id','=','blogs.status')
               ->join('users','users.id','=','blogs.created_by')
               ->OrderBy('blogs.id','desc')
               ->select('*','blogs.id as postID','blogs.created_at as postDate','status.name as name','users.name as author')
               ->get();
      $count = 1;
      return view('modules.posts.index', compact('posts','count'));
   }

   public function create(){
      $types = blog_types::where('status', '=',15)->get();
      $tags = blog_tags::where('status',1)->pluck('name', 'id')->prepend('choose Tags');
      $category = category::pluck('name', 'id')->prepend('choose category');
      return view('modules.posts.create', compact('types','tags','category'));
   }

   public function store(Request $request){
      //validate data
      $this->validate($request, array(
         'title' => 'required|max:255',
         'content' => 'required',
         'status' => 'required',
         'synopsis' => 'required',
      ));

      $blog = new blog;

      if(!empty($request->thumbnail)){

         $file = $request->thumbnail;

         // main image destination
         $destinationPath = base_path().'/public/media/posts/';

         // GET THE FILE EXTENSION
         $extension = $file->getClientOriginalExtension();
         // RENAME THE UPLOAD WITH RANDOM NUMBER
         $fileName = Limitless::generateRandomString(). '.' . $extension;
         // MOVE THE UPLOADED FILES TO THE DESTINATION DIRECTORY
         $upload_success = $file->move($destinationPath, $fileName);

         $blog->thumbnail = $fileName;
      }

      //check if unique
      $check = blog::where('title','=',$request->title)->count();

      if ($check > 0 ) {
         $blog->url = Limitless::seoUrl($request->title).'-'.Limitless::generateRandomString(4);
      }else{
         $blog->url = Limitless::seoUrl($request->title);
      }

      //store to database
      $blog->title = $request->title;
      $blog->meta_tags = $request->meta_tags;
      $blog->meta_description = $request->meta_description;
      $blog->content = $request->content;
      $blog->blog_type = $request->blog_type;
      $blog->status = $request->status;
      $blog->visibility = $request->visibility;
      $blog->publish_time = $request->publish_time;
      $blog->view_count = 1;
      $blog->comment = $request->comment;
      $blog->featured = $request->featured;
      $blog->synopsis = $request->synopsis;
      $blog->created_by = Auth::user()->id;
      $blog->save();

      if($request->tags != ""){
         $cat = $request->tags;

         //foreach ($cat as $key => $n){
         for($i=0; $i < count($request->tags); $i++ ) {
            $tags = new blog_tag;
            $tags->blog_id = $blog->id;
            $tags->tag_id = $request->tags[$i];
            $tags->save();
         }
      }

      if($request->category != ""){
         $cat = $request->category;

         //foreach ($cat as $key => $n){
         for($i=0; $i < count($request->category); $i++ ) {
            $blogcat = new blog_category;
            $blogcat->blog_id = $blog->id;
            $blogcat->category_id = $request->category[$i];
            $blogcat->save();
         }
      }

      Session::flash('success', 'Post successfully saved !');

      return redirect()->route('posts.edit',$blog->id);
   }

   public function edit($id){

      $post = blog::join('status','status.id','=','blogs.status')
                     ->where('blogs.id',$id)
                     ->select('*','blogs.id as blogID','status.id as status')
                     ->first();
      $types = blog_types::get();

      $tags = blog_tags::all();
      $tags2 = array();

      foreach ($tags as $tag) {
         $tags2[$tag->id] = $tag->name;
      }

      //category
      $category = category::all();
      $catlink = array();

      foreach ($category as $cat) {
         $catlink[$cat->id] = $cat->name;
      }

      // current cat
      $cats = blog_category::join('category_blogs', 'category_blogs.id', '=' , 'blog_category.category_id')
               ->where('blog_id',$post->blogID)
               ->select('category_blogs.id as catID')
               ->get();

      $current_cats = array();
      foreach($cats as $cp){
         $current_cats[] = $cp->catID;
      }

      // Current tags
      $get_tags = blog_tag::join('blog_tags', 'blog_tags.id', '=' , 'blog_tag.tag_id')
                  ->where('blog_id',$post->blogID)
                  ->select('blog_tags.id as tagid')
                  ->get();

      $current_tags = array();

      foreach($get_tags as $ct){
         $current_tags[] = $ct->tagid;
      }


      //return $current_cats;
      return view('modules.posts.edit', compact('types','category','post'))
         ->withCurrentcat($current_cats)
         ->withTags($tags2)
         ->withCategorylink($catlink)
         ->withGettags($current_tags)
         ->withPostid($id);
   }

   public function update(Request $request, $id){

      $this->validate($request, array(
         'title' => 'required|max:255',
         'meta_description' => 'required',
         'content' => 'required',
         'synopsis' => 'required',
      ));

      $blog = blog::find($id);

      //delete and replaces image if exists
      if(!empty($request->thumbnail)){
         // check if image was uploaded on create
         $check = blog::where('id','=',$id)->where('thumbnail','!=',"")->count();

         if($check > 0){
               $oldimage = blog::where('id','=',$id)->select('thumbnail')->first();

               // main image
               $destinationPath = base_path().'/public/media/posts/'.$oldimage->thumbnail;
               if (File::exists($destinationPath)) {
                  unlink($destinationPath);
               }
         }

         // main image destination
         $destinationPath = base_path().'/public/media/posts/';

         $file = $request->thumbnail;

         // GET THE FILE EXTENSION
         $extension = $file->getClientOriginalExtension();
         // RENAME THE UPLOAD WITH RANDOM NUMBER
         $fileName = Limitless::generateRandomString(). '.' . $extension;
         // MOVE THE UPLOADED FILES TO THE DESTINATION DIRECTORY

         $file->move($destinationPath, $fileName);

         $blog->thumbnail = $fileName;
      }

      //delete and replaces image if exists
      if($blog->title != $request->title){
         //check if unique
         $check = blog::where('title','=',$request->title)->count();

         if ($check > 0 ) {
               $blog->url = Limitless::seoUrl($request->title).'-'.Limitless::generateRandomString(4);
         }else{
               $blog->url = Limitless::seoUrl($request->title);
         }
      }

      if ($blog->publish_time != "NULL" && $request->publish_time == "")
         $blog->publish_time = $blog->publish_time;
      else {
         $blog->publish_time = $request->publish_time;
      }

      $blog->title = $request->input('title');
      $blog->meta_tags = $request->input('meta_tags');
      $blog->meta_description = $request->input('meta_description');
      $blog->content = $request->input('content');
      $blog->blog_type = $request->input('blog_type');
      $blog->status = $request->input('status');
      $blog->visibility = $request->input('visibility');
      $blog->synopsis = $request->input('synopsis');
      $blog->featured = $request->input('featured');
      $blog->comment = $request->input('comment');
      $blog->updated_by = Auth::user()->id;
      $blog->save();

      //tags

      if($request->tags != ""){
         blog_tag::where('blogID',$id)->delete();
         //save the current categories
         for($i=0; $i < count($request->tags); $i++ ) {
            $blogtag = new blog_tag;
            $blogtag->blogID = $blog->id;
            $blogtag->tagID = $request->tags[$i];
            $blogtag->save();
         }
      }

      if($request->category != ""){
         //delete the current categories
         $del_cat = blog_category::where('blog_id',$id)->get();

         foreach ($del_cat as $dc){
            $finaldelete = blog_category::where('id',$dc->id)->first();
            $finaldelete->delete();
         }

         //save the current categories
         for($i=0; $i < count($request->category); $i++ ) {
            $blogcat = new blog_category;
            $blogcat->blog_id = $blog->id;
            $blogcat->category_id = $request->category[$i];
            $blogcat->save();
         }
      }

      Session::flash('success', 'Post successfully Edited !');
      return redirect()->back();
   }

   //attachment
   public function attachment($id){
      $attachment = attachment::where('parentID',$id)->where('category','post')->get();
      return view('modules.posts.attachment')->withPostid($id)->withAttachments($attachment);
   }

   //comment
   public function comment($id){
      $comment = comment::where('postID',$id)->get();
      return view('modules.posts.comment')->withPostid($id)->withComments($comment);
   }

   public function destroy($id){
      // check if image was uploaded on create
      $check = blog::where('id','=',$id)->where('thumbnail','!=',"")->count();

      if($check > 0){
         $oldimage = blog::where('id','=',$id)->select('thumbnail')->first();

         // main image
         $destinationPath = base_path().'/public/media/posts/'.$oldimage->thumbnail;
         if (File::exists($destinationPath)) {
               unlink($destinationPath);
         }
      }

      $blog = blog::find($id);

      $blog->delete();

      //delete atachments
      // $attachment = attachment::where('category', 'post')->where('parentID',$id)->get();

      // foreach ($attachment as $att) {
      //    attachment::where('parentID',$att->parentID)->delete();
      // }

      //delete comments
      $comments = comment::where('postID',$id)->get();

      foreach ($comments as $cmt) {
         comment::where('postID',$cmt->postID)->delete();
      }

      //delete blog category
      $blog_category = blog_category::where('blog_id',$id)->get();

      foreach ($blog_category as $bc) {
         blog_category::where('blog_id',$bc->blog_id)->delete();
      }

      //delete tags
      $tags = blog_tag::where('blogID',$id)->get();

      foreach ($tags as $tg) {
         blog_tag::where('blogID',$tg->blogID)->delete();
      }

      Session::flash('success', 'post Deleted !');

      return redirect()->route('posts.index');
   }
}
