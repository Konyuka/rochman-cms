@extends('layouts.app')
@section('title','Pages Edit | Tech Duka CMS')
@section('breadcrumb')
   <div class="content-header row">
      <div class="content-header-left col-md-6 col-12 mb-1 breadcrumb-new">
         <h3 class="content-header-title mb-0 d-inline-block">Pages</h3>
         <div class="row breadcrumbs-top d-inline-block">
            <div class="breadcrumb-wrapper col-12">
               <ol class="breadcrumb">
                  <li class="breadcrumb-item"><a href="{!! url('/') !!}">Home</a></li>
                  <li class="breadcrumb-item"><a href="{!! route('pages.index') !!}">Pages</a></li>
                  <li class="breadcrumb-item active">Edit</li>
               </ol>
            </div>
         </div>
      </div>
      <div class="content-header-right col-md-6 col-12"></div>
   </div>
@endsection
@section('content')
@include('partials._messages')
   {!! Form::model($page, ['route' => ['pages.update',$page->id], 'class' => 'mb-5', 'method'=>'post','enctype'=>'multipart/form-data']) !!}
      {!! csrf_field() !!}
      <div class="row">
         <!-- begin panel -->
         <div class="col-lg-9">
            <div class="card">
               <div class="card-body">
                  <div class="form-group">
                     <label for="">Page Title</label>
                     <input class="form-control" name="title" id="title" placeholder="Enter Title Here" value="{!! $page->title !!}" required>
                  </div>
                  <div class="form-group">
                     <label for="">Custom Url</label>
                     <input class="form-control" name="custom_url" id="title" value="{!! $page->custom_url !!}" placeholder="Enter Custom Link">
                  </div>
                  <div class="form-group">
                     <label for="">URL</label>
                     <input class="form-control" id="title" value="{!! $page->url !!}" readonly>
                  </div>
               </div>
            </div>
            <div class="card">
               <div class="card-body">
                  <div class="form-group">
                     {!! Form::textarea('content',null,['class'=>'my-editor form-control', 'placeholder'=>'content']) !!}
                  </div>
               </div>
            </div>
            <button type="button" class="btn btn-warning btn-sm" data-toggle="modal" data-target="#custom"><i class="fas fa-fw fa-code"></i>  Choose custom field</button>
            <button type="button" data-toggle="modal" data-target=".bd-example-modal-lg" class="btn btn-primary btn-sm"><i class="fal fa-photo-video"></i> Choose Media </button>
            <div class="card mt-1">
               <div class="card-header">
                  <h6 class="panel-title">Custome Fields</h6>
               </div>
               <div class="card-body">
                  <table class="table">
                     <thead>
                        <tr>
                           <th class="">Title</th>
                           <th class="">Value</th>
                        </tr>
                     </thead>
                     <tbody>
                        @foreach($fields as $field)
                           <tr>
                              <td class="#">
                                 <input type="text" class="form-control" value="{!! $field->title !!}" name="custom_title[]">
                                 <select name="type" class="form-control">
                                    <option value="{!! $field->type !!}" selected>{!! $field->type !!}</option>
                                    <option value="plain">Plain</option>
                                    <option value="editor">Text Editer</option>
                                 </select>
                                 <input type="hidden" value="{!! $page->id !!}" name="custom_id">
                                 <div class="mt-2">
                                    <a href="#field-{!! $field->id !!}" class="btn btn-danger btn-sm" data-toggle="modal"><i class="fas fa-fw fa-trash-alt"></i> Delete</a>
                                 </div>
                              </td>
                              <td class="#">
                                 <div class="form-group">
                                    @if($field->type == 'editor')
                                       <textarea name="custom_content[]" class="my-editor form-control" id="" cols="30" rows="4">{!! $field->content !!}</textarea>
                                    @else
                                       <textarea name="custom_content[]" class="form-control" id="" cols="30" rows="4">{!! $field->content !!}</textarea>
                                    @endif
                                 </div>
                              </td>
                           </tr>
                        @endforeach
                     </tbody>
                  </table>
               </div>
            </div>
            <div class="card">
               <div class="card-body">
                  <div class="form-group form-group-default required">
                     {!! Form::label('title', 'Post keywords (SEO)', array('class'=>'control-label')) !!}
                     {!! Form::text('meta_tags', null, array('class' => 'form-control', 'placeholder' => 'Post Meta tags', 'maxlength' => '255')) !!}
                  </div>
                  <div class="form-group">
                     {!! Form::label('title', 'Meta description', array('class'=>'control-label')) !!}
                     <textarea name="meta_description" class="form-control" cols="30" rows="10" maxlength="300">{!! $page->meta_description !!}</textarea>
                  </div>
               </div>
            </div>
         </div>
         <div class="col-lg-3">
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col-md-12 publishing-actions">
                        <div>
                           <i class="fa fa-map-pin" aria-hidden="true"></i>
                           <span>
                              Status: <b>@if($page->status){!! ucfirst(CMS::status($page->status)->name) !!}@endif</b>
                              <a href="#" id="show_status">Edit</a>
                           </span>
                        </div>
                        <div id="post-status-select" style="display:none;">
                           <div class="row">
                              <div class="col-md-12">
                                 <div class="select-status">
                                    {{ Form::select('status',[7 => 'Pending Review', 10 => 'Draft', 31 => 'Published'], null, ['class' => '', 'id' => 'post_status']) }}
                                 </div>
                              </div>
                              <div class="col-md-12">
                                 <a href="#" class="cancel-post-status badge badge-danger">close</a>
                              </div>
                           </div>
                        </div>
                        <div class="mt-1 clearfix">
                           <i class="fa fa-eye" aria-hidden="true"></i>
                           <span class="m-l-5">Visibility: <b>{!! ucfirst($page->visibility) !!}</b>  <a href="#" id="show_visibility">Edit</a></span>
                        </div>
                        <div id="post-visibility-select" class="post-visibility-select" style="display: none;">
                           <input type="radio" name="visibility" value="public" checked="checked">
                           <label for="visibility-radio-public" class="selectit">Public</label><br>
                           <input type="radio" name="visibility" value="password">
                           <label for="visibility-radio-password" class="selectit">Password protected</label><br>
                           <span id="password-span" style="display: none;">
                              <label for="post_password">Password:</label>
                              <input type="text" name="post_password" id="post_password" value="" maxlength="255"><br>
                           </span>
                           <input type="radio" name="visibility" id="visibility-radio-private" value="private">
                           <label>Private</label>
                           <br>
                           <p>
                              <a href="#" class="badge badge-danger" id="cancel-post-visibility">close</a>
                           </p>
                        </div>
                        <p class="mt-1"><i class="fa fa-calendar" aria-hidden="true"></i>
                           <span class="m-l-5">Publish <b>@if($page->publish_time == "") immediately @else {!! date('M jS, Y', strtotime($page->publish_time)) !!} @ {!! date('g:i a', strtotime($page->publish_time)) !!} @endif</b>
                              <a href="#" id="publish_time_show">Edit</a>
                           </span>
                        </p>
                        <div class="publish-calender" style="display: none">
                           <input type="datetime-local" name="publish_time" value="{!! $page->publish_time !!}" class="form-control m-b-10">
                           <a href="#" class="badge badge-danger" id="publish_time_close">close</a>
                        </div>
                        <hr>
                        <button type="submit" class="btn btn-success btm-sm btn-block"><i class="far fa-save"></i> Update page</button>
                     </div>
                  </div>
               </div>
            </div>

            <div class="card">
               <div class="card-body">
                  <div class="form-group">
                     <label for="">Parent</label>
                     <select class="form-control" name="parent">
                        @if(CMS::check_if_main_page($page->id) > 0 )
                           <option value="0" class="selected_field">No Parent</option>
                        @else
                           @if($page->parentID == 0)
                              <option value="0" class="selected_field">No Parent</option>
                           @elseif($page->parentID != 0)
                              <option value="{!! $page->parentID !!}" class="selected_field"> {!! CMS::get_page_info($page->parentID)->title !!}</option>
                           @endif
                        @endif
                        @foreach($parents as $parent)
                           <option value="{!! $parent->id !!}" style="color:rgb(4, 97, 4)">**{!! $parent->title !!}</option>
                           @foreach(CMS::get_child_pages($parent->id) as $child)
                              <option value="{!! $child->id !!}" style="color:rgb(12, 12, 104)"> **** {!! $child->title !!}</option>
                              @foreach(CMS::get_child_pages($child->id) as $second_born)
                                 <option value="{!! $second_born->id !!}" style="color:rgb(187, 124, 7)"> ****** {!! $second_born->title !!}</option>
                                 @foreach(CMS::get_child_pages($second_born->id) as $third_born)
                                 <option value="{!! $third_born->id !!}" style="color:red"> ********** {!! $third_born->title !!}</option>
                                 @endforeach
                              @endforeach
                           @endforeach
                        @endforeach
                        <option value="0" class="selected_field" style="color:red">Remove Parent</option>
                     </select>
                  </div>
               </div>
            </div>

            <div class="card">
               <div class="card-body">
                  <div class="form-group">
                     <label for="">Page Template</label>
                     <select class="form-control" name="template">
                        @if($page->template == 0)
                           <option value="">Choose Template</option>
                        @elseif($page->template != 0)
                           <option value="{!! $page->template !!}" class="selected_field">{!! App\Models\cms\pages\template::where('id',$page->template)->first()->blade_name !!}</option>
                        @endif
                        @foreach ($templates as $template)
                           <option value="{!! $template->id !!}">{!! $template->blade_name !!}</option>
                        @endforeach
                     </select>
                  </div>
                  <hr>
                  <button type="button" class="btn btn-info btn-sm btn-block" data-toggle="modal" data-target="#template">Create Template</button>
               </div>
            </div>

            <div class="card">
               <div class="card-header">
                  <h6 class="panel-title">Featured Image</h6>
               </div>
               <div class="card-body">
                  <div class="form-group">
                     @if($page->thumbnail == "")

                     @else
                        <img src="{!! asset('storage/media/images/'.$page->thumbnail) !!}" alt="{!! $page->title !!}" width="100%" class="mb-3">
                     @endif
                     <a href="#" id="set-post-thumbnail">Set featured image</a>
                     <input type="file" name="thumbnail" id="thumbnail" class="file" style="display: none">
                  </div>
               </div>
            </div>
         </div>
         <!-- end panel -->
      </div>
   {!! Form::close() !!}
   <div class="modal fade" id="custom" tabindex="-1" role="dialog" aria-hidden="true">
      <div class="modal-dialog">
         <div class="modal-content">
            <div class="color-line"></div>
            <div class="modal-header text-center">
               <h4 class="modal-title">Custom Page Field</h4>
            </div>
            <form class="form" action="{!! route('custom.page.field') !!}" method="post" role="form" autocomplete="off">
               <div class="modal-body">
                  <div class="form-group" id="main">
                     <label for="title">Custom Fields</label>
                     <select name="custom_title" class="form-control">
                        <option value="">Choose Custom Field</option>
                        @foreach ($customfields as $custom)
                           <option value="{!! $custom->title !!}">{!! $custom->title !!}</option>
                        @endforeach
                     </select>
                     <input type="hidden" name="pageID" id="" value="{!! $page->id !!}" required>
                     {!! csrf_field() !!}
                  </div>
                  <div class="form-group">
                     <label for="title">Field Type</label>
                     <select name="type" class="form-control">
                        <option value="plain">Plain</option>
                        <option value="editor">Text Editer</option>
                     </select>
                  </div>
                  <b id="new-field-text"><i><a href="#" class="flot-right text-primary" id="new-field">New Field</a></i></b>
                  <b id="close-field" style="display: none;"><i><a href="#" class="pull-right text-danger" id="close-field-text">Close Field</a></i></b>
                  <div class="form-group" id="text-field" style="display: none;">
                     <label for="title">Title</label>
                     <input class="form-control" name="typed_title" placeholder="Field Title">
                  </div>
               </div>
               <div class="modal-footer">
                  <button type="button" class="btn btn-sm btn-danger" data-dismiss="modal">Close</button>
                  <button type="submit" class="btn btn-sm btn-success">Add field</button>
               </div>
            </form>
         </div>
      </div>
   </div>
   <div class="modal fade" id="template" tabindex="-1" role="dialog" aria-hidden="true">
      <div class="modal-dialog">
         <div class="modal-content">
            <div class="color-line"></div>
            <div class="modal-header text-center">
               <h4 class="modal-title">Create Template.</h4>
            </div>
            <form class="form" action="{!! route('post.page.template') !!}" method="post" role="form">
               <div class="modal-body">
                  <div class="form-group">
                     <label for="title">Title</label>
                     <input class="form-control" name="blade_name" placeholder="Template blade name" required>
                     {!! csrf_field() !!}
                  </div>
               </div>
               <div class="modal-footer">
                  <button type="button" class="btn btn-sm btn-danger" data-dismiss="modal">Close</button>
                  <button type="submit" class="btn btn-sm btn-success">Add template</button>
               </div>
            </form>
         </div>
      </div>
   </div>
   <!-- delete field modal-alert -->
   <div class="modal fade bd-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
      <div class="modal-dialog modal-lg">
         <div class="modal-content">
            <div style="height: 600px;">
               <div id="fm"></div>
            </div>
         </div>
      </div>
    </div>
   @foreach($fields as $field)
      <div class="modal fade" id="field-{!! $field->id !!}">
         <div class="modal-dialog">
            <div class="modal-content">
               <div class="modal-header">
                  <h4 class="modal-title">Delete Field</h4>
                  <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
               </div>
               <div class="modal-body text-center">
                  <h3>Are you sure?</h3>
                  <p>You will not be able to recover this Data</p>
               </div>
               <div class="modal-footer">
                  <a href="javascript:;" class="btn btn-success pull-left" data-dismiss="modal">Close</a>
                  <a href="{!! route('custom.field.delete',$field->id) !!}" class="btn btn-danger flaot-right">Delete</a>
               </div>
            </div>
         </div>
      </div>
   @endforeach
@endsection
@section('scripts')
   <script>
      $(document).ready(function(){
         $("#new-field").click(function(){
            $("#text-field").show();
            $("#close-field").show();
            $("#new-field-text").hide();
            $("#main").hide();
         });

         $("#close-field-text").click(function(){
            $("#text-field").hide();
            $("#close-field").hide();
            $("#new-field-text").show();
            $("#main").show();
         });

         $("#publish_time_close").click(function(){
            $(".publish-calender").hide();
         });

         $("#publish_time_show").click(function(){
            $(".publish-calender").show();
         });

         $("#show_visibility").click(function () {
            $(".post-visibility-select").show();
         });

         $('#cancel-post-visibility').click(function (){
            $(".post-visibility-select").hide();
         });

         $("#show_status").click(function(){
            $("#post-status-select").show();
         });

         $(".cancel-post-status").click(function(){
            $("#post-status-select").hide();
         });

         $("#set-post-thumbnail").click(function() {
            $("input[id='thumbnail']").click();
         });
      });
   </script>
@endsection
