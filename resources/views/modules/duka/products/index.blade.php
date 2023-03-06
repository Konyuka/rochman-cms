@extends('layouts.app')
@section('title','Property List')
@section('breadcrumb')
   <div class="content-header row">
      <div class="content-header-left col-md-6 col-12 mb-1 breadcrumb-new">
         <h3 class="content-header-title mb-0 d-inline-block"><i class="fal fa-box-full"></i> Property</h3>
         <div class="row breadcrumbs-top d-inline-block">
            <div class="breadcrumb-wrapper col-12">
               <ol class="breadcrumb">
                  <li class="breadcrumb-item"><a href="{!! url('/') !!}">Home</a></li>
                  <li class="breadcrumb-item"><a href="{!! route('duka.product.index') !!}">Property</a></li>
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
      @include('partials._messages')
		<!-- begin panel -->
		<div class="row mb-1">
			<div class="col-md-12">
				<a href="{!! route('duka.products.create') !!}" class="btn btn-success pull-right"><i class="fas fa-plus"></i> Add New Property</a>
			</div>
		</div>
		<div class="card">
			<div class="card-body">
				<table class="table table-striped table-bordered zero-configuration">
					<thead>
						<tr>
							<th width="1%">#</th>
							<th width="5%">Image</th>
							<th>Name</th>
							<th width="12%">Created at</th>
							<th width="10%">Actions</th>
						</tr>
					</thead>
					<tbody>
						@foreach($products as $product)
							<tr>
								<td>{!! $count++ !!}</td>
								<td>
									<center>
										@if(Duka::check_item_image($product->id) == 1)
											<img src="{!! asset('media/products/'.Duka::item_cover_image($product->id)->file_name) !!}" width="80px" height="60px" alt="{!! $product->product_name !!}">
										@else
											<img src="{!! asset('assets/images/product-placeholder.jpg') !!}" width="60px" height="40px" alt="{!! $product->product_name !!}">
										@endif
									</center>
								</td>
								<td>{!! $product->product_name !!}</td>
								<td>{!! date('F d, Y', strtotime($product->created_at)) !!}</td>
								<td>
									<a href="{{ route('duka.products.edit', $product->id) }}" class="btn btn-sm btn-primary"><i class="fas fa-edit"></i></a>
									<a href="{!! route('duka.products.destroy', $product->id) !!}" class="btn btn-sm btn-danger delete"><i class="fas fa-trash"></i></a>
								</td>
							</tr>
						@endforeach
					</tbody>
	        	</table>
	    	</div>
	   </div>
	</div>
@endsection
{{-- page scripts --}}
@section('script')

@endsection
