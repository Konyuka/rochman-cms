<?php
namespace App\Helpers;
use App\Models\cms\pages\pages;
use App\Models\cms\pages\blog;
use App\Models\cms\pages\category;
use App\Models\cms\pages\custom_field;
use App\Models\cms\gallery;
use App\Models\cms\pages\page_menu;
use App\Models\cms\file_manager;
use App\Models\cms\status;
use Auth;
class Cms
{
   /*==============================================================================================
   ===                                        pages                                             ===
   ===============================================================================================*/
   //check if page is main page
   public static function check_if_main_page($id){
      $check = pages::where('parentID',0)->where('id',$id)->count();
      return $check;
   }

   //get page information
   public static function check_page($id){
      $page = pages::where('id',$id)->count();
      return $page;
   }

   //get page information
   public static function get_page_info($id){
      $page = pages::find($id);
      return $page;
   }

   //get child pages
   public static function get_child_pages($id){
      $page = pages::where('parentID',$id)->get();
      return $page;
   }

   /*==============================================================================================
   ===                                        Gallery                                           ===
   ===============================================================================================*/
   //count gallery images
   public static function count_gallery_images($id){
      $count = file_manager::where('parentID',$id)->where('section','gallery')->count();
      return $count;
   }

   /*==============================================================================================
   ===                                        Menu                                           ===
   ===============================================================================================*/
   //check if page is in menu
   public static function check_page_in_page($menuID,$pageID){
      $check = page_menu::where('pageID',$pageID)->where('menuID',$menuID)->count();
      return $check;
   }

   //check if has children
   public static function check_menu_page_children($menuID,$pageID){
      $check = page_menu::where('parentID',$pageID)->where('menuID',$menuID)->count();
      return $check;
   }

   //get menu page children
   public static function menu_page_children($menuID,$pageID){
      $children = page_menu::join('pages','pages.id','=','page_menu.pageID')
                           ->where('page_menu.parentID',$pageID)
                           ->where('menuID',$menuID)
                           ->select('*','page_menu.position as position','page_menu.pageID as pageID','page_menu.id as menuItemID')
                           ->orderby('page_menu.position','asc')
                           ->get();
      return $children;
   }

   /*==============================================================================================
   ===                                        status                                             ===
   ===============================================================================================*/
   public static function status($id){
      $status = status::find($id);
      return $status;
   }
}
