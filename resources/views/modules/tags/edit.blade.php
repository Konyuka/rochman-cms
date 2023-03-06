@extends('layouts.app')
{{-- page header --}}
@section('title','Post | Edit | LimitlessERP')
@section('breadcrumb')
   <div class="content-header row">
      <div class="content-header-left col-md-6 col-12 mb-2 breadcrumb-new">
         <h3 class="content-header-title mb-0 d-inline-block"><i class="fal fa-tag"></i> Post Tags</h3>
         <div class="row breadcrumbs-top d-inline-block">
            <div class="breadcrumb-wrapper col-12">
               <ol class="breadcrumb">
                  <li class="breadcrumb-item"><a href="{!! url('/') !!}">Home</a></li>
                  <li class="breadcrumb-item"><a href="{!! route('pages.index') !!}">Post</a></li>
                  <li class="breadcrumb-item"><a href="{!! route('post.tags.index') !!}">Tags</a></li>
                  <li class="breadcrumb-item active">Edit</li>
               </ol>
            </div>
         </div>
      </div>
      <div class="content-header-right col-md-6 col-12"></div>
   </div>
@endsection
{{-- content section --}}
@section('content')
   @include('partials._messages')
   <div class="row">         
      <div class="col-md-6">
         <div class="card">
            <div class="card-body">
               <h4>Post Tags Details</h4>
               <hr>
               <table class="table table-striped table-bordered zero-configuration">
                  <thead>
                     <tr>
                        <th width="1%">#</th>
                        <th>title</th>
                        <th width="8%">Featured</th>
                        <th width="8%">Status</th>
                        <th width="17%">Actions</th>
                     </tr>
                  </thead>
                  <tbody>
                     @foreach ($tags as $tag)
                        <tr>
                           <td>{!! $count++ !!}</td>
                           <td><a href="#">{{ $tag->title }}</a></td>
                           <td>
                              <span class="label label-primary">{!! $tag->feature !!}</span>
                           </td>
                           <td>
                              <span class="badge {{ $tag->name }}">{{ $tag->name }}</span>
                           </td>
                           <td>
                              <a href="{{ route('post.tags.edit', $tag->tagID) }}" class="btn btn-sm btn-info"><i class="fas fa-edit"></i></a>
                              <a href="{{ route('post.tags.destroy', $tag->tagID) }}" class="btn btn-sm btn-danger"><i class="fas fa-trash"></i></a>
                           </td>
                        </tr>
                     @endforeach
                  </tbody>
               </table>
            </div>
         </div>
      </div>
      <div class="col-md-6">
         <div class="card">
            <div class="card-body">
               <h4>Edit Tag</h4>
               <hr>
               {!! Form::model($edit, ['route' => ['post.tags.update',$edit->id], 'method'=>'post','data-parsley-validate' => '']) !!}
                  <div class="panel-body">
                     <div class="form-group">
                        {!! Form::label('title', 'Title', array('class'=>'control-label' )) !!}
                        {!! Form::text('name', null, array('class' => 'form-control', 'placeholder' => 'Title','required' => '','maxlength' => '255' )) !!}
                     </div>
                     <div class="form-group">
                        {!! Form::label('title', 'Status', array('class'=>'control-label')) !!}
                        {{ Form::select('status', ['' => 'Choose Status','15' => 'Active','7' => 'Pending'], null, ['class' => 'form-control','required' => '']) }}
                     </div>
                     <div class="form-group">
                        {!! Form::label('title', 'feature', array('class'=>'control-label')) !!}
                        {{ Form::select('feature', ['' => 'Choose if featured','Yes' => 'Yes','No' => 'No'], null, ['class' => 'form-control']) }}
                     </div>
                     <div class="form-group">
                        <center>
                           <button type="submit" class="btn btn-success btn-sm submit"><i class="fal fa-save"></i> Update tag</button>
                           <img src="{!! url('/') !!}/public/images/loader.gif" alt="" class="submit-load" style="width:10%">
                        </center>
                     </div>
                  </div>
               {!! Form::close() !!}
            </div>
         </div>
      </div>
   </div>
@endsection
{{-- page scripts --}}
@section('script')

@endsection
