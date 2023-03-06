@extends('layouts.app')
@section('title','Edit Slider | LimitlessCMS')
@section('breadcrumb')
   <div class="content-header row">
      <div class="content-header-left col-md-6 col-12 mb-1 breadcrumb-new">
         <h3 class="content-header-title mb-0 d-inline-block">Sliders</h3>
         <div class="row breadcrumbs-top d-inline-block">
            <div class="breadcrumb-wrapper col-12">
               <ol class="breadcrumb">
                  <li class="breadcrumb-item"><a href="{!! url('/') !!}">Home</a></li>
                  <li class="breadcrumb-item"><a href="{!! route('slider.index') !!}">Sliders</a></li>
                  <li class="breadcrumb-item active">Edit</li>
               </ol>
            </div>
         </div>
      </div>
      <div class="content-header-right col-md-6 col-12"></div>
   </div>
@endsection
@section('content')
@include('partials._messages')
<!-- begin panel -->
<div class="card">
   <div class="card-body">
      {!! Form::model($slider, ['route' => ['slider.update',$slider->id], 'method'=>'post','enctype'=>'multipart/form-data','data-parsley-validate' => '']) !!}
      <div class="row">
         <div class="col-md-6">
            <!-- Text inputs -->
            <div class="panel-body">
               <div class="form-group form-group-default required">
                  {!! Form::label('title', 'Title', array('class'=>'control-label')) !!}
                  {!! Form::text('caption_one', null, array('class' => 'form-control', 'placeholder' => 'Title')) !!}
               </div>
               <div class="form-group form-group-default required">
                  {!! Form::label('title', 'Article Url', array('class'=>'control-label')) !!}
                  {!! Form::text('url', null, array('class' => 'form-control', 'placeholder' => 'Article Url')) !!}
               </div>
               <div class="form-group form-group-default required">
                  {!! Form::label('title','Slide Status', array('class'=>'control-label')) !!}
                  {{ Form::select('status',[''=>'Choose Status',15=>'Active',7=>'Pending'], null, ['class' => 'form-control', 'required' => '']) }}
               </div>
               <div class="form-group form-group-default required">
                  <label>Slide Image (<span style="color:red">Slider size 1200 * 675</span>)</label>
                  {!! Form::file('image',array('class' => 'form-control', 'id' => 'thumbnail', 'files'=> true)) !!}
               </div>
            </div>
            <!-- /text inputs -->
         </div>
         <div class="col-md-6">
            <!-- Text inputs -->
            <div class="panel-body">
               <div class="form-group">
                  <label for="">Caption</label>
                  {!! Form::textarea('caption_three',null,['class'=>'form-control', 'size' => '6x6', 'placeholder'=>'caption']) !!}
               </div>
               <div class="form-group">
                  <label for="">Caption 2</label>
                  {!! Form::textarea('caption_two',null,['class'=>'form-control', 'size' => '6x6', 'placeholder'=>'caption']) !!}
               </div>
            </div>
            <!-- /text inputs -->
         </div>
      </div>
      <div class="col-md-12">
         <center>
            {!! Form::submit('Update Slider',array('class' =>'btn btn-success submit')) !!}
            <img src="{!! asset('assets/images/loader.gif') !!}" alt="" class="submit-load" style="width: 30%">
         </center>
      </div>
      {!! Form::close() !!}
   </div>
</div>
@endsection
