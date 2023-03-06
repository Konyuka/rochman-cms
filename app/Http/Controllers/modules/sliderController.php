<?php
namespace App\Http\Controllers\modules;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\cms\pages\slider;
use Session;
use Limitless;
use File;
use Auth;

class sliderController extends Controller
{
   public function __construct(){
      $this->middleware('auth');
   }

   public function index(){
      $sliders = slider::OrderBy('id','DESC')->get();
      $count = 1;
      return view('modules.sliders.index', compact('count','sliders'));
   }

   public function create(){
      return view('modules.sliders.create');
   }

   public function store(Request $request){
      $this->validate($request, array(
         'image'=>'required',
         'status'=>'required',
         'url' => 'required'
      ));

      $file = $request->image;
      // SET UPLOAD PATH
      $destinationPath = base_path().'/public/media/sliders/';
      // GET THE FILE EXTENSION
      $extension = $file->getClientOriginalExtension();

      // RENAME THE UPLOAD WITH RANDOM NUMBER
      $fileName = Limitless::generateRandomString(10). '.' . $extension;
      // MOVE THE UPLOADED FILES TO THE DESTINATION DIRECTORY
      $file->move($destinationPath, $fileName);

      $slide = new slider;

      $slide->image = $fileName;
      $slide->url = $request->url;
      $slide->status = $request->status;
      $slide->caption_one = $request->caption_one;
      $slide->caption_two = $request->caption_two;
      $slide->caption_three = $request->caption_three;
      $slide->created_by = Auth::user()->id;
      $slide->save();

      session::flash('success','You have successfully created a new slider.');

      return redirect()->route('slider.index');
   }

   public function edit($id){
      $slider = slider::find($id);
      return view('modules.sliders.edit')->withSlider($slider);
   }

   /**
     * Update the specified resource in public.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
   */
   public function update(Request $request, $id)
   {
      $this->validate($request, array(
         'status'=>'required',
         'url' =>'required',
      ));

      $slide = slider::find($id);

      //delete and replaces image if exists
      if(!empty($request->image)){

         $old = slider::where('id','=',$id)->select('image')->first();

         $directory = base_path().'/public/media/sliders/'.$old->image;

         if (File::exists($directory)) {
            unlink($directory);
         }

         $file = $request->image;
         // SET UPLOAD PATH
         $destinationPath = base_path().'/public/media/sliders/';
         // GET THE FILE EXTENSION
         $extension = $file->getClientOriginalExtension();
         // RENAME THE UPLOAD WITH RANDOM NUMBER
         $fileName = Limitless::generateRandomString(). '.' . $extension;
         // MOVE THE UPLOADED FILES TO THE DESTINATION DIRECTORY
         $upload_success = $file->move($destinationPath, $fileName);

         $slide->image = $fileName;
      }

      $slide->url = $request->url;
      $slide->status = $request->status;
      $slide->caption_one = $request->caption_one;
      $slide->caption_two = $request->caption_two;
      $slide->caption_three = $request->caption_three;

      $slide->save();

      session::flash('success','Slider successfully updated');

      return redirect()->back();
   }

   /**
    * Remove the specified resource from public.
    *
    * @param  int  $id
    * @return \Illuminate\Http\Response
    */
   public function delete($id)
   {
      //delete image from folder/directory
      $old = slider::where('id','=',$id)->select('image')->first();

      $directory = base_path().'/public/media/sliders/'.$old->image;

      if (File::exists($directory)) {
         unlink($directory);
      }

      $slider = slider::find($id);

      $slider->delete();

      Session::flash('success', 'The Slider was successfully deleted !');

      return redirect()->route('slider.index');
   }

}
