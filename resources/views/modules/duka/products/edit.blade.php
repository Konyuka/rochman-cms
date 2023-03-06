@extends('layouts.app')
{{-- page header --}}
@section('title','Edit Item | LimitlessCMS')
@section('breadcrumb')
   <div class="content-header row">
      <div class="content-header-left col-md-6 col-12 mb-1 breadcrumb-new">
         <h3 class="content-header-title mb-0 d-inline-block"><i class="fal fa-box-full"></i> Duka | {!! $product->product_name !!} | Information</h3>
         <div class="row breadcrumbs-top d-inline-block">
            <div class="breadcrumb-wrapper col-12">
               <ol class="breadcrumb">
                  <li class="breadcrumb-item"><a href="{!! url('/') !!}">Home</a></li>
                  <li class="breadcrumb-item"><a href="{!! route('duka.product.index') !!}">Duka</a></li>
                  <li class="breadcrumb-item"><a href="{!! route('duka.product.index') !!}">Property</a></li>
                  <li class="breadcrumb-item"><a href="#">{!! $product->product_name !!}</a></li>
                  <li class="breadcrumb-item active">Edit</li>
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
      {!! Form::model($product, ['route' => ['duka.products.update',$product->productID], 'id' => 'form', 'method'=>'post','data-parsley-validate' => '','enctype'=>'multipart/form-data']) !!}
         {!! csrf_field() !!}
         <div class="card">
            <div class="card-body">
               <div class="row">
                  <div class="col-md-12">
                     <div class="form-group form-group-default required">
                        {!! Form::label('title', 'Name', array('class'=>'control-label')) !!}
                        {!! Form::text('product_name', null, array('class' => 'form-control', 'placeholder' => 'Enter Product Name','required' => '')) !!}
                     </div>
                  </div>

                  <div class="col-md-6">
                     <div class="form-group form-group-default required ">
                        {!! Form::label('title', 'Property Type', array('class'=>'control-label')) !!}
                        {{ Form::select('type',[''=>'Choose type', 'House' => 'House', 'Apartments' =>'Apartments', 'Land' =>'Land', 'Commercial property' =>'Commercial property'], null, ['class' => 'form-control', 'required' => '']) }}
                     </div>
                  </div>

                  <div class="col-md-6">
                     <div class="form-group form-group-default required ">
                        {!! Form::label('title', 'Is Item Active', array('class'=>'control-label')) !!}
                        {{ Form::select('status',[''=>'Choose status', 15 => 'Active', 7 =>'Pending'], null, ['class' => 'form-control', 'required' => '']) }}
                     </div>
                  </div>
                  <div class="col-md-6">
                     <div class="form-group form-group-default required ">
                        {!! Form::label('title', 'Feature Alert', array('class'=>'control-label')) !!}
                        {!! Form::text('feature_alert', null, array('class' => 'form-control', 'placeholder' => 'i.e Featured')) !!}
                     </div>
                  </div>
                  <div class="col-md-6">
                     <div class="form-group form-group-default required ">
                        {!! Form::label('title', 'Feature Color', array('class'=>'control-label')) !!}

                        {{ Form::select('feature_color',[''=>'Choose color', 'red' => 'Red', 'green' =>'Green', 'gold' =>'Gold', 'black' =>'Black'], null, ['class' => 'form-control']) }}
                     </div>
                  </div>
                  <div class="col-md-6">
                     <div class="form-group form-group-default required ">
                        {!! Form::label('location', 'Location', array('class'=>'control-label')) !!}
                        {{ Form::text('location', null, ['class' => 'form-control']) }}
                     </div>
                  </div>
                  <div class="col-md-6">
                     <div class="form-group form-group-default required ">
                        {!! Form::label('size', 'Size', array('class'=>'control-label')) !!}
                        {{ Form::text('size', null, ['class' => 'form-control']) }}
                     </div>
                  </div>
                  <div class="col-md-6">
                     <div class="form-group form-group-default required ">
                        {!! Form::label('Longitude', 'Longitude', array('class'=>'control-label')) !!}
                        {{ Form::text('longitude', null, ['class' => 'form-control']) }}
                     </div>
                  </div>
                  <div class="col-md-6">
                     <div class="form-group form-group-default required ">
                        {!! Form::label('Latitude', 'Latitude', array('class'=>'control-label')) !!}
                        {{ Form::text('latitude', null, ['class' => 'form-control']) }}
                     </div>
                  </div>
                  <div class="col-md-3">
                     <div class="form-group form-group-default required ">
                        {!! Form::label('price', 'Price', array('class'=>'control-label')) !!}
                        {{ Form::number('price', null, ['class' => 'form-control']) }}
                     </div>
                  </div>
                  <div class="col-md-3">
                     <div class="form-group form-group-default required ">
                        {!! Form::label('bedrooms', 'Bedrooms', array('class'=>'control-label')) !!}
                        {{ Form::number('bedrooms', null, ['class' => 'form-control']) }}
                     </div>
                  </div>
                  <div class="col-md-3">
                     <div class="form-group form-group-default required ">
                        {!! Form::label('bathrooms', 'Bathrooms', array('class'=>'control-label')) !!}
                        {{ Form::number('Bathrooms', null, ['class' => 'form-control']) }}
                     </div>
                  </div>
                  <div class="col-md-3">
                     <div class="form-group form-group-default required ">
                        {!! Form::label('garadge', 'Garadge', array('class'=>'control-label')) !!}
                        {{ Form::number('garadge', null, ['class' => 'form-control']) }}
                     </div>
                  </div>

                  <div class="col-md-12 mb-2">
                     <h4>Amenities</h4>
                     <div class="row">
                        <div class="col-md-3">
                           <input type="checkbox" name="amenities[]" value="Internet" {{ Limitless::check_string($product->amenities,'Internet') }}> Internet
                        </div>
                        <div class="col-md-3">
                           <input type="checkbox" name="amenities[]" value="Garage" {{ Limitless::check_string($product->amenities,'Garage') }}> Garage
                        </div>
                        <div class="col-md-3">
                           <input type="checkbox" name="amenities[]" value="Air Conditioning" {{ Limitless::check_string($product->amenities,'Air Conditioning') }}> Air Conditioning
                        </div>
                        <div class="col-md-3">
                           <input type="checkbox" name="amenities[]" value="Dishwasher" {{ Limitless::check_string($product->amenities,'Dishwasher') }}> Dishwasher
                        </div>
                        <div class="col-md-3">
                           <input type="checkbox" name="amenities[]" value="Disposal" {{ Limitless::check_string($product->amenities,'Disposal') }}>  Disposal
                        </div>
                        <div class="col-md-3">
                           <input type="checkbox" name="amenities[]" value="Balcony" {{ Limitless::check_string($product->amenities,'Balcony') }}>  Balcony
                        </div>
                        <div class="col-md-3">
                           <input type="checkbox" name="amenities[]" value="Gym" {{ Limitless::check_string($product->amenities,'Gym') }}>  Gym
                        </div>
                        <div class="col-md-3">
                           <input type="checkbox" name="amenities[]" value="Bar" {{ Limitless::check_string($product->amenities,'Bar') }}>  Bar
                        </div>
                        <div class="col-md-3">
                           <input type="checkbox" name="amenities[]" value="Storage space" {{ Limitless::check_string($product->amenities,'Storage space') }}> Storage space
                        </div>
                        <div class="col-md-3">
                           <input type="checkbox" name="amenities[]" value="Large closets" {{ Limitless::check_string($product->amenities,'Large closets') }}>  Large closets
                        </div>
                        <div class="col-md-3">
                           <input type="checkbox" name="amenities[]" value="Walk-in closets" {{ Limitless::check_string($product->amenities,'Walk-in closets') }}>  Walk-in closets
                        </div>
                        <div class="col-md-3">
                           <input type="checkbox" name="amenities[]" value="Patio" {{ Limitless::check_string($product->amenities,'Patio') }}>  Patio
                        </div>
                        <div class="col-md-3">
                           <input type="checkbox" name="amenities[]" value="Energy-efficient appliances" {{ Limitless::check_string($product->amenities,'Energy-efficient appliances') }}>  Energy-efficient appliances
                        </div>
                        <div class="col-md-3">
                           <input type="checkbox" name="amenities[]" value="Renovated kitchen" {{ Limitless::check_string($product->amenities,'Renovated kitchen') }}>  Renovated kitchen
                        </div>
                        <div class="col-md-3">
                           <input type="checkbox" name="amenities[]" value="Marble or granite countertops" {{ Limitless::check_string($product->amenities,'Marble or granite countertops') }}>  Marble or granite countertops
                        </div>
                        <div class="col-md-3">
                           <input type="checkbox" name="amenities[]" value="Garbage disposal" {{ Limitless::check_string($product->amenities,'Garbage disposal') }}>  Garbage disposal
                        </div>
                        <div class="col-md-3">
                           <input type="checkbox" name="amenities[]" value="Built-in microwave" {{ Limitless::check_string($product->amenities,'Built-in microwave') }}>  Built-in microwave
                        </div>
                        <div class="col-md-3">
                           <input type="checkbox" name="amenities[]" value="Large windows with lots of light"  {{ Limitless::check_string($product->amenities,'Large windows with lots of light') }}>  Large windows with lots of light
                        </div>
                        <div class="col-md-3">
                           <input type="checkbox" name="amenities[]" value="Window coverings" {{ Limitless::check_string($product->amenities,'Window coverings') }}>  Window coverings
                        </div>
                        <div class="col-md-3">
                           <input type="checkbox" name="amenities[]" value="Views" {{ Limitless::check_string($product->amenities,'Views') }}>  Views
                        </div>
                        <div class="col-md-3">
                           <input type="checkbox" name="amenities[]" value="Fireplace" {{ Limitless::check_string($product->amenities,'Fireplace') }}>  Fireplace
                        </div>
                        <div class="col-md-3">
                           <input type="checkbox" name="amenities[]" value="Hardwood floors" {{ Limitless::check_string($product->amenities,'Hardwood floors') }}>  Hardwood floors
                        </div>
                        <div class="col-md-3">
                           <input type="checkbox" name="amenities[]" value="Pet-friendly" {{ Limitless::check_string($product->amenities,'Pet-friendly') }}>  Pet-friendly
                        </div>
                        <div class="col-md-3">
                           <input type="checkbox" name="amenities[]" value="Furnished" {{ Limitless::check_string($product->amenities,'Furnished') }}>  Furnished
                        </div>
                        <div class="col-md-3">
                           <input type="checkbox" name="amenities[]" value="Level (garden versus penthouse)" {{ Limitless::check_string($product->amenities,'Level (garden versus penthouse)') }}>  Level (garden versus penthouse)
                        </div>
                        <div class="col-md-3">
                           <input type="checkbox" name="amenities[]" value="Wheelchair accessible" {{ Limitless::check_string($product->amenities,'Wheelchair accessible') }}>  Wheelchair accessible
                        </div>
                        <div class="col-md-3">
                           <input type="checkbox" name="amenities[]" value="Pet washing stations" {{ Limitless::check_string($product->amenities,'Pet washing stations') }}>  Pet washing stations
                        </div>
                        <div class="col-md-3">
                           <input type="checkbox" name="amenities[]" value="Dog parks" {{ Limitless::check_string($product->amenities,'Dog parks') }}>  Dog parks
                        </div>
                        <div class="col-md-3">
                           <input type="checkbox" name="amenities[]" value="Pet walking" {{ Limitless::check_string($product->amenities,'Pet walking') }}>  Pet walking
                        </div>
                        <div class="col-md-3">
                           <input type="checkbox" name="amenities[]" value="Pet grooming" {{ Limitless::check_string($product->amenities,'Pet grooming') }}>  Pet grooming
                        </div>
                        <div class="col-md-3">
                           <input type="checkbox" name="amenities[]" value="Laundry facilities" {{ Limitless::check_string($product->amenities,'Laundry facilities') }}>  Laundry facilities
                        </div><div class="col-md-3">
                           <input type="checkbox" name="amenities[]" value="Laundry services" {{ Limitless::check_string($product->amenities,'Laundry services') }}>  Laundry services
                        </div>
                        <div class="col-md-3">
                           <input type="checkbox" name="amenities[]" value="Dry-cleaning" {{ Limitless::check_string($product->amenities,'Dry-cleaning') }}>  Dry-cleaning
                        </div>
                        <div class="col-md-3">
                           <input type="checkbox" name="amenities[]" value="Swimming pool" {{ Limitless::check_string($product->amenities,'Swimming pool') }}>  Swimming pool
                        </div>
                        <div class="col-md-3">
                           <input type="checkbox" name="amenities[]" value="Hot tub" {{ Limitless::check_string($product->amenities,'Hot tub') }}>  Hot tub
                        </div>
                        <div class="col-md-3">
                           <input type="checkbox" name="amenities[]" value="Fitness center" {{ Limitless::check_string($product->amenities,'Fitness center') }}>  Fitness center
                        </div>
                        <div class="col-md-3">
                           <input type="checkbox" name="amenities[]" value="Yoga studio" {{ Limitless::check_string($product->amenities,'Yoga studio') }}>  Yoga studio
                        </div>
                        <div class="col-md-3">
                           <input type="checkbox" name="amenities[]" value="Sauna" {{ Limitless::check_string($product->amenities,'Sauna') }}>  Sauna
                        </div>
                        <div class="col-md-3">
                           <input type="checkbox" name="amenities[]" value="Spa" {{ Limitless::check_string($product->amenities,'Spa') }}>  Spa
                        </div>
                        <div class="col-md-3">
                           <input type="checkbox" name="amenities[]" value="Sports court" {{ Limitless::check_string($product->amenities,'Sports court') }}>  Sports court
                        </div>
                        <div class="col-md-3">
                           <input type="checkbox" name="amenities[]" value="Tennis courts" {{ Limitless::check_string($product->amenities,'Tennis courts') }}>  Tennis courts
                        </div>
                        <div class="col-md-3">
                           <input type="checkbox" name="amenities[]" value="Pickle ball courts" {{ Limitless::check_string($product->amenities,'Pickle ball courts') }}>  Pickle ball courts
                        </div>
                        <div class="col-md-3">
                           <input type="checkbox" name="amenities[]" value="Grilling areas" {{ Limitless::check_string($product->amenities,'Grilling areas') }}>  Grilling areas
                        </div>
                        <div class="col-md-3">
                           <input type="checkbox" name="amenities[]" value="Picnic area" {{ Limitless::check_string($product->amenities,'Picnic area') }}>  Picnic area
                        </div>
                        <div class="col-md-3">
                           <input type="checkbox" name="amenities[]" value="Firepits" {{ Limitless::check_string($product->amenities,'Firepits') }}>  Firepits
                        </div>
                        <div class="col-md-3">
                           <input type="checkbox" name="amenities[]" value="Fitness center" {{ Limitless::check_string($product->amenities,'Fitness center') }}>  Fitness center
                        </div>
                        <div class="col-md-3">
                           <input type="checkbox" name="amenities[]" value="Rooftop deck" {{ Limitless::check_string($product->amenities,'Rooftop deck') }}>  Rooftop deck
                        </div>
                        <div class="col-md-3">
                           <input type="checkbox" name="amenities[]" value="Garden" {{ Limitless::check_string($product->amenities,'Garden') }}>  Garden
                        </div>
                        <div class="col-md-3">
                           <input type="checkbox" name="amenities[]" value="Patio" {{ Limitless::check_string($product->amenities,'Patio') }}>  Patio
                        </div>
                        <div class="col-md-3">
                           <input type="checkbox" name="amenities[]" value="Playground" {{ Limitless::check_string($product->amenities,'Playground') }}>  Playground
                        </div>
                        <div class="col-md-3">
                           <input type="checkbox" name="amenities[]" value="On-site daycare" {{ Limitless::check_string($product->amenities,'On-site daycare') }}>  On-site daycare
                        </div>
                        <div class="col-md-3">
                           <input type="checkbox" name="amenities[]" value="On-site classes" {{ Limitless::check_string($product->amenities,'On-site classes') }}>  On-site classes
                        </div>
                        <div class="col-md-3">
                           <input type="checkbox" name="amenities[]" value="Gated community" {{ Limitless::check_string($product->amenities,'Gated community') }}>  Gated community
                        </div>
                        <div class="col-md-3">
                           <input type="checkbox" name="amenities[]" value="Controlled access" {{ Limitless::check_string($product->amenities,'Controlled access') }}>  Controlled access
                        </div>
                        <div class="col-md-3">
                           <input type="checkbox" name="amenities[]" value="Security guard" {{ Limitless::check_string($product->amenities,'Security guard') }}>  Security guard
                        </div>
                        <div class="col-md-3">
                           <input type="checkbox" name="amenities[]" value="Secured garage" {{ Limitless::check_string($product->amenities,'Secured garage') }}>  Secured garage
                        </div>
                        <div class="col-md-3">
                           <input type="checkbox" name="amenities[]" value="Parking space" {{ Limitless::check_string($product->amenities,'Parking space') }}>  Parking space
                        </div>
                        <div class="col-md-3">
                           <input type="checkbox" name="amenities[]" value="Access to public transportation" {{ Limitless::check_string($product->amenities,'Access to public transportation') }}>  Access to public transportation
                        </div>
                        <div class="col-md-3">
                           <input type="checkbox" name="amenities[]" value="Electric vehicle charging stations" {{ Limitless::check_string($product->amenities,'Electric vehicle charging stations') }}>  Electric vehicle charging stations
                        </div>
                        <div class="col-md-3">
                           <input type="checkbox" name="amenities[]" value="Guest parking" {{ Limitless::check_string($product->amenities,'Guest parking') }}>  Guest parking
                        </div>
                        <div class="col-md-3">
                           <input type="checkbox" name="amenities[]" value="Conference rooms" {{ Limitless::check_string($product->amenities,'Conference rooms') }}>  Conference rooms
                        </div>
                        <div class="col-md-3">
                           <input type="checkbox" name="amenities[]" value="Co-working spaces"  {{ Limitless::check_string($product->amenities,'Co-working spaces') }}>  Co-working spaces
                        </div>
                        <div class="col-md-3">
                           <input type="checkbox" name="amenities[]" value="Printing services" {{ Limitless::check_string($product->amenities,'Printing services') }}>  Printing services
                        </div>
                        <div class="col-md-3">
                           <input type="checkbox" name="amenities[]" value="Wi-Fi in common areas" {{ Limitless::check_string($product->amenities,'Wi-Fi in common areas') }}>  Wi-Fi in common areas
                        </div>
                        <div class="col-md-3">
                           <input type="checkbox" name="amenities[]" value="Complimentary coffee bar" {{ Limitless::check_string($product->amenities,'Complimentary coffee bar') }}>  Complimentary coffee bar
                        </div>
                        <div class="col-md-3">
                           <input type="checkbox" name="amenities[]" value="Guest suites" {{ Limitless::check_string($product->amenities,'Guest suites') }}>  Guest suites
                        </div>
                        <div class="col-md-3">
                           <input type="checkbox" name="amenities[]" value="On-site convenience store" {{ Limitless::check_string($product->amenities,'On-site convenience store') }}>  On-site convenience store
                        </div>
                        <div class="col-md-3">
                           <input type="checkbox" name="amenities[]" value="Recycling center" {{ Limitless::check_string($product->amenities,'Recycling center') }}>  Recycling center
                        </div>
                        <div class="col-md-3">
                           <input type="checkbox" name="amenities[]" value="Daily trash pick up" {{ Limitless::check_string($product->amenities,'Daily trash pick up') }}>  Daily trash pick up
                        </div>
                        <div class="col-md-3">
                           <input type="checkbox" name="amenities[]" value="Extra storage space" {{ Limitless::check_string($product->amenities,'Extra storage space') }}>  Extra storage space
                        </div>
                        <div class="col-md-3">
                           <input type="checkbox" name="amenities[]" value="Elevator" {{ Limitless::check_string($product->amenities,'Elevator') }}>  Elevator
                        </div>
                     </div>
                  </div>

                  {{-- <div class="col-md-6">
                     <div class="form-group form-group-default required">
                        {!! Form::label('title', 'SKU code', array('class'=>'control-label')) !!}
                        {!! Form::text('sku_code', null, array('class' => 'form-control', 'placeholder' => 'SKU code', 'required' => '')) !!}
                     </div>
                  </div> --}}
                  <div class="col-md-12">
                     <div class="form-group">
                        {!! Form::label('title', 'Product category', array('class'=>'control-label')) !!}
                        {{ Form::select('category[]',$joincat,null,['class' => 'form-control multiple-select2','multiple' => 'multiple']) }}
                     </div>
                  </div>
               </div>
            </div>
         </div>
         <div class="card">
            <div class="card-body">
               <div class="form-group">
                  {!! Form::label('title', 'Short Description', array('class'=>'control-label')) !!}
                  {!! Form::textarea('short_description',null,['class'=>'form-control', 'rows' => 5, 'placeholder'=>'Short Description']) !!}
               </div>
               <div class="form-group">
                  {!! Form::label('title', 'Map', array('class'=>'control-label')) !!}
                  {!! Form::textarea('map',null,['class'=>'form-control', 'rows' => 5, 'placeholder'=>'']) !!}
               </div>
               <div class="form-group">
                  {!! Form::label('title', 'Description', array('class'=>'control-label')) !!}
                  {!! Form::textarea('description',null,['class'=>'my-editor form-control','rows' => 5, 'placeholder'=>'content']) !!}
               </div>
               <div class="form-group">
                  {!! Form::label('title', 'Schools', array('class'=>'control-label')) !!}
                  {!! Form::textarea('schools',null,['class'=>'my-editor form-control','rows' => 5, 'placeholder'=>'content']) !!}
               </div>
               <div class="form-group mt-3">
                  <center>
                     <button type="submit" class="btn btn-success submit"><i class="fas fa-save"></i> Update Item</button>
                     <img src="{!! asset('assets/images/loader.gif') !!}" alt="" class="submit-load" style="width: 10%">
                  </center>
               </div>
            </div>
         </div>
      {!! Form::close() !!}
   </div>
</div>
@endsection
{{-- page scripts --}}
@section('scripts')
   <script type="text/javascript">
		$(".multiple-select2").select2();
		$(".multiple-select2").select2().val({!! json_encode($jointcategories) !!}).trigger('change');
	</script>
@endsection
