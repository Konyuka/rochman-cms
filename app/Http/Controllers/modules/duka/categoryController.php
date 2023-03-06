<?php
namespace App\Http\Controllers\modules\duka;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\duka\category;
use Session;
use Limitless;
use Auth;

class categoryController extends Controller{

   public function __construct(){
      $this->middleware('auth');
   }

   /**
    * Display a listing of the resource.
    *
    * @return \Illuminate\Http\Response
    */
   public function index()
   {
      $category = category::orderBy('id','desc')->get();
      $count = 1;

      return view('modules.duka.products.category.index', compact('category','count'));
   }

   /**
    * Store a newly created resource in storage.
    *
    * @param  \Illuminate\Http\Request  $request
    * @return \Illuminate\Http\Response
    */
   public function store(Request $request)
   {
      $this->validate($request,array(
         'name'=>'required',
      ));

      $check = category::where('name',$request->name)->count();
      if($check == 0){
         $url = Limitless::seoUrl($request->name);
      }else{
         $url = Limitless::seoUrl($request->name).generateRandomString(3);
      }

      $category = new category;
      $category->name = $request->name;
      $category->parentID = $request->parent;
      $category->status = $request->status;
      $category->url = $url;
      $category->save();

      session::flash('success','You have successfully created a new Category.');

      return redirect()->route('duka.product.category');
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
      $category = category::find($id);
      $parents = category::where('id','!=',$category->id)->get();
      $categories = category::orderBy('id','desc')->get();
      $count = 1;
      return view('modules.duka.products.category.edit', compact('category','parents','count','categories'));
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
         'name' => '',
      ]);

      $category = category::find($id);
      $category->name = $request->name;
      $category->parentID = $request->parent;
      $category->status = $request->status;
      $category->save();

      session::flash('success','Category successfully updated!');

      return redirect()->route('duka.product.category.edit',$category->id);
   }

   /**
    * Remove the specified resource from storage.
    *
    * @param  int  $id
    * @return \Illuminate\Http\Response
    */
   public function destroy($id)
   {
      $category = category::find($id);
      $category->delete();

      Session::flash('success', 'The category was successfully deleted !');

      return redirect()->route('duka.product.category');
   }
}
