<?php

namespace App\Models\cms\blog;

use Illuminate\Database\Eloquent\Model;

class tag extends Model
{
    Protected $table = 'tags';

    public function blogs(){
        return $this->belongsToMany('App\Models\cms\blog\blog');
    }
}
