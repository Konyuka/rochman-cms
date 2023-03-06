<?php

namespace App\Http\Controllers\modules;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class filemanagerController extends Controller
{
    public function index(){
        return view('modules.files.index');
    }
}
