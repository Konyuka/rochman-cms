<?php
namespace App\Http\Controllers\modules\duka;
use App\Http\Controllers\Controller;
use App\Models\cms\inquiry;
use Illuminate\Http\Request;
use App\Models\duka\product_information;
use App\Models\duka\vendor\vendors;
use App\Models\duka\product_price;
use App\Models\duka\product_inventory;
use App\Models\duka\category;
use App\Models\duka\product_media;
use App\Models\duka\invoice\invoice_products;
use App\Models\duka\tags;
use App\Models\duka\attributes;
use App\Models\duka\product_tag;
use App\Models\duka\product_category_product_information;
use App\Models\duka\brand;
use App\Models\duka\tax;
use Session;
use Limitless;
use Input;
use File;
use Auth;

class productController extends Controller{
   public function __construct(){
      $this->middleware('auth');
   }

   /**
 * Display a listing of the resource.
   *
   * @return \Illuminate\Http\Response
   */
   public function index(){
      $products = product_information::orderBy('product_information.id','desc')->get();
      $count = 1;
      return view('modules.duka.products.index', compact('products','count'));
   }

   /**
 * Show the form for creating a new resource.
   *
   * @return \Illuminate\Http\Response
   */
   public function create()
   {
      $categories = category::pluck('name','id');
      return view('modules.duka.products.create', compact('categories'));
   }

   /**
 * Store a newly created resource in storage.
   *
   * @param  \Illuminate\Http\Request  $request
   * @return \Illuminate\Http\Response
   */
   public function store(Request $request)
   {
      $this->validate($request, [
         'product_name' => 'required',
      ]);

      $check = product_information::where('product_name',$request->product_name)->count();
      $product = new product_information;
      $product->product_name = $request->product_name;
      if ($request->code_type == 'Auto') {
         $product->sku_code = Limitless::generateRandomString(9);
      }elseif($request->code_type == 'Custom'){
         $product->sku_code = $request->sku_code;
      }
      $product->short_description = $request->short_description;
      $product->description = $request->description;

      $product->price = $request->price;
      $product->bedrooms = $request->bedrooms;
      $product->bathrooms = $request->bathrooms;
      $product->garadge = $request->garadge;
      $product->feature_alert = $request->feature_alert;
      $product->feature_color = $request->feature_color;
      $product->location = $request->location;
      $product->size = $request->size;
      $product->type = $request->type;
      $product->map = $request->map;
      $product->longitude = $request->longitude;
      $product->latitude = $request->latitude;
      $product->schools = $request->schools;
      $product->amenities = json_encode($request->amenities);
      $product->status = $request->status;
      if ($check > 1) {
         $product->url = Limitless::seoUrl($request->product_name).'-'.Limitless::generateRandomString(4);
      }else{
         $product->url = Limitless::seoUrl($request->product_name);
      }
      $product->save();

      //add category
      $category = count(collect($request->category));
         if($category > 0){
         //upload new category
         for($i=0; $i < count($request->category); $i++ ) {
               $cat = new product_category_product_information;
               $cat->productID = $product->id;
               $cat->categoryID = $request->category[$i];
               $cat->save();
         }
      }
      Session::flash('success','Item successfully added.');

      return redirect()->route('duka.product.index');
   }

   /**
 * Show the form for editing the specified resource.
   *
   * @param  int  $id
   * @return \Illuminate\Http\Response
   */
   public function edit($id)
   {
      $product = product_information::where('product_information.id',$id)
                     ->select('*','product_information.id as productID','product_information.status as status')
                     ->first();

      $productID = $id;

      //category
      $category = category::get();

      $joincat = array();
      foreach ($category as $joint) {
         $joincat[$joint->id] = $joint->name;
      }

      //join category
      $getjoint = product_category_product_information::join('product_category','product_category.id', '=' ,'product_category_product_information.categoryID')
                  ->where('productID',$id)
                  ->select('product_category.id as catid')
                  ->get();

      $jointcategories = array();
      foreach($getjoint as $cj){
         $jointcategories[] = $cj->catid;
      }

      return view('modules.duka.products.edit', compact('product','jointcategories','joincat','productID'));
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
      $this->validate($request, [
         'product_name' => 'required',
      ]);

      $product = product_information::where('id',$id)->first();
      if($product->product_name != $request->product_name || $product->url == ""){
         $check = product_information::where('product_name',$request->product_name)->count();
         if ($check > 1) {
               $product->url = Limitless::seoUrl($request->product_name).'-'.Limitless::generateRandomString(4);
         }else{
               $product->url = Limitless::seoUrl($request->product_name);
         }
      }

      $product->product_name = $request->product_name;
      $product->status = $request->status;
      $product->type = $request->type;
      $product->map = $request->map;
      $product->amenities = json_encode($request->amenities);
      $product->short_description = $request->short_description;
      $product->description = $request->description;
      $product->price = $request->price;
      $product->feature_alert = $request->feature_alert;
      $product->feature_color = $request->feature_color;
      $product->bedrooms = $request->bedrooms;
      $product->bathrooms = $request->bathrooms;
      $product->garadge = $request->garadge;
      $product->location = $request->location;
      $product->schools = $request->schools;
      $product->longitude = $request->longitude;
      $product->latitude = $request->latitude;
      $product->size = $request->size;
      $product->save();


      $category = count(collect($request->category));
      //update category
      if($category > 0){
         //delete existing category
         product_category_product_information::where('productID',$id)->delete();

         //upload new category
         for($i=0; $i < count($request->category); $i++ ) {
               $cat = new product_category_product_information;
               $cat->productID = $id;
               $cat->categoryID = $request->category[$i];
               $cat->save();
         }
      }

      Session::flash('success','Item successfully updated !');

      return redirect()->back();
   }


   /**
 * product description
   *
   * @param  \Illuminate\Http\Request  $request
   * @param  int  $id
   * @return \Illuminate\Http\Response
   */
   public function description($id){
      $product = product_information::where('id',$id)->first();

      $productID = $id;

      return view('modules.duka.products.description', compact('product','productID'));
   }


   /**
 * update product description
   *
   * @param  \Illuminate\Http\Request  $request
   * @param  int  $id
   * @return \Illuminate\Http\Response
   */
   public function description_update(Request $request,$id){

      $product = product_information::where('id',$id)->first();

      $product->userID = Auth::user()->id;
      $product->save();

      Session::flash('success','Item description updated successfully');

      return redirect()->back();
   }


   /**
 * Remove the specified resource from storage.
   *
   * @param  int  $id
   * @return \Illuminate\Http\Response
   */
   public function destroy($id)
   {
      //delete image from folder/directory
      $check_image = product_media::where('productID',$id)->count();

      if($check_image > 0){
         //directory
         $directory = base_path().'/storage/products/';
         $images = product_media::where('productID',$id)->get();
         foreach($images as $image){
         if (File::exists($directory)) {
            unlink($directory.$image->file_name);
         }
         $image->delete();
         }
      }

      product_information::where('id', $id)->delete();

      //delete categories
      $categories = product_category_product_information::where('productID',$id)->get();
      foreach($categories as $category){
         product_category_product_information::find($category->id)->delete();
      }

      Session::flash('success', 'The Item was successfully deleted !');

      return redirect()->back();
   }

   public function inquiry(){
      $inquiries = inquiry::where('type','Property')->orderby('id','desc')->get();
      return view('modules.duka.view_inquiry', compact('inquiries'));
   }

}
