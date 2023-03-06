@extends('layouts.app')
{{-- page header --}}
@section('title','Add Product')
@section('stylesheets')

@endsection
@section('breadcrumb')
   <div class="content-header row">
      <div class="content-header-left col-md-6 col-12 mb-1 breadcrumb-new">
         <h3 class="content-header-title mb-0 d-inline-block"><i class="fal fa-box-full"></i> Add Property</h3>
         <div class="row breadcrumbs-top d-inline-block">
            <div class="breadcrumb-wrapper col-12">
               <ol class="breadcrumb">
                  <li class="breadcrumb-item"><a href="{!! url('/') !!}">Home</a></li>
                  <li class="breadcrumb-item"><a href="{!! route('duka.product.index') !!}">Property</a></li>
                  <li class="breadcrumb-item active">Add</li>
               </ol>
            </div>
         </div>
      </div>
      <div class="content-header-right col-md-6 col-12"></div>
   </div>
@endsection
{{-- content section --}}
@section('content')
<div class="row">
   <!-- shop menu -->
   <div class="col-md-3" style="min-height: 300px;">
      <div class="card">
         <div class="card-body">
            <ul class="nav nav-pills nav-stacked product">
               <li class="nav-link active"><a href="#"> <i class="fa fa-info-circle" aria-hidden="true"></i> Information</a></li>
               <li class="nav-link"><a href="#"> <i class="fas fa-images"></i> Images</a></li>
            </ul>
         </div>
      </div>
   </div>
   <div class="col-md-9">
      <!-- end of shop menu -->
      {!! Form::open(array('route' => 'duka.products.store', 'id' => 'form', 'enctype'=>'multipart/form-data','method' => 'post','autocomplete' => 'off')) !!}
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
                        {{ Form::number('bathrooms', null, ['class' => 'form-control']) }}
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
                           <input type="checkbox" name="amenities[]" value="Internet"> Internet
                        </div>
                        <div class="col-md-3">
                           <input type="checkbox" name="amenities[]" value="Garage"> Garage
                        </div>
                        <div class="col-md-3">
                           <input type="checkbox" name="amenities[]" value="Air Conditioning"> Air Conditioning
                        </div>
                        <div class="col-md-3">
                           <input type="checkbox" name="amenities[]" value="Dishwasher"> Dishwasher
                        </div>
                        <div class="col-md-3">
                           <input type="checkbox" name="amenities[]" value="Disposal">  Disposal
                        </div>
                        <div class="col-md-3">
                           <input type="checkbox" name="amenities[]" value="Balcony">  Balcony
                        </div>
                        <div class="col-md-3">
                           <input type="checkbox" name="amenities[]" value="Gym">  Gym
                        </div>
                        <div class="col-md-3">
                           <input type="checkbox" name="amenities[]" value="Bar">  Bar
                        </div>
                        <div class="col-md-3">
                           <input type="checkbox" name="amenities[]" value="Storage space"> Storage space
                        </div>
                        <div class="col-md-3">
                           <input type="checkbox" name="amenities[]" value="Large closets">  Large closets
                        </div>
                        <div class="col-md-3">
                           <input type="checkbox" name="amenities[]" value="Walk-in closets">  Walk-in closets
                        </div>
                        <div class="col-md-3">
                           <input type="checkbox" name="amenities[]" value="Patio">  Patio
                        </div>
                        <div class="col-md-3">
                           <input type="checkbox" name="amenities[]" value="Energy-efficient appliances">  Energy-efficient appliances
                        </div>
                        <div class="col-md-3">
                           <input type="checkbox" name="amenities[]" value="Renovated kitchen">  Renovated kitchen
                        </div>
                        <div class="col-md-3">
                           <input type="checkbox" name="amenities[]" value="Marble or granite countertops">  Marble or granite countertops
                        </div>
                        <div class="col-md-3">
                           <input type="checkbox" name="amenities[]" value="Garbage disposal">  Garbage disposal
                        </div>
                        <div class="col-md-3">
                           <input type="checkbox" name="amenities[]" value="Built-in microwave">  Built-in microwave
                        </div>
                        <div class="col-md-3">
                           <input type="checkbox" name="amenities[]" value="Large windows with lots of light">  Large windows with lots of light
                        </div>
                        <div class="col-md-3">
                           <input type="checkbox" name="amenities[]" value="Window coverings">  Window coverings
                        </div>
                        <div class="col-md-3">
                           <input type="checkbox" name="amenities[]" value="Views">  Views
                        </div>
                        <div class="col-md-3">
                           <input type="checkbox" name="amenities[]" value="Fireplace">  Fireplace
                        </div>
                        <div class="col-md-3">
                           <input type="checkbox" name="amenities[]" value="Hardwood floors">  Hardwood floors
                        </div>
                        <div class="col-md-3">
                           <input type="checkbox" name="amenities[]" value="Pet-friendly">  Pet-friendly
                        </div>
                        <div class="col-md-3">
                           <input type="checkbox" name="amenities[]" value="Furnished">  Furnished
                        </div>
                        <div class="col-md-3">
                           <input type="checkbox" name="amenities[]" value="Level (garden versus penthouse)">  Level (garden versus penthouse)
                        </div>
                        <div class="col-md-3">
                           <input type="checkbox" name="amenities[]" value="Wheelchair accessible">  Wheelchair accessible
                        </div>
                        <div class="col-md-3">
                           <input type="checkbox" name="amenities[]" value="Pet washing stations">  Pet washing stations
                        </div>
                        <div class="col-md-3">
                           <input type="checkbox" name="amenities[]" value="Dog parks">  Dog parks
                        </div>
                        <div class="col-md-3">
                           <input type="checkbox" name="amenities[]" value="Pet walking">  Pet walking
                        </div>
                        <div class="col-md-3">
                           <input type="checkbox" name="amenities[]" value="Pet grooming">  Pet grooming
                        </div>
                        <div class="col-md-3">
                           <input type="checkbox" name="amenities[]" value="Laundry facilities">  Laundry facilities
                        </div><div class="col-md-3">
                           <input type="checkbox" name="amenities[]" value="Laundry services">  Laundry services
                        </div>
                        <div class="col-md-3">
                           <input type="checkbox" name="amenities[]" value="Dry-cleaning">  Dry-cleaning
                        </div>
                        <div class="col-md-3">
                           <input type="checkbox" name="amenities[]" value="Swimming pool">  Swimming pool
                        </div>
                        <div class="col-md-3">
                           <input type="checkbox" name="amenities[]" value="Hot tub">  Hot tub
                        </div>
                        <div class="col-md-3">
                           <input type="checkbox" name="amenities[]" value="Fitness center">  Fitness center
                        </div>
                        <div class="col-md-3">
                           <input type="checkbox" name="amenities[]" value="Yoga studio">  Yoga studio
                        </div>
                        <div class="col-md-3">
                           <input type="checkbox" name="amenities[]" value="Sauna">  Sauna
                        </div>
                        <div class="col-md-3">
                           <input type="checkbox" name="amenities[]" value="Spa">  Spa
                        </div>
                        <div class="col-md-3">
                           <input type="checkbox" name="amenities[]" value="Sports court">  Sports court
                        </div>
                        <div class="col-md-3">
                           <input type="checkbox" name="amenities[]" value="Tennis courts">  Tennis courts
                        </div>
                        <div class="col-md-3">
                           <input type="checkbox" name="amenities[]" value="Pickle ball courts">  Pickle ball courts
                        </div>
                        <div class="col-md-3">
                           <input type="checkbox" name="amenities[]" value="Grilling areas">  Grilling areas
                        </div>
                        <div class="col-md-3">
                           <input type="checkbox" name="amenities[]" value="Picnic area">  Picnic area
                        </div>
                        <div class="col-md-3">
                           <input type="checkbox" name="amenities[]" value="Firepits">  Firepits
                        </div>
                        <div class="col-md-3">
                           <input type="checkbox" name="amenities[]" value="Fitness center">  Fitness center
                        </div>
                        <div class="col-md-3">
                           <input type="checkbox" name="amenities[]" value="Rooftop deck">  Rooftop deck
                        </div>
                        <div class="col-md-3">
                           <input type="checkbox" name="amenities[]" value="Garden">  Garden
                        </div>
                        <div class="col-md-3">
                           <input type="checkbox" name="amenities[]" value="Patio">  Patio
                        </div>
                        <div class="col-md-3">
                           <input type="checkbox" name="amenities[]" value="Playground">  Playground
                        </div>
                        <div class="col-md-3">
                           <input type="checkbox" name="amenities[]" value="On-site daycare">  On-site daycare
                        </div>
                        <div class="col-md-3">
                           <input type="checkbox" name="amenities[]" value="On-site classes">  On-site classes
                        </div>
                        <div class="col-md-3">
                           <input type="checkbox" name="amenities[]" value="Gated community">  Gated community
                        </div>
                        <div class="col-md-3">
                           <input type="checkbox" name="amenities[]" value="Controlled access">  Controlled access
                        </div>
                        <div class="col-md-3">
                           <input type="checkbox" name="amenities[]" value="Security guard">  Security guard
                        </div>
                        <div class="col-md-3">
                           <input type="checkbox" name="amenities[]" value="Secured garage">  Secured garage
                        </div>
                        <div class="col-md-3">
                           <input type="checkbox" name="amenities[]" value="Parking space">  Parking space
                        </div>
                        <div class="col-md-3">
                           <input type="checkbox" name="amenities[]" value="Access to public transportation">  Access to public transportation
                        </div>
                        <div class="col-md-3">
                           <input type="checkbox" name="amenities[]" value="Electric vehicle charging stations">  Electric vehicle charging stations
                        </div>
                        <div class="col-md-3">
                           <input type="checkbox" name="amenities[]" value="Guest parking">  Guest parking
                        </div>
                        <div class="col-md-3">
                           <input type="checkbox" name="amenities[]" value="Conference rooms">  Conference rooms
                        </div>
                        <div class="col-md-3">
                           <input type="checkbox" name="amenities[]" value="Co-working spaces">  Co-working spaces
                        </div>
                        <div class="col-md-3">
                           <input type="checkbox" name="amenities[]" value="Printing services">  Printing services
                        </div>
                        <div class="col-md-3">
                           <input type="checkbox" name="amenities[]" value="Wi-Fi in common areas">  Wi-Fi in common areas
                        </div>
                        <div class="col-md-3">
                           <input type="checkbox" name="amenities[]" value="Complimentary coffee bar">  Complimentary coffee bar
                        </div>
                        <div class="col-md-3">
                           <input type="checkbox" name="amenities[]" value="Guest suites">  Guest suites
                        </div>
                        <div class="col-md-3">
                           <input type="checkbox" name="amenities[]" value="On-site convenience store">  On-site convenience store
                        </div>
                        <div class="col-md-3">
                           <input type="checkbox" name="amenities[]" value="Recycling center">  Recycling center
                        </div>
                        <div class="col-md-3">
                           <input type="checkbox" name="amenities[]" value="Daily trash pick up">  Daily trash pick up
                        </div>
                        <div class="col-md-3">
                           <input type="checkbox" name="amenities[]" value="Extra storage space">  Extra storage space
                        </div>
                        <div class="col-md-3">
                           <input type="checkbox" name="amenities[]" value="Elevator">  Elevator
                        </div>
                     </div>
                  </div>
                  <div class="col-md-12">
                     <div class="form-group">
                        {!! Form::label('title', 'Item category (You can choose multiple categories)', array('class'=>'control-label')) !!}
                        {{ Form::select('category[]',$categories,null,['class' => 'form-control multiselect', 'multiple' => 'multiple','required' => '']) }}
                     </div>
                  </div>
                  <div class="col-md-12">
                     <div class="form-group form-group-default required ">
                        {!! Form::label('video', 'video', array('class'=>'control-label')) !!}
                        {{ Form::text('video', null, ['class' => 'form-control']) }}
                     </div>
                  </div>
               </div>
            </div>
         </div>
         <div class="card">
            <div class="card-body">
               <div class="col-md-12">
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
                        <button type="submit" class="btn btn-success submit"><i class="fas fa-save"></i> Add Item</button>
                        <img src="{!! asset('assets/images/loader.gif') !!}" alt="" class="submit-load" style="width: 10%">
                     </center>
                  </div>
               </div>
            </div>
         </div>
      {!! Form::close() !!}
   </div>
</div>
@endsection
{{-- page scripts --}}
@section('scripts')
	<script>
      $(document).ready(function() {
         $('#sku').on('change', function() {
            if (this.value == 'Custom') {
               $('#custom-sku').show();
            }
            if (this.value == 'Auto') {
               $('#custom-sku').hide();
            }
         });
         $('#type').on('change', function(){
            if(this.value == 'service'){
               $('#inventory').hide();
            }else{
               $('#inventory').show();
            }
            if(this.value == 'digital'){
               $('#digital').show();
            }else{
               $('#digital').hide();
            }
            if(this.value == 'variants'){
               $('#variants').show();
               $('#variants-entries').show();
            }else{
               $('#variants').hide();
               $('#variants-entries').hide();
            }
         });
      });
   </script>
@endsection
