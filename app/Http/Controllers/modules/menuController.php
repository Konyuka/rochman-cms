<?php

namespace App\Http\Controllers\modules;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\cms\pages\menu;
use App\Models\cms\pages\page_menu;
use App\Models\cms\pages\pages;
use Session;
use Auth;

class menuController extends Controller
{
   /* Function to parse the multidimentional array into a more readable array
   * Got help from stackoverflow with this one:
   *    http://stackoverflow.com/questions/11357981/save-json-or-multidimentional-array-to-db-flat?answertab=active#tab-top
   */

   function parseJsonArray($jsonArray, $parentID = 0)
	{
	   $return = array();
		foreach ($jsonArray as $subArray) {
			$returnSubSubArray = array();
			if (isset($subArray['children'])) {
				$returnSubSubArray = $this->parseJsonArray($subArray['children'], $subArray['id']);
			}
			$return[] = array('id' => $subArray['id'], 'parentID' => $parentID);
			$return = array_merge($return, $returnSubSubArray);
		}

	  	return $return;
   }


   public function __construct(){
      $this->middleware('auth');
   }

   /**
   * Display a listing of the resource.
   *
   * @return \Illuminate\Http\Response
   */
   public function index(){
      $menus = menu::join('status','status.id','=','menu.status')
                  ->orderby('menu.id','desc')
                  ->select('*','menu.id as menuID')
                  ->get();
      $count = 1;

      return view('modules.menu.index', compact('menus','count'));
   }

   /**
   * Store Menu
   *
   * @return \Illuminate\Http\Response
   */
   public function store(Request $request){
      $this->validate($request,[
         'title' => 'required',
         'status' => 'required',
      ]);

      $menu = new menu;
      $menu->title = $request->title;
      $menu->status = $request->status;
      $menu->description = $request->description;
      $menu->created_by = Auth::user()->id;
      $menu->save();

      Session::flash('success','Menu successfully added');

      return redirect()->back();
   }

   /**
   * Store Menu
   *
   * @return \Illuminate\Http\Response
   */
   public function update(Request $request, $id){
      $this->validate($request,[
         'title' => 'required',
         'status' => 'required',
      ]);

      $menu = menu::find($id);
      $menu->title = $request->title;
      $menu->status = $request->status;
      $menu->description = $request->description;
      $menu->updated_by = Auth::user()->id;
      $menu->save();

      Session::flash('success','Menu successfully updated');

      return redirect()->back();
   }

   /**
   * Menu show
   *
   * @return \Illuminate\Http\Response
   */
   public function show($id){

      $menu = menu::find($id);
      $pages = pages::where('status',31)->where('visibility','public')->orderby('id','desc')->get();
      $menuPages = page_menu::join('pages','pages.id','=','page_menu.pageID')
                           ->where('menuID',$id)
                           ->where('page_menu.parentID',0)
                           ->orderby('position','asc')
                           ->select('*','page_menu.position as position','page_menu.pageID as pageID','page_menu.id as menuItemID')
                           ->get();

      return view('modules.menu.show',compact('menu','pages','menuPages'));
   }

   /**
   * Menu positioning
   *
   * @return \Illuminate\Http\Response
   */
   public function menu_page_position(Request $request){
      // Get the JSON string
	   $jsonstring = $request->jsonstring;

      // Decode it into an array
      $jsonDecoded = json_decode($jsonstring, true);

      // Dump the array to debug
      //var_dump(parseJsonArray($jsonDecoded));

      // Run the function above
      $readbleArray = $this->parseJsonArray($jsonDecoded);

      // Loop through the "readable" array and save changes to DB
      foreach ($readbleArray as $key => $value) {

         $order = page_menu::where('pageID',$value['id'])->where('menuID',$request->menu)->first();
         $order->position = $key;
         $order->parentID = $value['parentID'];
         $order->save();
      }

   }

   public function menu_page_delete($menuID,$id){

      page_menu::where('id',$id)->where('menuID',$menuID)->delete();

      Session::flash('success','Page successfully removed');

      return redirect()->back();
   }

   /**
   * Add to menu
   *
   * @return \Illuminate\Http\Response
   */
   public function addToMenu($menuID,$pageID){
      //check if page is in menu
      $check = page_menu::where('pageID',$pageID)->where('menuID',$menuID)->count();
      if($check == 0){
         $add = new page_menu;
         $add->menuID = $menuID;
         $add->pageID = $pageID;
         $add->parentID = 0;
         $add->created_by = Auth::user()->id;
         $add->save();
      }

      Session::flash('success','pages successfully added to menu');

      return redirect()->back();
   }

   /**
   * Delete Menu
   *
   * @return \Illuminate\Http\Response
   */
   public function delete($id){
      //delete menu
      menu::where('id',$id)->delete();

      //delete menu pages
      page_menu::where('menuID',$id)->delete();

      Session::flash('success','Menu successfully deleted');

      return redirect()->back();
   }
}
