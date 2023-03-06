<?php
namespace App\Models\duka;

use Illuminate\Database\Eloquent\Model;

class product_information extends Model
{
   protected $table = 'product_information';

   protected $fillable = [
        'type', 'parentID', 'product_name', 'sku_code', 'short_description', 'userID'
    ];

   public function categories(){
        return $this->belongsToMany('App\Model\finance\products\product_category');
    }
}
 