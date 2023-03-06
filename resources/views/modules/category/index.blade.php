@extends('layouts.app')
@section('title','Post | Category | LimitlessCMS')
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
<div class="card">
   <div class="card-body">
      @include('partials._messages')
      <table class="table table-striped table-bordered zero-configuration">
         <thead>
            <tr>
               <th width="1%">#</th>
               <th width="20%">Title</th>
               <th>Description</th>
               <th width="15%">Parent</th>
               <th width="8%">Status</th>
               <th width="11%">Date</th>
               <th width="8%">Action</th>
            </tr>
         </thead>
         <tbody>
            @foreach($category as $cat)
               <tr>
                  <td>{!! $count++ !!}</td>
                  <td>{!! $cat->category_name !!}</td>
                  <td>{!! $cat->description !!}</td>
                  <td>
                     <b>Main Category</b>
                  </td>
                  <td>
                     <span class="badge {!! $cat->status !!}">{!! $cat->status !!}</span>
                  </td>
                  <td>{!! date('M d, Y', strtotime($cat->date)) !!}</td>
                  <td>
                     <a href="{!! route('post.category.edit',$cat->categoryID) !!}" class="btn btn-sm btn-info"><i class="fas fa-edit"></i></a>
                     <a href="{!! route('post.category.destroy',$cat->categoryID) !!}" class="btn btn-sm btn-danger delete"><i class="fas fa-trash"></i></a>
                  </td>
               </tr>
            @endforeach
         </tbody>
      </table>
   </div>
</div>
@endsection
{{-- page scripts --}}
@section('script')

@endsection
