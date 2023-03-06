@extends('layouts.app')
@section('title','Dashboard | LimitlessCMS')
@section('stylesheets')
<link rel="stylesheet" type="text/css" href="{!! url('/') !!}/public/vendors/css/charts/jquery-jvectormap-2.0.3.css">
<link rel="stylesheet" type="text/css" href="{!! url('/') !!}/public/vendors/css/charts/morris.css">
@endsection
@section('content')
   <div class="row">
      <div class="col-xl-6 col-12">
         <div class="card">
            <div class="card-header">
            <h4 class="card-title">Revenue</h4>
            <a class="heading-elements-toggle"><i class="la la-ellipsis-v font-medium-3"></i></a>
            <div class="heading-elements">
               <ul class="list-inline mb-0">
                  <li><a data-action="reload"><i class="ft-rotate-cw"></i></a></li>
               </ul>
            </div>
            </div>
            <div class="card-content collapse show">
            <div class="card-body pt-0">
               <div class="row mb-1">
                  <div class="col-6 col-md-4">
                  <h5>Current week</h5>
                  <h2 class="danger">$82,124</h2>
                  </div>
                  <div class="col-6 col-md-4">
                  <h5>Previous week</h5>
                  <h2 class="text-muted">$52,502</h2>
                  </div>
               </div>
               <div class="chartjs">
                  <canvas id="thisYearRevenue" width="400" class="position-absolute"></canvas>
                  <canvas id="lastYearRevenue" width="400"></canvas>
               </div>
            </div>
            </div>
         </div>
      </div>
      <div class="col-xl-6 col-12">
         <div class="row">
            <div class="col-lg-6 col-12">
            <div class="card pull-up">
               <div class="card-content">
                  <div class="card-body">
                  <div class="media d-flex">
                     <div class="media-body text-left">
                        <h6 class="text-muted">Order Value </h6>
                        <h3>$ 88,568</h3>
                     </div>
                     <div class="align-self-center">
                        <i class="icon-trophy success font-large-2 float-right"></i>
                     </div>
                  </div>
                  </div>
               </div>
            </div>
            </div>
            <div class="col-lg-6 col-12">
            <div class="card pull-up">
               <div class="card-content">
                  <div class="card-body">
                  <div class="media d-flex">
                     <div class="media-body text-left">
                        <h6 class="text-muted">Calls</h6>
                        <h3>3,568</h3>
                     </div>
                     <div class="align-self-center">
                        <i class="icon-call-in danger font-large-2 float-right"></i>
                     </div>
                  </div>
                  </div>
               </div>
            </div>
            </div>
         </div>
      </div>
   </div>
   <!--/ Revenue, Hit Rate & Deals -->
@endsection
@section('scripts')
   <!-- BEGIN: Page Vendor JS-->
   <script src="{!! url('/') !!}/public/vendors/js/charts/chart.min.js"></script>
   <script src="{!! url('/') !!}/public/vendors/js/charts/raphael-min.js"></script>
   <script src="{!! url('/') !!}/public/vendors/js/charts/morris.min.js"></script>
   <script src="{!! url('/') !!}/public/vendors/js/charts/jvector/jquery-jvectormap-2.0.3.min.js"></script>
   <script src="{!! url('/') !!}/public/vendors/js/charts/jvector/jquery-jvectormap-world-mill.js"></script>
   <script src="{!! url('/') !!}/public/data/jvector/visitor-data.js"></script>
   <!-- END: Page Vendor JS-->
@endsection
