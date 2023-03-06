<?php
namespace App\Http\Controllers\modules;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Session;
use App\Models\cms\blog\blog_tags;
use Limitless;
use Auth;
class tagsController extends Controller
{
   public function index(){
      $tags = blog_tags::join('status','status.id','=','blog_tags.status')
                     ->Orderby('blog_tags.id','DESC')
                     ->select('*','blog_tags.name as title','blog_tags.id as tagID')
                     ->get();

      $count = 1;

      return view('modules.tags.index', compact('tags','count'));
   }

    public function store(Request $request){
        //validate data
        $this->validate($request, array(
            'name' => 'required',
            'status' => 'required',
        ));

        $tag = new blog_tags;

        //check if unique

        $check = blog_tags::where('name','=',$request->name)->count();

        if ($check > 0 ) {
            $tag->url = Limitless::seoUrl($request->name).'-'.Limitless::generateRandomString(4);
        }else{
            $tag->url = Limitless::seoUrl($request->name);
        }

        $tag->name = $request->name;
        $tag->feature = $request->feature;
        $tag->status = $request->status;
        $tag->created_by = Auth::user()->id;
        $tag->save();

        $tags = blog_tags::Orderby('id','DESC')->get();

        Session::flash('success','Type Successfully Created!');

        return redirect()->route('post.tags.index')->withTags($tags);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
      $tags = blog_tags::join('status','status.id','=','blog_tags.status')
               ->Orderby('blog_tags.id','DESC')
               ->select('*','blog_tags.name as title','blog_tags.id as tagID')
               ->get();
      $edit = blog_tags::find($id);
      $count = 1;

      return view('modules.tags.edit', compact('edit','tags','count'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //validate data
        $this->validate($request, array(
            'name' => 'required',
            'status' => 'required'
        ));

        $tags = blog_tags::find($id);
        
        //check if name is the same
        if ($request->name == $tags->name) {
            $tags->url = Limitless::seoUrl($request->name);
        }elseif ($tags->name != $request->name) {
            //check if unique
            $check = blog_tags::where('name','=',$request->name)->count();

            if ($check > 0 ) {
                $tags->url = Limitless::seoUrl($request->name).'-'.Limitless::generateRandomString(4);
            }else{
                $tags->url = Limitless::seoUrl($request->name);
            }
        }

        $tags->name = $request->input('name');
        $tags->status = $request->input('status');
        $tags->feature = $request->input('feature');
        $tags->updated_by = Auth::user()->id;
        $tags->save();

        $all_tags = blog_tags::Orderby('id','DESC')->get();

        Session::flash('success', 'Tag Successfully Edited!');
        return redirect()->route('post.tags.edit', $tags->id)->withTags($all_tags);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //delete from database
        $delete = blog_tags::find($id);

        $delete->delete();

        session::flash('success','You have successfully Delete!');

        return redirect()->back();
    }

}
