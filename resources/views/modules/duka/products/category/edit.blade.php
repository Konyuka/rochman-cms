@extends('layouts.app')
@section('title','Edit Category | Limitless CMS')
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
                  <li class="breadcrumb-item active">Edit</li>
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
                        @foreach($categories as $all)
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
               <div class="card-header">Update Category</div>
               <div class="card-body">
                  {!! Form::model($category, ['route' => ['duka.product.category.update',$category->id], 'method'=>'post','enctype'=>'multipart/form-data','data-parsley-validate' => '']) !!}
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

                           @if($category->parentID == 0)
                              <option value="">Choose parent category if any</option>
                           @else
                              <option value="{!! $category->parentID !!}">
                                 {!! App\Models\duka\category::where('id',$category->parentID)->first()->name !!}
                              </option>
                           @endif
                           @foreach($parents as $paro)
                              <option value="{!! $paro->id !!}">{!! $paro->name !!}</option>
                           @endforeach
                           @if($category->parentID != 0)
                              <option value="0" style="color: red">Remove Parent</option>
                           @endif
                        </select>
                     </div>
                     <div class="form-group mt-4">
                        <center>
                           <button type="submit" class="btn btn-success submit"><i class="fas fa-save"></i> Update Category</button>
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
@section('script')

@endsection
