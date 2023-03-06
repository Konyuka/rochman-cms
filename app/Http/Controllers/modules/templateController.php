<?php

namespace App\Http\Controllers\modules;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\cms\pages\template;
use Limitless;
use Session;
use Auth;

class templateController extends Controller
{
   public function __construct(){
      $this->middleware('auth');
   }

   public function store(Request $request){
      //check if template exisit
      $check = template::where('blade_name',Limitless::seoUrl($request->blade_name))->count();
      if($check == 0){

         $template = new template;
         $template->blade_name = Limitless::seoUrl($request->blade_name);
         $template->created_by = Auth::user()->id;
         $template->save();

         Session::flash('success', 'The template has been successfully added');
      }else{
         Session::flash('warning','This blade template is already added to the database');
      }

      return redirect()->back();
   }
}
