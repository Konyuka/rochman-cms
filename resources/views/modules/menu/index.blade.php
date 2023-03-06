@extends('layouts.app')
@section('title','Menus | LimitlessCMS')
@section('breadcrumb')
   <div class="content-header row">
      <div class="content-header-left col-md-6 col-12 mb-1 breadcrumb-new">
         <h3 class="content-header-title mb-0 d-inline-block"><i class="far fa-bars"></i> Menus</h3>
         <div class="row breadcrumbs-top d-inline-block">
            <div class="breadcrumb-wrapper col-12">
               <ol class="breadcrumb">
                  <li class="breadcrumb-item"><a href="{!! url('/') !!}">Home</a></li>
                  <li class="breadcrumb-item"><a href="{!! route('menu.index') !!}">Menus</a></li>
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
         <a href="#" data-toggle="modal" data-target=".add-menu" class="btn btn-sm btn-warning"><i class="fal fa-plus-circle"></i> Add Menu</a>
      </div>
   </div>
   <div class="card">
      <div class="card-body">
         <table class="table table-striped table-bordered zero-configuration">
            <thead>
               <tr>
                  <th width="1%">#</th> 
                  <th>Title</th>
                  <th>Description</th>
                  <th width="8%">Status</th>
                  <th width="10%">Date Create</th>
                  <th width="12%">Actions</th>
               </tr>
            </thead>
            <tbody>
               @foreach($menus as $menu)
                  <tr>
                     <td>{!! $count++ !!}</td>
                     <td>{!! $menu->title !!}</td>
                     <td>{!! $menu->description !!}</td>
                     <td>
                        <center>
                           <span class="badge {!! $menu->name !!}">{!! $menu->name !!}</span>
                        </center>
                     </td>
                     <td>{!! date('d F, Y', strtotime($menu->created_at)) !!}</td>
                     <td>
                        <a href="{!! route('menu.show',$menu->menuID) !!}" class="btn btn-warning btn-sm"><i class="fas fa-eye"></i></a>
                        <a href="#" class="btn btn-primary btn-sm" data-toggle="modal" data-target=".edit-menu-{!! $menu->menuID !!}" ><i class="far fa-edit"></i></a>
                        <a href="{!! route('menu.delete',$menu->menuID) !!}" class="btn btn-danger btn-sm"><i class="fas fa-trash"></i></a>
                     </td>
                  </tr>
                  <div class="modal fade edit-menu-{!! $menu->menuID !!}" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
                     <div class="modal-dialog modal-lg">
                        <div class="modal-content">
                           <div class="modal-header">Add Menu</div>
                           <div class="modal-body">
                              {!! Form::model($menu, ['route' => ['menu.update',$menu->menuID], 'method'=>'post','enctype'=>'multipart/form-data']) !!}
                                 <div class="row">
                                    <div class="col-md-12">                        
                                       @csrf
                                       <div class="row">
                                          <div class="col-md-12">
                                             <div class="form-group">
                                                <label for="">Title</label>
                                                {!! Form::text('title',null,['class'=>'form-control','required'=>'']) !!}
                                             </div>
                                          </div>
                                          <div class="col-md-12">
                                             <div class="form-group">
                                                <label for="">Status</label>
                                                {!! Form::select('status',['' => 'choose status',15 => 'Active',7=>'Pending'],null,['class'=>'form-control','required'=>'']) !!}
                                             </div>
                                          </div>
                                          <div class="col-md-12">
                                             <div class="form-group">
                                                <label for="">Description</label>
                                                {!! Form::textarea('description',null,['class'=>'form-control']) !!}
                                             </div>
                                          </div>
                                       </div>                     
                                    </div>
                                    <div class="col-md-12">
                                       <button type="submit" class="btn btn-primary btn-sm submit pull-right"><i class="fal fa-save"></i> Update Menu</button>
                                       <img src="{!! url('/') !!}/public/images/loader.gif" alt="" class="submit-load pull-right" style="width: 10%">
                                    </div>               
                                 </div>  
                              {!! Form::close() !!}
                           </div>          
                        </div>
                     </div>
                  </div>
               @endforeach
            </tbody>
         </table>
      </div>
   </div>
   <!-- Grid row -->
   <div class="modal fade add-menu" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
      <div class="modal-dialog modal-lg">
         <div class="modal-content">
            <div class="modal-header">Add Menu</div>
            <div class="modal-body">
               <form action="{!! route('menu.store') !!}" method="post">
                  <div class="row">
                     <div class="col-md-12">                        
                        @csrf
                        <div class="row">
                           <div class="col-md-12">
                              <div class="form-group">
                                 <label for="">Title</label>
                                 {!! Form::text('title',null,['class'=>'form-control','required'=>'']) !!}
                              </div>
                           </div>
                           <div class="col-md-12">
                              <div class="form-group">
                                 <label for="">Status</label>
                                 {!! Form::select('status',['' => 'choose status',15 => 'Active',7=>'Pending'],null,['class'=>'form-control','required'=>'']) !!}
                              </div>
                           </div>
                           <div class="col-md-12">
                              <div class="form-group">
                                 <label for="">Description</label>
                                 {!! Form::textarea('description',null,['class'=>'form-control']) !!}
                              </div>
                           </div>
                        </div>                     
                     </div>
                     <div class="col-md-12">
                        <button type="submit" class="btn btn-success btn-sm submit pull-right"><i class="fal fa-save"></i> Add Menu</button>
                        <img src="{!! asset('assets/images/loader.gif') !!}" alt="" class="submit-load pull-right" style="width: 10%">
                     </div>               
                  </div>  
               </form>
            </div>          
         </div>
      </div>
   </div>
@endsection
