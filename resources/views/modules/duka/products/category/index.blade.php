@extends('layouts.app')
@section('title','Categories List | LimitlessCMS')
@section('breadcrumb')
   <div class="content-header row">
      <div class="content-header-left col-md-6 col-12 mb-1 breadcrumb-new">
         <h3 class="content-header-title mb-0 d-inline-block"><i class="fal fa-sitemap"></i> Duka | Categories</h3>
         <div class="row breadcrumbs-top d-inline-block">
            <div class="breadcrumb-wrapper col-12">
               <ol class="breadcrumb">
                  <li class="breadcrumb-item"><a href="{!! url('/') !!}">Home</a></li>
                  <li class="breadcrumb-item"><a href="{!! route('duka.product.index') !!}">Duka</a></li>
                  <li class="breadcrumb-item"><a href="{!! route('duka.product.category') !!}">Categories</a></li>
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
      <!-- end page-header -->
      @include('partials._messages')
      <!-- begin panel -->
      <div class="row">
         <div class="col-md-7">
            <div class="card">
               <div class="card-body">
                  <table class="table table-striped table-bordered zero-configuration">
                     <thead>
                        <tr>
                           <th width="1%">#</th>
                           <th width="20%">Name</th>
                           <th width="20%">Parent</th>
                           <th width="13%">Items</th>
                           <th class="text-center" width="8%">Actions</th>
                        </tr>
                     </thead>
                     <tbody>
                        @foreach($category as $all)
                           <tr>
                              <td>{!! $count++ !!}</td>
                              <td>{!! $all->name !!}</td>
                              <td class="font-weight-bold">
                                 @if($all->parentID != "")
                                    {!! Duka::product_category($all->parentID)->name !!}
                                 @endif
                              </td>
                              <td>{!! Duka::products_by_category_count($all->id) !!}</td>
                              <td>
                                 <a href="{{ route('duka.product.category.edit', $all->id) }}" class="btn btn-sm btn-primary"><i class="far fa-edit"></i></a>
                                 <a href="{!! route('duka.product.category.destroy', $all->id) !!}" class="btn btn-sm btn-danger"><i class="fas fa-trash"></i></a>
                              </td>
                           </tr>
                        @endforeach
                     </tbody>
                  </table>
               </div>
            </div>
         </div>
         <div class="col-md-5">
            <div class="card">
               <div class="card-body">
                  <h4>Add Category</h4>
                  <hr>
                  {!! Form::open(array('route' => 'duka.product.category.store','id' => 'form')) !!}
                     @csrf
                     <div class="form-group form-group-default required">
                        {!! Form::label('name', 'Name', array('class'=>'control-label')) !!}
                        {!! Form::text('name', null, array('class' => 'form-control', 'placeholder' => 'Enter Category Name','required' => '')) !!}
                     </div>
                     <div class="form-group form-group-default required">
                        {!! Form::label('name', 'Status', array('class'=>'control-label')) !!}
                        {!! Form::select('status', ['' => 'Choose status', '15' => 'Active', '7' => 'Pending'], null, array('class' => 'form-control','required' => '')) !!}
                     </div>
                     <div class="form-group">
                        {!! Form::label('title', 'Parent Category', array('class'=>'control-label')) !!}
                        <select name="parent" class="form-control multiselect">
                           <option value="">Choose parent category</option>
                           @foreach($category as $cat)
                              <option value="{!! $cat->id !!}">{!! $cat->name !!}</option>
                           @endforeach
                        </select>
                     </div>
                     <div class="form-group mt-4">
                        <center>
                           <button type="submit" class="btn btn-success submit"><i class="fas fa-save"></i> Add Category</button>
                           <img src="{!! asset('assets/images/loader.gif') !!}" alt="" class="submit-load" style="width: 30%">
                        </center>
                     </div>
                  {!! Form::close() !!}
               </div>
            </div>
         </div>
      </div>
   </div>
@endsection
{{-- page scripts --}}
@section('scripts')

@endsection
