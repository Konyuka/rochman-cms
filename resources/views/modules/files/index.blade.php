@extends('layouts.app')
@section('title','File Manager | LimitlessCMS')
@section('stylesheets')
   <link rel="stylesheet" href="{!! url('/') !!}/public/vendor/file-manager/css/file-manager.css">
@endsection
@section('breadcrumb')
   <div class="content-header row">
      <div class="content-header-left col-md-6 col-12 mb-1 breadcrumb-new">
         <h3 class="content-header-title mb-0 d-inline-block"><i class="fal fa-photo-video"></i> Media</h3>
         <div class="row breadcrumbs-top d-inline-block">
            <div class="breadcrumb-wrapper col-12">
               <ol class="breadcrumb">
                  <li class="breadcrumb-item"><a href="{!! url('/') !!}">Home</a></li>
                  <li class="breadcrumb-item"><a href="{!! route('file.manager') !!}">Media</a></li>
                  <li class="breadcrumb-item active">All</li>
               </ol>
            </div>
         </div>
      </div>
      <div class="content-header-right col-md-6 col-12"></div>
   </div>
@endsection
@section('content')
   <div class="element-wrapper">
      <h6 class="element-header">File Manager</h6>
      <div style="height: 600px;">
         <div id="fm"></div>
     </div>
   </div>
@endsection
@section('scripts')
   <script src="{!! url('/') !!}/public/vendor/file-manager/js/file-manager.js"></script>
@endsection
