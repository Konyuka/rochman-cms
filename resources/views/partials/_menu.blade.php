<div class="main-menu menu-fixed menu-dark menu-accordion menu-shadow" data-scroll-to-active="true">
   <div class="main-menu-content">
   <ul class="navigation navigation-main" id="main-menu-navigation" data-menu="menu-navigation">
      {{-- <li class="nav-item {!! Nav::isRoute('cms.dashboard') !!}">
         <a href="{!! url('/') !!}"><i class="la la-home"></i><span class="menu-title" data-i18n="Dashboard">Dashboard</span></a>
      </li> --}}
      <li class=" navigation-header">
         <span data-i18n="Admin Panels">Pages</span>
         <i class="la la-ellipsis-h" data-toggle="tooltip" data-placement="right" data-original-title="Admin Panels"></i>
      </li>
     
      <li class="nav-item {!! Nav::isResource('posts') !!}">
         <a href="#"><i class="fal fa-page-break"></i><span class="menu-title">Blog</span></a>
         <ul class="menu-content">
            <li><a class="menu-item" href="{!! route('posts.index') !!}"><i></i><span>All Posts</span></a></li>
            <li><a class="menu-item" href="{!! route('posts.create') !!}"><i></i><span>Add Post</span></a></li>
         </ul>
      </li>
      
   </div>
</div>
