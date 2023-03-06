@extends('layouts.app')
@section('title','Gallery | Edit | LimitlessCMS')
@section('breadcrumb')
   <div class="content-header row">
      <div class="content-header-left col-md-6 col-12 mb-1 breadcrumb-new">
         <h3 class="content-header-title mb-0 d-inline-block"><i class="fal fa-photo-video"></i> Edit Gallery</h3>
         <div class="row breadcrumbs-top d-inline-block">
            <div class="breadcrumb-wrapper col-12">
               <ol class="breadcrumb">
                  <li class="breadcrumb-item"><a href="{!! url('/') !!}">Home</a></li>
                  <li class="breadcrumb-item"><a href="{!! route('gallery.index') !!}">Gallery</a></li>
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
   <div class="row">
      <div class="col-md-12">
         <div class="card">
            <div class="card-body">
               {!! Form::model($edit, ['route' => ['gallery.update',$edit->id], 'method'=>'post','enctype'=>'multipart/form-data']) !!}
                  <div class="form-group form-group-default required">
                     {!! Form::label('title', 'Title', array('class'=>'control-label')) !!}
                     {!! Form::text('title', null, array('class' => 'form-control', 'placeholder' => 'Title')) !!}
                  </div>
                  <div class="form-group form-group-default required">
                     {!! Form::label('title','Slide Status', array('class'=>'control-label')) !!}
                     {{ Form::select('status',[''=>'Choose Status',15=>'Active',7=>'Pending'], null, ['class' => 'form-control', 'required' => '']) }}
                  </div>
                  <div class="form-group form-group-default required">
                     <label>Cover Image</label>
                     {!! Form::file('cover_image',array('class' => 'form-control', 'id' => 'thumbnail', 'files'=> true)) !!}
                     <img src="{!!URL::asset('media/gallery/'.$edit->cover_image)!!}" class="img-responsive mt-2" style="width:50%"/>
                  </div>
                  <div class="form-group">
                     <label for="">Details</label>
                     {!! Form::textarea('description',null,['class'=>'ckeditor form-control', 'placeholder'=>'content']) !!}
                  </div>
                  <div class="form-group">
                     <center>
                        <button type="submit" class="btn btn-success submit"><i class="fal fa-save"></i> Updated Gallery</button>
                        <img src="{!! asset('assets/images/loader.gif') !!}" alt="" class="submit-load" style="width: 10%">
                     </center>
                  </div>
               {!! Form::close() !!}
            </div>
         </div>
      </div>
   </div>
@endsection
