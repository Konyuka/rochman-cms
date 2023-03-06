<?php
namespace App\Http\Controllers\modules\duka;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\duka\product_media;
use App\Models\duka\product_information;
use Session;
use Limitless;
use File;
use Auth;

class imagesController extends Controller{

   public function __construct(){
      $this->middleware('auth');
   }

   /**
    * Store a newly created resource in storage.
    *
    * @param  \Illuminate\Http\Request  $request
    * @return \Illuminate\Http\Response
    */
   public function store(Request $request)
   {
    //directory
		$directory = base_path().'/public/media/products/';

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
      $upload_success = $file->move($directory, $filename);

      //save the image details into the database
      $image = new product_media;

      $image->productID = $request->productID;
      $image->file_name = $filename;
      $image->file_size = $size;
      $image->file_mime = $file->getClientMimeType();

      $image->save();
   }


   /**
    * Show the form for editing the specified resource.
    *
    * @param  int  $id
    * @return \Illuminate\Http\Response
    */
   public function edit($id)
   {
      $images = product_media::where('productID', '=', $id)->get();
      $product = product_information::where('id',$id)->first();
      $count = 1;
      $productID = $id;

      return view('modules.duka.products.images', compact('productID','images','count','product'));
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
      product_media::where('productID', $request->product_id)->where('cover', 1)->update(['cover' => 0]);

      $cover = product_media::find($id);
      $cover->cover = 1;
      $cover->save();

      Session::flash('Success', 'Cover Images has been selected !');

      return redirect()->back();
   }

   /**
    * Remove the specified resource from storage.
    *
    * @param  int  $id
    * @return \Illuminate\Http\Response
    */

   public function destroy(Request $request, $id)
   {
      //delete image from folder/directory
      $oldimagename = product_media::where('id','=',$id)->select('file_name')->first();

      $directory = base_path().'/public/media/products/';
      $delete = $directory.$oldimagename->file_name;

      if (File::exists($delete)) {
         unlink($delete);
      }

      //delete from database
      $image = product_media::find($id)->delete();

      session::flash('success','You have successfully Delete!');

      return redirect()->back();
   }
}
