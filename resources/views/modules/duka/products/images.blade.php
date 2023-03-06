@extends('layouts.app')
{{-- page header --}}
@section('title','Product Images | LimitlessCMS')
@section('breadcrumb')
   <div class="content-header row">
      <div class="content-header-left col-md-6 col-12 mb-1 breadcrumb-new">
         <h3 class="content-header-title mb-0 d-inline-block"><i class="fal fa-box-full"></i> Duka | {!! $product->product_name !!} | Images</h3>
         <div class="row breadcrumbs-top d-inline-block">
            <div class="breadcrumb-wrapper col-12">
               <ol class="breadcrumb">
                  <li class="breadcrumb-item"><a href="{!! url('/') !!}">Home</a></li>
                  <li class="breadcrumb-item"><a href="{!! route('duka.product.index') !!}">Property</a></li>
                  <li class="breadcrumb-item"><a href="{!! route('duka.product.index') !!}">Property</a></li>
                  <li class="breadcrumb-item"><a href="#">{!! $product->product_name !!}</a></li>
                  <li class="breadcrumb-item active">Images</li>
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
      @include('modules.duka.partials._shop_menu')
      <div class="col-md-9">
         <div class="card">
            <div class="panel-body">
               <div class="row mt-2">
                  <div class="col-sm-12">
                     <div class="col-sm-12">
                        <button class="btn btn-sm btn-primary" data-toggle="modal" data-target="#custom-width-modal" style="float:right"><i class="fa fa-upload"></i> Upload Images</button>
                     </div>
                  </div>
               </div>
               <br>
               <div class="col-md-12">
                  <table id="datatable" class="table table-striped table-bordered">
                     <thead>
                        <tr>
                           <th style="width:2%">#</th>
                           <th>cover</th>
                           <th>Name</th>
                           <th>File Size</th>
                           <th>File Mime</th>
                           <th>Action</th>
                        </tr>
                     </thead>
                     <tbody>
                        @foreach($images as $image)
                           @if($image->type != 'download')
                              <tr>
                              <td>{{ $count++ }}</td>
                              <td style="width:12%">
                                 <center><img src="{!! asset('media/products/'.$image->file_name) !!}" width="80px" height="60px"></center>
                              </td>
                              <td>{!! $image->caption !!}</td>
                              <td>{!! $image->file_size/1000000 !!} mb</td>
                              <td>{!! $image->file_mime !!}</td>
                              <td style="width:30%">
                                 @if($image->cover == 0)
                                    <center style="float:left;">
                                       {!! Form::model($image, ['route' => ['duka.product.images.update',$image->id], 'method'=>'post']) !!}
                                       {!! Form::hidden('product_id', $product->id) !!}
                                       {!! Form::Submit('Make Cover Image',['class'=>'btn btn-sm btn-info']) !!}
                                       {!! Form::close() !!}
                                    </center>
                                 @else
                                    <a href="#" class="btn btn-sm btn-success" style="width:134px;">is cover</a>
                                 @endif
                                 <center style="float:right;">
                                    {!! Form::open(['route' => ['duka.product.images.destroy', $image->id],'method'=>'post']) !!}
                                    {!! Form::hidden('product_image_id', $image->product_image_id) !!}
                                    {!! Form::Submit('Delete',['class'=>'btn btn-sm btn-danger delete']) !!}
                                    {!! Form::close() !!}
                                 </center>
                              </td>
                           </tr>
                           @endif
                        @endforeach
                     </tbody>
                  </table>
               </div>
            </div>
         </div>
      </div>
   </div>
   <div id="custom-width-modal" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="custom-width-modalLabel" aria-hidden="true" style="display: none;">
      <div class="modal-dialog" style="width:100%;">
         <div class="modal-content">
            <div class="modal-header">
               <h6 class="modal-title" id="custom-width-modalLabel">Upload your images</h6>
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
            </div>
            <div class="modal-body">
               <form class="dropzone" method="post" action="{!! route('duka.product.images.store') !!}">
                  <input type="hidden" name="productID" value="{!! $productID !!}">
                  @csrf
               </form>
            </div>
            <div class="modal-footer">
               <a href="#" class="btn btn-success" onClick="window.location.reload()"><i class="icon-feather-save"></i> Save changes</a>
            </div>
         </div><!-- /.modal-content -->
      </div><!-- /.modal-dialog -->
   </div><!-- /.modal -->
@endsection
