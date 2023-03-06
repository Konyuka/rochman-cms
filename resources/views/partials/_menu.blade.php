<div class="main-menu menu-fixed menu-dark menu-accordion menu-shadow" data-scroll-to-active="true">
   <div class="main-menu-content">
   <ul class="navigation navigation-main" id="main-menu-navigation" data-menu="menu-navigation">
      <li class="nav-item {!! Nav::isRoute('cms.dashboard') !!}">
         <a href="{!! url('/') !!}"><i class="la la-home"></i><span class="menu-title" data-i18n="Dashboard">Dashboard</span></a>
      </li>
      <li class=" navigation-header">
         <span data-i18n="Admin Panels">Pages</span>
         <i class="la la-ellipsis-h" data-toggle="tooltip" data-placement="right" data-original-title="Admin Panels"></i>
      </li>
      <li class="nav-item {!! Nav::isRoute('pages.index') !!}">
         <a href="{!! route('pages.index') !!}">
            <i class="fal fa-file"></i><span class="menu-title">Pages</span>
         </a>
      </li>
      <li class="nav-item {!! Nav::isRoute('pages.create') !!}">
         <a href="{!! route('pages.create') !!}">
            <i class="fal fa-file-upload"></i><span class="menu-title">Add Page</span>
         </a>
      </li>
      <li class="nav-item {!! Nav::isResource('menu') !!}">
         <a href="{!! route('menu.index') !!}">
            <i class="far fa-bars"></i><span class="menu-title">Page Menu</span>
         </a>
      </li>
      <li class="nav-item {!! Nav::isResource('slider') !!}">
         <a href="{!! route('slider.index') !!}">
            <i class="fal fa-images"></i><span class="menu-title">Sliders</span>
         </a>
      </li>
      <li class="nav-item {!! Nav::isResource('posts') !!}">
         <a href="#"><i class="fal fa-page-break"></i><span class="menu-title">Blog</span></a>
         <ul class="menu-content">
            <li><a class="menu-item" href="{!! route('posts.index') !!}"><i></i><span>All Posts</span></a></li>
            <li><a class="menu-item" href="{!! route('posts.create') !!}"><i></i><span>Add Post</span></a></li>
         </ul>
      </li>
      <li class="nav-item {!! Nav::isResource('gallery') !!}">
         <a href="#"><i class="fal fa-photo-video"></i><span class="menu-title">Media</span></a>
         <ul class="menu-content">
            <li><a class="menu-item" href="{!! route('gallery.index') !!}"><i></i><span>All Media</span></a></li>
            <li><a class="menu-item" href="{!! route('gallery.create') !!}"><i></i><span>Add Media</span></a></li>
         </ul>
      </li>
      {{-- <li class=" navigation-header">
         <span data-i18n="Pages">Media</span>
         <i class="la la-ellipsis-h" data-toggle="tooltip" data-placement="right" data-original-title="Pages"></i>
      </li> --}}
      {{-- <li class="nav-item {!! Nav::isRoute('file.manager') !!}">
         <a href="{!! route('file.manager') !!}">
            <i class="fal fa-photo-video"></i>
            <span class="menu-title">Media</span>
         </a>
      </li> --}}
      <li class=" navigation-header"><span data-i18n="Pages">Properties</span><i class="la la-ellipsis-h" data-toggle="tooltip" data-placement="right" data-original-title="Pages"></i>
      <li class="nav-item {!! Nav::isRoute('duka.product.index') !!}">
         <a href="{!! route('duka.product.index') !!}">
            <i class="fal fa-house"></i>
            <span class="menu-title">Property</span>
         </a>
      </li>
      <li class="nav-item {!! Nav::isRoute('category') !!}">
         <a href="{!! route('duka.product.category') !!}">
            <i class="fal fa-sitemap"></i>
            <span class="menu-title">Categories</span>
         </a>
      </li>
      {{-- <li class="nav-item {!! Nav::isRoute('duka.product.inquiry') !!}">
         <a href="{!! route('duka.product.inquiry') !!}">
            <i class="fal fa-phone-office"></i>
            <span class="menu-title">Viewing Inquiry</span>
         </a>
      </li> --}}
   </div>
</div>
