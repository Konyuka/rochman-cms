@extends('layouts.app')
@section('title','Post | Create | Tech Duka CMS')
@section('breadcrumb')
   <div class="content-header row">
      <div class="content-header-left col-md-6 col-12 mb-2 breadcrumb-new">
         <h3 class="content-header-title mb-0 d-inline-block"><i class="fal fa-copy"></i> Posts</h3>
         <div class="row breadcrumbs-top d-inline-block">
            <div class="breadcrumb-wrapper col-12">
               <ol class="breadcrumb">
                  <li class="breadcrumb-item"><a href="{!! url('/') !!}">Home</a></li>
                  <li class="breadcrumb-item"><a href="{!! route('posts.index') !!}">Posts</a></li>
                  <li class="breadcrumb-item active">Create</li>
               </ol>
            </div>
         </div>
      </div>
      <div class="content-header-right col-md-6 col-12"></div>
   </div>
@endsection
@section('stylesheets')
   <style>
      .panel-footer a{
         text-decoration: underline;
         color: #0f74a8;
      }
      .publishing-actions a, .feat-image a{
         color: #0f74a8;
         text-decoration: underline;
      }
      .btn-default {
         background-color: #f7f7f7;
         border-bottom: 2px solid #d4d4d4;
      }
      .parent {
         font-weight: bold;
         font-size: 14px;
      }
      .child{
         color:#167ac6;
      }
      .selected_field{
         color:green;
      }
   </style>
