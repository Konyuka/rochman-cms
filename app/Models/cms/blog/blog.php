<?php

namespace App\Models\cms\blog;

use Illuminate\Database\Eloquent\Model;

class blog extends Model
{
    Protected $table = 'blogs';

    public function tags(){
        return $this->belongsToMany('App\Models\cms\blog\tag');
    }

    public function category_join(){
        return $this->belongsTo('App\Models\cms\blog\category');
    }
}
