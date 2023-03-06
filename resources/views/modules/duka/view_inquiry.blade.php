@extends('layouts.app')
@section('title','Bookings')
@section('breadcrumb')
   <div class="content-header row">
      <div class="content-header-left col-md-6 col-12 mb-1 breadcrumb-new">
         <h3 class="content-header-title mb-0 d-inline-block"><i class="fal fa-box-full"></i> Property View Bookings</h3>
         <div class="row breadcrumbs-top d-inline-block">
            <div class="breadcrumb-wrapper col-12">
               <ol class="breadcrumb">
                  <li class="breadcrumb-item"><a href="{!! url('/') !!}">Home</a></li>
                  <li class="breadcrumb-item"><a href="{!! route('duka.product.index') !!}">Property</a></li>
                  <li class="breadcrumb-item active">Bookings</li>
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
		<div class="card">
			<div class="card-body">
				<table class="table table-striped table-bordered zero-configuration">
					<thead>
						<tr>
							<th width="1%">#</th>
							<th>Booking</th>
							<th>Name</th>
                     <th>Phone Number</th>
                     <th>Email</th>
                     <th>Visit Date</th>
                     <th>Message</th>
							<th width="12%">Request Date</th>
						</tr>
					</thead>
					<tbody>
						@foreach($inquiries as $count=>$inquiry)
							<tr>
								<td>{!! $count+1 !!}</td>
                        <td>{!! $inquiry->subject !!}</td>
                        <td>{!! $inquiry->names !!}</td>
                        <td>{!! $inquiry->phone_number !!}</td>
                        <td>{!! $inquiry->email !!}</td>
                        <td>
                           @if($inquiry->view_date)
                           {!! date('l jS F Y', strtotime($inquiry->view_date)) !!} <b>@</b> {!! date('g:ia', strtotime($inquiry->view_time)) !!}
                           @endif
                        </td>
                        <td>{!! $inquiry->message !!}</td>
                        <td>{!! date('g:ia \o\n l jS F Y', strtotime($inquiry->created_at)) !!}</td>
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
