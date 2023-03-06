@extends('layouts.app')
@section('title','Gallery | LimitlessCMS')
@section('breadcrumb')
   <div class="content-header row">
      <div class="content-header-left col-md-6 col-12 mb-1 breadcrumb-new">
         <h3 class="content-header-title mb-0 d-inline-block"><i class="fal fa-photo-video"></i> Gallery</h3>
         <div class="row breadcrumbs-top d-inline-block">
            <div class="breadcrumb-wrapper col-12">
               <ol class="breadcrumb">
                  <li class="breadcrumb-item"><a href="{!! url('/') !!}">Home</a></li>
                  <li class="breadcrumb-item"><a href="{!! route('gallery.index') !!}">Gallery</a></li>
                  <li class="breadcrumb-item active">All</li>
               </ol>
            </div>
         </div>
      </div>
      <div class="content-header-right col-md-6 col-12"></div>
   </div>
@endsection
@section('content')
   @include('partials._messages')
   <div class="col-md-12 mb-1">
      <div class="row">
         <a href="{!! route('gallery.create') !!}" class="btn btn-sm btn-warning"><i class="fal fa-plus-circle"></i> Add Gallery</a>
      </div>
   </div>
   <div class="card">
      <div class="card-body">
         <table class="table table-striped table-bordered zero-configuration">
            <thead>
               <tr>
                  <th width="1%">#</th>
                  <th width="15%"></th>
                  <th>Title</th>
                  <th width="10%">Images</th>
                  <th width="10%">Status</th>
                  <th width="10%">Date Create</th>
                  <th width="12%">Actions</th>
               </tr>
            </thead>
            <tbody>
               @foreach($galleries as $gallery)
                  <tr class="odd gradeX">
                     <td width="1%">{!! $count++ !!}</td>
                     <td width="5%"><img src="{!! asset('media/gallery/'.$gallery->cover_image)!!}" class="img-responsive" style="width:100%"/></td>
                     <td>{!! $gallery->title !!}</td>

                     <td>{!! CMS::count_gallery_images($gallery->galleryID) !!}</td>
                     <td>
                        <span class="badge badge-{!! $gallery->name !!}">{!! $gallery->name !!}</span>
                     </td>
                     <td>{{ date('j M Y',strtotime($gallery->updated_at)) }}</td>
                     <td>
                        <a href="{!! route('gallery.show',$gallery->galleryID) !!}" class="btn btn-sm btn-warning" title="add images"><i class="fal fa-images" aria-hidden="true"></i></a>
                        <a href="{!! route('gallery.edit',$gallery->galleryID) !!}" class="btn btn-sm btn-info"><i class="far fa-edit" aria-hidden="true"></i></a>
                        <a href="{!! route('gallery.delete',$gallery->galleryID) !!}" class="btn btn-sm btn-danger delete"><i class="far fa-trash-alt" aria-hidden="true"></i></a>
                     </td>
                  </tr>
               @endforeach
            </tbody>
         </table>
      </div>
   </div>
@endsection
