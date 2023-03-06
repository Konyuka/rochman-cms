<?php

namespace App\Http\Controllers\modules;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\cms\gallery;
use App\Models\cms\file_manager;
use Auth;
use Session;
use Limitless;
use File;

class galleryController extends Controller
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
      $galleries = gallery::join('status','status.id','=','gallery.status')
                           ->orderBy('gallery.id','desc')
                           ->select('*','gallery.id as galleryID')
                           ->get();
      $count = 1;

      return view('modules.gallery.index', compact('galleries','count'));;
   }

   /**
   * Create gallery
   *
   * @return \Illuminate\Http\Response
   */
   public function create(){
      return view('modules.gallery.create');
   }

   /**
   * gallery store
   *
   * @return \Illuminate\Http\Response
   */
   public function store(Request $request){
      $this->validate($request, array(
         'cover_image'=>'required',
         'title'=>'required',
         'status' => 'required'
      ));

      $file = $request->cover_image;
      // SET UPLOAD PATH
      $destinationPath = base_path().'/public/media/gallery/';
      // GET THE FILE EXTENSION
      $extension = $file->getClientOriginalExtension();

      // RENAME THE UPLOAD WITH RANDOM NUMBER
      $fileName = Limitless::generateRandomString(10). '.' . $extension;
      // MOVE THE UPLOADED FILES TO THE DESTINATION DIRECTORY
      $file->move($destinationPath, $fileName);

      $gallery = new gallery;

      $gallery->cover_image = $fileName;
      $gallery->title = $request->title;
      $gallery->status = $request->status;
      $gallery->description = $request->description;
      $gallery->created_by = Auth::user()->id;
      $gallery->save();

      session::flash('success','You have successfully created a new gallery.');

      return redirect()->route('gallery.index');
   }

   /**
   * Edit gallery
   *
   * @return \Illuminate\Http\Response
   */
   public function edit($id){
      $edit = gallery::find($id);

      return view('modules.gallery.edit',compact('edit'));
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
      $this->validate($request, array(
         'title'=>'required',
         'status' => 'required'
      ));

      $gallery = gallery::find($id);

      //delete and replaces image if exists
      if(!empty($request->cover_image)){

         $old = gallery::where('id','=',$id)->select('cover_image')->first();

         $directory = base_path().'/public/media/gallery/'.$old->cover_image;

         if (File::exists($directory)) {
            unlink($directory);
         }

         $file = $request->cover_image;
         // SET UPLOAD PATH
         $destinationPath = base_path().'/public/media/gallery/';
         // GET THE FILE EXTENSION
         $extension = $file->getClientOriginalExtension();
         // RENAME THE UPLOAD WITH RANDOM NUMBER
         $fileName = Limitless::generateRandomString(). '.' . $extension;
         // MOVE THE UPLOADED FILES TO THE DESTINATION DIRECTORY

         $file->move($destinationPath, $fileName);

         $gallery->cover_image = $fileName;
      }

      $gallery->title       = $request->title;
      $gallery->status      = $request->status;
      $gallery->description = $request->description;
      $gallery->updated_by  = Auth::user()->id;
      $gallery->save();

      session::flash('success','Gallery successfully updated');

      return redirect()->back();
   }


   /**
   * show gallery
   *
   * @return \Illuminate\Http\Response
   */
   public function show($id){
      $gallery = gallery::find($id);
      $images = file_manager::where('parentID',$id)->where('section','gallery')->orderby('id','desc')->get();

      return view('modules.gallery.show',compact('gallery','images'));
   }

   /**
   * Image upload
   *
   * @return \Illuminate\Http\Response
   */
   public function upload_image(Request $request){
		//directory
		$directory = base_path().'/public/media/gallery/';

		//create directory if it doesn't exists
		if (!file_exists($directory)) {
			mkdir($directory, 0777,true);
		}

		//get file name
		$file = $request->file('file');
		$size =  $file->getSize();

      //change file name
      $filename = Limitless::generateRandomString().$file->getClientOriginalName();

      //move file
		$file->move($directory, $filename);

      //save the upload details into the database
		$upload = new file_manager;
      $upload->parentID    = $request->galleryID;
		$upload->file_name   = $filename;
      $upload->file_size   = $size;
      $upload->section     = 'gallery';
      $upload->file_mime   = $file->getClientMimeType();
		$upload->created_by  = Auth::user()->id;
      $upload->save();

   }

   /**
   * Image upload
   *
   * @return \Illuminate\Http\Response
   */
   public function delete_image($galleryID,$id){
      $path = base_path().'/public/media/gallery/';

      //delete image from folder
      $oldimagename = file_manager::where('id','=',$id)->where('parentID',$galleryID)->where('section','gallery')->select('file_name')->first();

      $delete = $path.$oldimagename->file_name;
      if (File::exists($delete)) {
         unlink($delete);
      }

      //image information
      file_manager::where('parentID',$galleryID)->where('id',$id)->where('section','gallery')->delete();

      Session::flash('success','Image successfully delete');

      return redirect()->back();
   }


   public function delete_gallery($id){


      $path = base_path().'/public/media/gallery/';

      //check if has images
      $check = file_manager::where('parentID',$id)->where('section','gallery')->count();
      if($check > 0){
         $deleteImages = file_manager::where('parentID',$id)->where('section','gallery')->get();
         foreach($deleteImages as $gallImage){
            //delete image from folder
            $oldimagename = file_manager::where('id',$gallImage->id)->where('section','gallery')->select('file_name')->where('parentID',$id)->first();

            $delete = $path.$oldimagename->file_name;
            if (File::exists($delete)) {
               unlink($delete);
            }

            file_manager::where('id',$gallImage->id)->where('section','gallery')->where('parentID',$id)->delete();
         }

      }

      //delete gallery
      $gallery = gallery::find($id);

      //delete and replaces image if exists
      if(!empty($gallery->cover_image != "")){

         $old = gallery::where('id','=',$id)->select('cover_image')->first();

         $directory = base_path().'/public/media/gallery/'.$old->cover_image;

         if (File::exists($directory)) {
            unlink($directory);
         }
      }

      $gallery->delete();

      Session::flash('success','Gallery successfully delete');

      return redirect()->back();
   }
}
