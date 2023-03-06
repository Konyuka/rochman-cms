<?php
namespace App\Helpers;
use App\Models\duka\product_category_product_information;
use App\Models\duka\product_media;
use App\Models\duka\product_orders;
use App\Models\duka\category;
use App\Models\duka\order_item;
use App\Models\duka\tax;
use App\Models\duka\cart;
use Auth;
class Duka
{
   /*==============================================================================================
   ===                                        products                                          ===
   ===============================================================================================*/

	//check cover image
	public static function check_item_image($id){
		$check = product_media::where('productID',$id)->where('cover',1)->count();
		return $check;
	}

	//get cover image
	public static function item_cover_image($id){
		$image = product_media::where('productID',$id)->where('cover',1)->first();
		return $image;
	}

	//product category
	public static function product_category($id){
		$category = category::where('id',$id)->first();
		return $category;
	}

	//product inventory
	public static function inventory($id){
		$inventory = product_inventory::where('productID',$id)->first();
		return $inventory;
	}

	//products by category
	public static function products_by_category_count($id){
		$products = product_category_product_information::join('product_information','product_information.id','=','product_category_product_information.productID')

			->where('productID',$id)
			->count();

		return $products;
	}

	//products in a category
	public static function products_in_category($id){
		$count = product_category_product_information::where('categoryID',$id)->count();

		return $count;
	}

	/*==============================================================================================
   ===                                        Tax                                               ===
   ===============================================================================================*/
	//check tax
	public static function check_tax($id){
		$check = tax::where('id',$id)->count();
		return $check;
	}

	//tax details
	public static function tax($id){
		$tax = tax::find($id);
		return $tax;
	}

	/*==============================================================================================
   ===                                        Orders                                            ===
   ===============================================================================================*/
	public static function items_per_order($id){
		$count = order_item::where('orderID',$id)->count();
		return $count;
	}


   /*==============================================================================================
   ===                                        user stats                                            ===
   ===============================================================================================*/
   //user total paid orders
	public static function user_total_paid_orders($id){
		$orders = product_orders::where('payment_status','paid')->where('userID',$id)->get();
		return $orders;
	}

   //user current cart items
   public static function user_current_cart_items($id){
      $cart = cart::where('userID',$id)->get();
      return $cart;
   }
}
