@extends('layouts.app')
@section('title','Posts | LimitlessCMS')
@section('breadcrumb')
   <div class="content-header row">
      <div class="content-header-left col-md-6 col-12 mb-2 breadcrumb-new">
         <h3 class="content-header-title mb-0 d-inline-block"><i class="fal fa-copy"></i> Posts</h3>
         <div class="row breadcrumbs-top d-inline-block">
            <div class="breadcrumb-wrapper col-12">
               <ol class="breadcrumb">
                  <li class="breadcrumb-item"><a href="{!! url('/') !!}">Home</a></li>
                  <li class="breadcrumb-item"><a href="{!! route('posts.index') !!}">Posts</a></li>
                  <li class="breadcrumb-item active">List</li>
               </ol>
            </div>
         </div>
      </div>
      <div class="content-header-right col-md-6 col-12"></div>
   </div>
@endsection
@section('content')
   <div class="card">
      <div class="card-body">
         @include('partials._messages')
         <table class="table table-striped table-bordered zero-configuration">
            <thead>
               <tr>
                  <th width="1%">#</th>
                  <th>Title</th>
                  <th width="15%">Author</th>
                  <th width="7%">Visibility</th>
                  <th width="7%">Status</th>
                  <th width="9%">Date</th>
                  <th width="9%">Action</th>
               </tr>
            </thead>
            <tbody>
               @foreach($posts as $post)
                  <tr class="odd gradeA">
                     <td>{!! $count++ !!}</td>
                     <td>{!! $post->title !!}</td>
                     <td>{!! $post->author !!}</td>
                     <td>{!! $post->visibility  !!}</td>
                     <td><span class="badge {!! $post->name !!}">{!! $post->name !!}</span></td>
                     <td>
                        {!! date('d M, Y',strtotime($post->postDate)) !!}
                     </td>
                     <td>
                        <a href="{!! route('posts.edit', $post->postID) !!}" class="btn btn-sm btn-primary"><i class="far fa-edit" aria-hidden="true"></i></a>
                        <a href="{!! route('posts.delete', $post->postID) !!}" class="btn btn-sm btn-danger"><i class="fas fa-trash-alt" aria-hidden="true"></i></a>
                     </td>
                  </tr>
               @endforeach
            </tbody>
         </table>
      </div>
   </div>
@endsection
