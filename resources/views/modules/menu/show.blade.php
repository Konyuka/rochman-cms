@extends('layouts.app')
@section('title','Menus | Details | LimitlessCMS')
@section('breadcrumb')
   <div class="content-header row">
      <div class="content-header-left col-md-6 col-12 mb-1 breadcrumb-new">
         <h3 class="content-header-title mb-0 d-inline-block"><i class="far fa-bars"></i> Menus - {!! $menu->title !!}</h3>
         <div class="row breadcrumbs-top d-inline-block">
            <div class="breadcrumb-wrapper col-12">
               <ol class="breadcrumb">
                  <li class="breadcrumb-item"><a href="{!! url('/') !!}">Home</a></li>
                  <li class="breadcrumb-item"><a href="{!! route('menu.index') !!}">Menus</a></li>
                  <li class="breadcrumb-item active">Details</li>
               </ol>
            </div>
         </div>
      </div>
      <div class="content-header-right col-md-6 col-12"></div>
   </div>
@endsection
@section('content')
   @include('partials._messages')
   <div class="row">
      <div class="col-md-4">
         <div class="card">
            <div class="card-body">
               <h4>Pages</h4>
               <hr>
               <div class="vertical-scroll scroll-example height-600">
                  <ul class="list-group" style="height: 650px">
                     @foreach($pages as $page)
                        @if(CMS::check_page_in_page($menu->id,$page->id) == 0)
                           <li class="list-group-item">
                              <a href="{!! route('menu.add.page',[$menu->id,$page->id]) !!}" class="badge badge-warning float-right">Add to menu</a>
                              <h5>{!! $page->title !!}</h5>
                              @if(CMS::check_if_main_page($page->id) != 1)
                                 <b>Parent Page :</b> <span class="text-primary">{!! CMS::get_page_info($page->parentID)->title !!}</span>
                              @endif
                           </li>
                        @endif
                     @endforeach
                  </ul>
               </div>
            </div>
         </div>
      </div>
      <div class="col-md-8">
         <div class="card">
            <div class="card-body">
               <h4>Menu</h4>
               <hr>
               <div class="cf nestable-lists">
                  <div class="dd" id="nestableMenu">
                     <ol class="dd-list">
                        @foreach ($menuPages as $mp)
                           <li class="dd-item" data-id="{{ $mp->pageID }}">
                              <div class="dd-handle">
                                 <i class="fal fa-grip-vertical"></i>
                                 {!! $mp->title !!}
                                 <a href="{!! route('menu.page.delete',[$menu->id,$mp->menuItemID]) !!}" class="float-right badge badge-danger delete"><i class="fas fa-trash"></i></a>
                              </div>
                              @if(CMS::check_menu_page_children($menu->id,$mp->pageID) != 0)
                                 <ol class="dd-list">
                                    @foreach (CMS::menu_page_children($menu->id,$mp->pageID) as $child)
                                       <li class="dd-item" data-id="{{ $child->pageID }}">
                                          <div class="dd-handle">
                                             <i class="fal fa-grip-vertical"></i>
                                             {!! $child->title !!}
                                             <a href="{!! route('menu.page.delete',[$menu->id,$child->menuItemID]) !!}" class="float-right badge badge-danger delete"><i class="fas fa-trash"></i></a>
                                          </div>
                                          @if(CMS::check_menu_page_children($menu->id,$child->pageID) != 0)
                                             <ol class="dd-list">
                                                @foreach (CMS::menu_page_children($menu->id,$child->pageID) as $child2)
                                                   <li class="dd-item" data-id="{{ $child2->pageID }}">
                                                      <div class="dd-handle">
                                                         <i class="fal fa-grip-vertical"></i>
                                                         {!! $child2->title !!}
                                                         <a href="{!! route('menu.page.delete',[$menu->id,$child2->menuItemID]) !!}" class="float-right badge badge-danger delete"><i class="fas fa-trash"></i></a>
                                                      </div>
                                                      @foreach (CMS::menu_page_children($menu->id,$child2->pageID) as $child3)
                                                         <li class="dd-item" data-id="{{ $child3->pageID }}">
                                                            <div class="dd-handle">
                                                               <i class="fal fa-grip-vertical"></i>
                                                               {!! $child3->title !!}
                                                               <a href="{!! route('menu.page.delete',[$menu->id,$child3->menuItemID]) !!}" class="float-right badge badge-danger delete"><i class="fas fa-trash"></i></a>
                                                            </div>
                                                         </li>
                                                      @endforeach
                                                   </li>
                                                @endforeach
                                             </ol>
                                          @endif
                                       </li>
                                    @endforeach
                                 </ol>
                              @endif
                           </li>
                        @endforeach
                     </ol>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>
@endsection
@section('scripts')
   <script src="{!! asset('assets/vendors/nestable/jquery.nestable.js') !!}"></script>
   <script>
      function lagXHRobjekt() {
         var XHRobjekt = null;
         try {
            ajaxRequest = new XMLHttpRequest(); // Firefox, Opera, ...
         } catch(err1) {
            try {
               ajaxRequest = new ActiveXObject("Microsoft.XMLHTTP"); // Noen IE v.
            } catch(err2) {
               try {
                     ajaxRequest = new ActiveXObject("Msxml2.XMLHTTP"); // Noen IE v.
               } catch(err3) {
                  ajaxRequest = false;
               }
            }
         }
         return ajaxRequest;
      }

      function menu_updatesort(jsonstring) {
         mittXHRobjekt = lagXHRobjekt();

         if (mittXHRobjekt) {
            mittXHRobjekt.onreadystatechange = function() {
               if(ajaxRequest.readyState == 4){
                  var ajaxDisplay = document.getElementById('sortDBfeedback');
                  ajaxDisplay.innerHTML = ajaxRequest.responseText;
               } else {
                  // Uncomment this an refer it to a image if you want the loading gif
                  //document.getElementById('sortDBfeedback').innerHTML = "<img style='height:11px;' src='images/ajax-loader.gif' alt='ajax-loader' />";
               }
            }
            url = "{!! url('/') !!}";
            menu = "{!! $menu->id !!}";
            ajaxRequest.open("GET", url+"/menu/pages/position?menu="+menu+"&jsonstring=" + jsonstring + "&rand=" + Math.random()*9999, true);
            ajaxRequest.send(null);
         }
      }

		$(document).ready(function(){
			/* The output is ment to update the nestableMenu-output textarea
			* So this could probably be rewritten a bit to only run the menu_updatesort function onchange
			*/
			var updateOutput = function(e){
				var list   = e.length ? e : $(e.target),
					output = list.data('output');
				if (window.JSON) {
					output.val(window.JSON.stringify(list.nestable('serialize')));//, null, 2));
					menu_updatesort(window.JSON.stringify(list.nestable('serialize')));
				} else {
					output.val('JSON browser support required for this demo.');
				}
			};

			// activate Nestable for list menu
			$('#nestableMenu').nestable({
				group: 1
			})
			.on('change', updateOutput);

			// output initial serialised data
			updateOutput($('#nestableMenu').data('output', $('#nestableMenu-output')));

			$('#nestable-menu').on('click', function(e)
			{
				var target = $(e.target),
					action = target.data('action');
				if (action === 'expand-all') {
					$('.dd').nestable('expandAll');
				}
				if (action === 'collapse-all') {
					$('.dd').nestable('collapseAll');
				}
			});

			$('#nestable3').nestable();
		});
	</script>
@endsection
