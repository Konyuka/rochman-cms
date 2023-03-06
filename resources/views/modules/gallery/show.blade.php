@extends('layouts.app')
@section('title','Gallery | Images | LimitlessCMS')
@section('breadcrumb')
   <div class="content-header row">
      <div class="content-header-left col-md-12 col-12 mb-1 breadcrumb-new">
         <h3 class="content-header-title mb-0 d-inline-block"><i class="fal fa-photo-video"></i> Gallery | {!! $gallery->title !!}</h3>
         <div class="row breadcrumbs-top d-inline-block">
            <div class="breadcrumb-wrapper col-12">
               <ol class="breadcrumb">
                  <li class="breadcrumb-item"><a href="{!! url('/') !!}">Home</a></li>
                  <li class="breadcrumb-item"><a href="{!! route('gallery.index') !!}">Gallery</a></li>
                  <li class="breadcrumb-item"><a href="{!! route('gallery.edit',$gallery->id) !!}">{!! $gallery->title !!}</a></li>
                  <li class="breadcrumb-item active">Images</li>
               </ol>
            </div>
         </div>
      </div>
   </div>
@endsection
@section('content')
   @include('partials._messages')
   <div class="col-md-12 mb-1">
      <div class="row">
         <a href="#" class="btn btn-sm btn-warning" data-toggle="modal" data-target=".bd-example-modal-lg"><i class="fal fa-plus-circle"></i> Add Images</a>
      </div>
   </div>
   <!-- Grid row -->
   <div class="gallery mb-3" id="gallery">
      @foreach ($images as $image)
         <!-- Grid column -->
         <div class="mb-1 pics animation all 2">
            <a href="{!! URL::asset('media/gallery/'.$image->file_name)!!}" data-lightbox="roadtrip" data-title="{!! $image->name !!}">
               <img class="img-fluid" src="{!! URL::asset('media/gallery/'.$image->file_name)!!}">
            </a>
            <a href="{!! route('gallery.image.delete',[$gallery->id,$image->id]) !!}" class=" mt-1 btn btn-sm btn-danger">Delete</a>
         </div>
         <!-- Grid column -->
      @endforeach
   </div>
   <!-- Grid row -->
   <div class="modal fade bd-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
      <div class="modal-dialog modal-lg">
         <div class="modal-content">
            <div class="modal-body">
               <div class="row">
                  <div class="col-md-12">
                     <form action="{!! route('gallery.images.upload',$gallery->id) !!}" class="dropzone" method="post">
                        @csrf()
                        <input type="hidden" value="{!! $gallery->id !!}" name="galleryID">
                     </form>
                     <hr>
                  </div>
                  <div class="col-md-3">
                     <a onClick="window.location.reload()" href="#" class="btn btn-success btn-sm" onClick="refreshPage()">Save Images</a>
                  </div>
               </div>
            </div>
         </div>
      </div>
    </div>
@endsection
@section('scripts')
   <link href="{!! asset('assets/vendors/js/lightbox/dist/css/lightbox.css') !!}" rel="stylesheet" />
   <script src="{!! asset('assets/vendors/js/lightbox/dist/js/lightbox.js') !!}"></script>

   {{-- dropzone --}}
   <link rel="stylesheet" type="text/css" href="{!! asset('assets/vendors/css/file-uploaders/dropzone.min.css') !!}">
   <script src="{!! asset('assets/vendors/js/extensions/dropzone.min.js') !!}"></script>
   <style>
      Dropzone.options.addimages = {
         MaxFilesize:0.7,
         acceptedFiles: ".jpeg,.jpg,.png,.gif"
         parallelUploads: 2,
         thumbnailHeight: 120,
         thumbnailWidth: 120,
         thumbnail: function(file, dataUrl) {
            if (file.previewElement) {
            file.previewElement.classList.remove("dz-file-preview");
            var images = file.previewElement.querySelectorAll("[data-dz-thumbnail]");
            for (var i = 0; i < images.length; i++) {
               var thumbnailElement = images[i];
               thumbnailElement.alt = file.name;
               thumbnailElement.src = dataUrl;
            }
            setTimeout(function() { file.previewElement.classList.add("dz-image-preview"); }, 1);
            }
         }
      };
   </style>


   <script>
      $(function() {
         var selectedClass = "";
         $(".filter").click(function(){
            selectedClass = $(this).attr("data-rel");
            $("#gallery").fadeTo(100, 0.1);
            $("#gallery div").not("."+selectedClass).fadeOut().removeClass('animation');
            setTimeout(function() {
            $("."+selectedClass).fadeIn().addClass('animation');
            $("#gallery").fadeTo(300, 1);
            }, 300);
         });
      });
   </script>
@endsection
