<?php
namespace App\Http\Controllers\modules;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\cms\pages\pages;
use App\Models\cms\pages\custom_field;
use App\Models\cms\pages\template;
use Auth;
use Session;
use Limitless;
use File;

class pagesController extends Controller
{
   public function __construct(){
      $this->middleware('auth');
   }

   /**
    * Display a listing of the resource.
    *
    * @return \Illuminate\Http\Response
    */
   public function index(){
      $pages = pages::join('status','status.id','=','pages.status')
                     ->orderBy('pages.id','desc')
                     ->select('*','pages.id as pageID')
                     ->get();
      $count = 1;

      return view('modules.pages.index', compact('pages','count'));;
   }

   /**
    * Show the form for creating a new resource.
    *
    * @return \Illuminate\Http\Response
   */
   public function create(){
      $pages = new pages;
      $pages->parentID = 0;
      $pages->status ='draft';
      $pages->created_by = Auth::user()->id;
      $pages->save();

      return redirect()->route('pages.edit',$pages->id);
   }

   /**
    * Store a newly created resource in storage.
    *
    * @param  \Illuminate\Http\Request  $request
    * @return \Illuminate\Http\Response
    */
   public function store(Request $request)
   {

   }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
   public function show($id)
   {
        //
   }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $page = pages::find($id);
        $parents =  pages::where('id','!=',$page->id)->where('parentID',0)->OrderBy('id','DESC')->get();
        $fields = custom_field::where('pageID',$id)->orderby('id','desc')->get();
        $customfields = custom_field::groupBy('title')->get();
        $templates = template::all();
        return view('modules.pages.edit')->withPage($page)->withParents($parents)->withFields($fields)->withCustomfields($customfields)->withTemplates($templates);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */

   public function update(Request $request, $id)
   {
      $this->validate($request,[
         'title'            => 'required',
         'status'   => 'required',
      ]);

      $page = pages::find($id);

      if(!empty($request->thumbnail)){
         if ($page->thumbnail != ""){
            $image_path = base_path().'/public/media/pages/'.$page->thumbnail;
            if (File::exists($image_path)) {
               unlink($image_path);
            }
         }

         $file = $request->thumbnail;
         //$file = $request->input(file('portfolios_image'));
         // SET UPLOAD PATH
         $destinationPath = base_path().'/public/media/pages/';
         // GET THE FILE EXTENSION
         $extension = $file->getClientOriginalExtension();
         // RENAME THE UPLOAD WITH RANDOM NUMBER
         $fileName = Limitless::generateRandomString(). '.' . $extension;
         // MOVE THE UPLOADED FILES TO THE DESTINATION DIRECTORY
         $upload_success = $file->move($destinationPath, $fileName);

         $page->thumbnail = $fileName;
      }

      //check if title is the same
      if ($request->title != $page->title) {
         $check = pages::where('title','=',$request->title)->count();
         if ($check > 0 ) {
            $page->url = Limitless::seoUrl($request->title).'-'.Limitless::generateRandomString(4);
         }else{
            $page->url = Limitless::seoUrl($request->title);
         }
      }

      if ($page->publish_time != "NULL" && $request->publish_time == "")
         $page->publish_time = $page->publish_time;
      else {
         $page->publish_time = $request->publish_time;
      }

      $page->title = $request->title;
      $page->custom_url = $request->custom_url;
      $page->status = $request->status;
      $page->content = $request->content;
      $page->visibility = $request->visibility;
      $page->parentID = $request->parent;
      $page->meta_tags = $request->meta_tags;
      $page->template = $request->template;
      $page->meta_description = $request->meta_description;
      $page->created_by = Auth::user()->id;
      $page->save();

      //custom fields
      if(!empty($request->custom_title)){
         //delete the current entry
         $del_custom = custom_field::where('pageID',$id)->get();

         foreach ($del_custom as $dc){
            $finaldelete = custom_field::where('id',$dc->id)->first();
            $finaldelete->delete();
         }

         //save the current categories
         for($i=0; $i < count($request->custom_title); $i++ ) {
            $custom = new custom_field;
            $custom->pageID = $id;
            $custom->type = $request->type;
            $custom->title = $request->custom_title[$i];
            $custom->content = $request->custom_content[$i];
            $custom->save();
         }
      }

      Session::flash('success','pages successfully updated');

      return redirect()->back();

   }

   /**
    * Remove the specified resource from storage.
    *
    * @param  int  $id
    * @return \Illuminate\Http\Response
    */
   public function delete($id)
   {
      //delete image from folder/directory
      $page = pages::find($id);

      if($page->thumbnail != ""){
         $image_path = base_path().'/public/media/pages/'.$page->thumbnail;
         if (File::exists($image_path)) {
               unlink($image_path);
         }
      }

      $page->delete();

      Session::flash('success', 'The page was successfully deleted !');

      return redirect()->back();
   }

   public function custom_field(Request $request){

      $field = new custom_field;

      if($request->custom_title != "" && $request->typed_title == ""){

        $field->pageID = $request->pageID;
        $field->type = $request->type;
   		$field->title = $request->custom_title;
   		$field->save();

      }
      if($request->custom_title == "" && $request->typed_title != ""){

         $field->pageID = $request->pageID;
         $field->type = $request->type;
         $field->title = $request->typed_title;
         $field->save();
      }

      if($request->custom_title != "" && $request->typed_title != ""){
         $field->pageID = $request->pageID;
         $field->type = $request->type;
         $field->title = $request->typed_title;
         $field->save();
      }

      Session::flash('success','Field successfully added');
		return redirect()->back();
	}

   public function custom_field_delete(Request $request, $id){

		$field = custom_field::find($id);
      $field->delete();

		return redirect()->back();
	}

   public function template(Request $request){

      $template = new template;
      $template->blade_name = $request->blade_name;
      $template->save();

      Session::flash('success', 'The template has been successfully added');

      return redirect()->back();
   }
}