@endsection
@section('content')
   @include('partials._messages')
   <form action="{!! route('posts.store') !!}" method="post" enctype="multipart/form-data">
      <div class="row">
         @csrf()            
         <div class="col-lg-9">
            <div class="card">
               <div class="card-body">
                  <div class="form-group">
                     <label for="">Post Title</label>
                     {!! Form::text('title', null, array('class' => 'form-control', 'placeholder' => 'Post Title','required' => '','maxlength' => '255' )) !!}
                  </div>

                  <div class="form-group">
                     <label for="">Post</label>
                     {!! Form::textarea('content',null,['class'=>'my-editor form-control', 'placeholder'=>'content']) !!}
                  </div>
               </div>
            </div>
            <div class="card">
               <div class="card-body">
                  <div class="form-group">
                     <label for="">Post Excerpt</label>
                     {!! Form::textarea('synopsis',null,['class'=>'form-control', 'rows' =>9, 'placeholder'=>'synopsis' ]) !!}
                  </div>
               </div>
            </div>
            <div class="card">
               <div class="card-body">
                  <div class="form-group form-group-default required">
                     {!! Form::label('title', 'Post keywords (SEO)', array('class'=>'control-label')) !!}
                     {!! Form::text('meta_tags', null, array('class' => 'form-control', 'placeholder' => 'Post Meta tags')) !!}
                  </div>
                  <div class="form-group">
                     {!! Form::label('title', 'Meta description', array('class'=>'control-label')) !!}
                     {!! Form::textarea('meta_description',null,['class'=>'form-control', 'rows' =>9, 'placeholder'=>'Meta description' ]) !!}
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
                           <span>Status: <a href="#" id="show_status">Publish</a></span>                       
                           <div id="post-status-select" class="clearfix" style="display: none;">
                              <div class="col-md-6 ">
                                 <div class="select-status">
                                    {{ Form::select('status',[7 => 'Pending Review', 10 => 'Draft', 31 => 'Published'], null, ['class' => '', 'id' => 'post_status']) }}
                                 </div>
                              </div>
                              <div class="col-md-6">
                                 <div class="pull-left">
                                    <a href="#" class="text-danger cancel-post-status">close</a>
                                 </div>
                              </div>
                           </div>
                        </div>
                        <div class="mt-1">
                           <i class="fa fa-eye" aria-hidden="true"></i>
                           <span>Visibility: <a href="#" id="show_visibility">Edit</a></span>
                           <div class="post-visibility-select" style="display: none;">
                              <input type="radio" name="visibility" value="public" checked="checked">
                              <label for="visibility-radio-public" class="selectit">Public</label><br>
                              <input type="radio" name="visibility" id="visibility-radio-password" value="password">
                              <label for="visibility-radio-password" class="selectit">Password protected</label><br>
                              <span id="password-span" style="display: none;">
                                    <label for="post_password">Password:</label>
                                    <input type="text" name="post_password" id="post_password" value="" maxlength="255"><br>
                                 </span>
                              <input type="radio" name="visibility" id="visibility-radio-private" value="private">
                              <label for="visibility-radio-private" class="selectit">Private</label>
                              <br>
                              <p>
                                 <a href="#" class="" id="cancel-post-visibility">close</a>
                              </p>
                           </div>
                        </div>
                        <div class="mt-1">
                           <i class="fa fa-calendar" aria-hidden="true"></i>
                           <span class="m-l-5">
                              Publish <b></b>
                              <a href="#" id="publish_time_show">Edit</a>
                           </span>                       
                           <div class="publish-calender" style="display: none">
                              <input type="datetime-local" name="publish_time" class="form-control m-b-10">
                              <a href="#" class="text-danger" id="publish_time_close">close</a>
                           </div>
                        </div>
                        <hr>
                        <button type="submit" class="btn btn-success btn-sm submit"><i class="fas fa-save"></i> Publish post</button>
                        <img src="{!! asset('assets/images/loader.gif') !!}" alt="" class="submit-load" style="width: 30%">
                     </div>
                  </div>
               </div>
            </div>
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col-md-12">
                        <h4>Format</h4>
                        <hr>
                        @foreach ($types as $format)
                           <div class="radio">
                              <input type="radio" name="blog_type" id="{!! $format->id !!}" value="{!! $format->id !!}">
                              <label for="visibility-radio-private" class="selectit">{!! $format->name !!}</label>
                           </div>
                        @endforeach
                     </div>
                  </div>
               </div>
            </div>
            <div class="card">
               <div class="card-body">                  
                  <div class="row">
                     <div class="col-md-12">
                        <h4>Category</h4>
                        <hr>
                        {{ Form::select('category[]',$category,null,['class' => 'form-control select2-multi', 'multiple' => 'multiple']) }}
                     </div>
                  </div>
               </div>
            </div>
            <div class="card">
               <div class="card-body">
                  <div class="row">                     
                     <div class="col-md-12">
                        <h4>Tags</h4>
                        <hr>
                        {{ Form::select('tags[]',$tags,null,['class' => 'form-control tag', 'multiple' => 'multiple']) }}
                     </div>
                  </div>
               </div>
            </div>
            <div class="card">
               <div class="card-body">
                  <div class="row">                     
                     <div class="col-md-12">
                        <h4>Feature Post</h4>
                        <hr>
                        {{ Form::select('featured',['' => 'Choose if featured', '1' => 'Yes', '0' => 'No'], null, ['class' => 'form-control']) }}
                     </div>
                  </div>
               </div>
            </div>
            <div class="card">
               <div class="card-body">
                  <div class="row">                     
                     <div class="col-md-12">
                        <h4>Comment Section</h4>
                        <hr>
                        {{ Form::select('comment',[''=>'Choose Comment','Yes' => 'Yes', 'No' => 'No'], null, ['class' => 'form-control']) }}
                     </div>
                  </div>
               </div>
            </div>
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col-md-12">
                        <p class="card-title">Feature Image</p>
                        <hr>
                        <a href="#" id="set-post-thumbnail" class="m-t-20">Set featured image</a>
                        <input type="file" name="thumbnail" id="thumbnail" style="display: none">
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </form>
</div>
@endsection
@section('scripts')
   <script type="text/javascript">
       $(".select2-multi").select2();
   </script>

   <script type="text/javascript">
       $(".tag").select2();
   </script>
   <script type="text/javascript">
       $(document).ready(function(){
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
