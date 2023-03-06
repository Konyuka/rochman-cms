@extends('layouts.app')
@section('title','Category | Edit | LimitlessCMS')
@section('breadcrumb')
   <div class="content-header row">
      <div class="content-header-left col-md-6 col-12 mb-2 breadcrumb-new">
         <h3 class="content-header-title mb-0 d-inline-block"><i class="fal fa-folder-tree"></i> Post Category</h3>
         <div class="row breadcrumbs-top d-inline-block">
            <div class="breadcrumb-wrapper col-12">
               <ol class="breadcrumb">
                  <li class="breadcrumb-item"><a href="{!! url('/') !!}">Home</a></li>
                  <li class="breadcrumb-item"><a href="{!! route('pages.index') !!}">Post</a></li>
                  <li class="breadcrumb-item"><a href="{!! route('post.category.index') !!}">Category</a></li>
                  <li class="breadcrumb-item active">List</li>
               </ol>
            </div>
         </div>
      </div>
      <div class="content-header-right col-md-6 col-12"></div>
   </div>
@endsection
@section('content')
   @include('partials._messages')
   <div class="card">
      <div class="card-body">
         {!! Form::model($category, ['route' => ['post.category.update',$category->id], 'method'=>'post','enctype'=>'multipart/form-data']) !!}
            <div class="row">
               <div class="col-md-6">
                  <div class="element-box">
                     <div class="panel-body">
                        <!-- Text inputs -->
                        <div class="form-group form-group-default required">
                           {!! Form::label('title', 'Title', array('class'=>'control-label')) !!}
                           {!! Form::text('name', null, array('class' => 'form-control', 'placeholder' => 'Title','required' => '')) !!}
                        </div>
                        <div class="form-group form-group-default">
                           {!! Form::label('Parent Page','Parent Page', array('class'=>'control-label')) !!}
                           <select class="form-control multiselect" name="parent" required>
                              @if($category->parentID == 0)
                                 <option value="0">Choose parent category if any</option>
                              @else
                                 <option value="{!! $category->parentID !!}">{!! $parentCategory->name !!}</option>
                              @endif
                              @foreach($parents as $paro)
                                 <option value="{!! $paro->id !!}">{!! $paro->name !!}</option>
                              @endforeach
                           </select>
                        </div>
                        <div class="form-group form-group-default">
                           {!! Form::label('title', 'Category Image', array('class'=>'control-label')) !!}
                           {!! Form::file('image',array('class' => 'form-control','files'=> true)) !!}
                        </div>
                        <div class="form-group form-group-default required">
                           {!! Form::label('title', 'Active Status', array('class'=>'control-label')) !!}
                           {{ Form::select('status',['' =>'Choose Status',15 => 'Active', 7 => 'Pending'], null, ['class' => 'form-control']) }}
                        </div>
                        <!-- /text inputs -->
                     </div>
                  </div>
               </div>
               <div class="col-md-6">
                  <div class="element-box">
                     <div class="panel-body">
                        <!-- Text inputs -->
                        <div class="form-group form-group-default">
                           {!! Form::label('title', 'Blog category meta tags', array('class'=>'control-label')) !!}
                           {!! Form::text('keywords', null, array('class' => 'form-control', 'placeholder' => 'Blog category meta tags')) !!}
                        </div>
                        <div class="form-group">
                           {!! Form::label('title', 'Meta description', array('class'=>'control-label')) !!}
                           {!! Form::textarea('meta_description',null,['class'=>'form-control', 'size' => '5x5', 'placeholder'=>'Meta description','required' => '']) !!}
                        </div>
                        <div class="form-group form-group-default required">
                           {!! Form::label('title', 'Featured Article', array('class'=>'control-label')) !!}
                           {{ Form::select('featured',[''=>'Feature Article','No'=>'No','Yes'=>'Yes'], null, ['class' => 'form-control']) }}
                        </div>
                        <!-- /text inputs -->
                     </div>
                  </div>
               </div>
               <div class="col-md-12">
                  <div class="form-group">
                     {!! Form::label('title', 'Description', array('class'=>'control-label')) !!}
                     {!! Form::textarea('description',null,['class'=>'form-control ckeditor', 'size' => '10x10','placeholder'=>'content']) !!}
                  </div>
                  <center>
                     <button type="submit" name="button" class="btn btn-success submit"><i class="far fa-save"></i> Update Category</button>
                     <img src="{!! url('/') !!}/public/images/loader.gif" alt="" class="submit-load" style="width:10%">
                  </center>
               </div>
            </div>
         {!! Form::close() !!}
      </div>
   </div>
@endsection