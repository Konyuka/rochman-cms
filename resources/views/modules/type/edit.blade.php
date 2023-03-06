@extends('layouts.backend')
{{-- page header --}}
@section('title','Edit Post Types')

@section('sidebar') 
    @include('backend.cms.partials._menu')
@endsection


{{-- content section --}}
@section('content')
   <div id="content" class="content"> 
      <!-- begin breadcrumb -->
      <ol class="breadcrumb pull-right">
         <li class="breadcrumb-item"><a href="javascript:;">Content Management</a></li>
         <li class="breadcrumb-item"><a href="{!! route('posts.index') !!}">Posts</a></li>
         <li class="breadcrumb-item"><a href="{!! route('post.type.index') !!}">Type</a></li>
         <li class="breadcrumb-item active">Update Posts Type</li>
      </ol>
      <!-- end breadcrumb -->
      <h1 class="page-header">Update Posts Type</h1>
      @include('partials.backend._messages')
      <div class="row">
         <div class="col-md-6">
            <div class="panel panel-inverse">
               <div class="panel-heading">
                  <div class="panel-heading-btn">
                     <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-default" data-click="panel-expand"><i class="fa fa-expand"></i></a>
                     <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-success" data-click="panel-reload"><i class="fa fa-redo"></i></a>
                     <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-warning" data-click="panel-collapse"><i class="fa fa-minus"></i></a>
                     <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-danger" data-click="panel-remove"><i class="fa fa-times"></i></a>
                  </div>
                  <h4 class="panel-title">Post Type Detailss</h4>
               </div>
               <div class="panel-body">
                  <table id="data-table-default" class="table table-striped table-bordered">
                     <thead>
                        <tr>
                           <th width="1%"><label><input type="checkbox" class="i-checks"></label></th>
                           <th width="5%">Symbol</th>
                           <th> title</th>
                           <th>Status</th>
                           <th width="30%">Actions</th>
                        </tr>
                     </thead>
                     <tbody>
                        @foreach ($types as $type)
                           <tr>
                              <td><label><input type="checkbox" class="i-checks"></label></td>
                              <td><span class=" fa-2x">{!! $type->symbol !!}</span></td>
                              <td><a href="#">{{ $type->name }}</a></td>
                              <td>
                                 @if($type->status == 0 )
                                    <span class="label label-danger">In Active</span>
                                 @else($blogtype->status == 1)
                                    <span class="label label-success">Active</span>
                                 @endif
                              </td>
                              <td class="text-center">
                                 <a href="{{ route('post.type.edit', $type->id) }}" class="btn btn-info">Edit</a>
                                 <a href="{{ route('post.type.destroy', $type->id) }}" class="btn btn-danger">Delete</a>
                              </td>
                           </tr>
                        @endforeach
                     </tbody>
                  </table>
               </div>
            </div>
         </div>
         <div class="col-md-6">
            <div class="panel panel-inverse">
               <div class="panel-heading">
                  <div class="panel-heading-btn">
                     <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-default" data-click="panel-expand"><i class="fa fa-expand"></i></a>
                     <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-success" data-click="panel-reload"><i class="fa fa-redo"></i></a>
                     <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-warning" data-click="panel-collapse"><i class="fa fa-minus"></i></a>
                     <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-danger" data-click="panel-remove"><i class="fa fa-times"></i></a>
                  </div>
                  <h4 class="panel-title">Post Type Detailss</h4>
               </div>
               <div class="panel-body">
                  {!! Form::model($blogtype, ['route' => ['post.type.update',$blogtype->id], 'method'=>'post','data-parsley-validate' => '']) !!}
                  <div class="form-group">
                     {!! Form::label('title', 'Blog type Title', array('class'=>'control-label' )) !!}
                     {!! Form::text('name', null, array('class' => 'form-control', 'placeholder' => 'Blog type Title','required' => '','maxlength' => '255' )) !!}
                  </div>
                  <div class="form-group form-group-material">
                     <label>Blog Symbol</label>
                     {!! Form::label('title', 'Type Symbol', array('class'=>'control-label')) !!}
                     {!! Form::text('symbol', null, array('class' => 'form-control', 'placeholder' => 'Blog Symbol','required' => '')) !!}
                  </div>
                  <div class="form-group">
                     {!! Form::label('title', 'Status', array('class'=>'control-label')) !!}
                     {{ Form::select('status', ['' => 'choose status','1' => 'Active','0' => 'In-Active'], null, ['class' => 'form-control','required' => '']) }}
                  </div>
                  <center>{!! Form::submit('Update Type',array('class' =>'btn btn-info')) !!}</center>
                  {!! Form::close() !!}
               </div>
            </div>
         </div>
      </div>
   </div>
@endsection