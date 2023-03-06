@extends('layouts.app')
@section('title','Page List | LimitlessCMS')
@section('breadcrumb')
   <div class="content-header row">
      <div class="content-header-left col-md-6 col-12 mb-2 breadcrumb-new">
         <h3 class="content-header-title mb-0 d-inline-block">Pages</h3>
         <div class="row breadcrumbs-top d-inline-block">
            <div class="breadcrumb-wrapper col-12">
               <ol class="breadcrumb">
                  <li class="breadcrumb-item"><a href="{!! url('/') !!}">Home</a></li>
                  <li class="breadcrumb-item"><a href="{!! route('pages.index') !!}">Pages</a></li>
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
      <table class="table table-striped table-bordered zero-configuration">
         <thead>
            <tr>
               <th width="1%">#</th>
               <th>Title</th>
               <th width="10%">Status</th>
               <th width="12%">Date</th>
               <th width="8%">Action</th>
            </tr>
         </thead>
         <tbody>
            @foreach($pages as $page)
               <tr class="">
                  <td>{!! $count++ !!}</td>
                  <td>
                     <h5>{!! $page->title !!}</h5>
                     @if(CMS::check_if_main_page($page->pageID) != 1)
                        @if(CMS::check_page($page->parentID) == 1)
                           <b>Parent Page :</b> <span class="text-primary">{!! CMS::get_page_info($page->parentID)->title !!}</span>
                        @endif
                     @endif
                  </td>
                  <td>
                     <span class="badge {!! $page->name !!}">{!! $page->name !!}</span>
                  </td>
                  <td>
                     <b>{!! date('d M, Y',strtotime($page->created_at)) !!}</b>
                  </td>
                  <td>
                     <a class="btn btn-primary btn-sm" href="{!! route('pages.edit',$page->pageID) !!}"><i class="far fa-edit"></i></a>
                     <a class="btn btn-danger btn-sm delete" href="{!! route('pages.delete',$page->pageID) !!}"><i class="fas fa-trash"></i></a>
                  </td>
               </tr>
            @endforeach
         </tbody>
      </table>
   </div>
</div>
@endsection
