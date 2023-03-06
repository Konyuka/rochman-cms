<?php

namespace App\Http\Controllers\backend\cms;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\cms\blog\blog_types;
use Session;

class typeController extends Controller
{
    public function index(){
        $types = blog_types::Orderby('id','DESC')->get();
        return view('backend.cms.type.index')->withTypes($types);
    } 

    public function store(Request $request){
        //validate data
        $this->validate($request, array(
            'name' => 'required',
            'symbol' => 'required',
            'status' => 'required',
        ));

        $blog_type = new blog_types;

        $blog_type->name = $request->name;
        $blog_type->symbol = $request->symbol;
        $blog_type->status = $request->status;

        $blog_type->save();

        $types = blog_types::Orderby('id','DESC')->get();

        Session::flash('success','Type Successfully Created!');

        return redirect()->route('post.type.edit', $blog_type->id)->withTypes($types);
    }

    /**
      * Show the form for editing the specified resource.
      *
      * @param  int  $id
      * @return \Illuminate\Http\Response
    **/
    public function edit($id)
    {
        $blogtype = blog_types::find($id);
        $types = blog_types::Orderby('id','DESC')->get();
        return view('backend.cms.type.edit')->withBlogtype($blogtype)->withTypes($types);
    }

    public function update(Request $request,$id){
        //validate data
        $this->validate($request, array(
            'name' => 'required',
            'symbol' => 'required',
            'status' => 'required',
        ));

        $blog_type = blog_types::find($id);

        $blog_type->name = $request->input('name');
        $blog_type->symbol = $request->input('symbol');
        $blog_type->status = $request->input('status');

        $blog_type->save();

        $types = blog_types::Orderby('id','DESC')->get();

        Session::flash('success','Type Successfully Updated!');

        return redirect()->route('post.type.edit', $id)->withTypes($types);
    }

    public function destroy($id){
        $blogtype = blog_types::find($id);

        $blogtype->delete();

        Session::flash('success', 'The Type successfully deleted !');

        return redirect()->route('post.type.index');
    }
}
