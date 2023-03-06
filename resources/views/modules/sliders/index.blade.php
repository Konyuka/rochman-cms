@extends('layouts.app')
@section('title','All Sliders | LimitlessCMS')
@section('breadcrumb')
   <div class="content-header row">
      <div class="content-header-left col-md-6 col-12 mb-1 breadcrumb-new">
         <h3 class="content-header-title mb-0 d-inline-block"><i class="fal fa-images"></i> Sliders</h3>
         <div class="row breadcrumbs-top d-inline-block">
            <div class="breadcrumb-wrapper col-12">
               <ol class="breadcrumb">
                  <li class="breadcrumb-item"><a href="{!! url('/') !!}">Home</a></li>
                  <li class="breadcrumb-item"><a href="{!! route('slider.index') !!}">Sliders</a></li>
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
         <a href="{!! route('slider.create') !!}" class="btn btn-sm btn-warning"><i class="fal fa-plus-circle"></i> Add Slider</a>
      </div>
   </div>
   <div class="card">
      <div class="card-body">
         <table class="table table-striped table-bordered zero-configuration">
            <thead>
               <tr>
                  <th width="1%">#</th>
                  <th width="20%"></th>
                  <th>Title</th>
                  <th>Caption</th>
                  <th>Status</th>
                  <th width="10%">Date Create</th>
                  <th width="8%">Actions</th>
               </tr>
            </thead>
            <tbody>
               @foreach($sliders as $slider)
                  <tr class="odd gradeX">
                     <td width="1%" class="f-s-600 text-inverse">{!! $count++ !!}</td>
                     <td ><img src="{!! asset('media/sliders/'.$slider->image)!!}" class="img-responsive"/></td>
                     <td>{!! $slider->caption_one !!}</td>
                     <td>{{ $slider->caption_three }}</td>
                     <td>
                        @if($slider->status == 'In-Active')
                           <span class="label label-default">In-Active</span>
                        @else($slider->status == 1)
                           <span class="label label-success">Active</span>
                        @endif
                     </td>
                     <td>{{ date('j M Y',strtotime($slider->updated_at)) }}</td>
                     <td>
                        <a href="{!! route('slider.edit',$slider->id) !!}" class="btn btn-sm btn-info"><i class="far fa-edit" aria-hidden="true"></i></a>
                        <a href="{!! route('slider.delete',$slider->id) !!}" class="btn btn-sm btn-danger delete"><i class="far fa-trash-alt" aria-hidden="true"></i></a>
                     </td>
                  </tr>
               @endforeach
            </tbody>
         </table>
      </div>
   </div>
@endsection
