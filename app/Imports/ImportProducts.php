<?php

namespace App\Imports;

use Illuminate\Support\Collection;
use Maatwebsite\Excel\Concerns\ToCollection;
use Maatwebsite\Excel\Concerns\WithHeadingRow;
use App\Model\duka\product_information;
use App\Model\duka\product_inventory;
use App\Model\duka\product_price;
use Auth;

class ImportProducts implements ToCollection,WithHeadingRow 
{
   public function __construct($type,$parent)
   {
      $this->type = $type;
      $this->parent = $parent;
   }

   /**
   * @param array $row
   *
   */
   public function collection(Collection $rows)
   {
      $type =  $this->type;
      $parent =  $this->parent;
      
      foreach ($rows as $row){

         $item = new product_information;
         $item->type = $type;
         $item->parentID = $parent;
         $item->product_name = $row['name'];
         $item->sku_code = $row['code'];
         $item->description = $row['name'];
         $item->short_description = $row['name'];
         $item->userID = Auth::user()->id;
         $item->save();

         //inventory
         $inventory = new product_inventory;
         $inventory->productID = $item->id;
         $inventory->userID = Auth::user()->id;
         $inventory->save();

         //price
         $price = new product_price;
         $price->productID = $item->id;
         $price->buying_price = 0;
         $price->selling_price = $row['price'];
         $price->userID = Auth::user()->id;
         $price->save();
      }
   }
}
