<!DOCTYPE html>
<html class="loading" lang="en" data-textdirection="ltr">
  <!-- BEGIN: Head-->
	@include('partials._head')
	<!-- END: Head-->
	<!-- BEGIN: Body-->
	<body class="vertical-layout vertical-menu-modern 2-columns   fixed-navbar" data-open="click" data-menu="vertical-menu-modern" data-col="2-columns">
			<!-- BEGIN: Header-->
			@include('partials._header')
			
			<!-- END: Header-->
			<!-- BEGIN: Main Menu-->
			@include('partials._menu')
			<!-- END: Main Menu-->
			<!-- BEGIN: Content-->
			<div class="app-content content">
				<div class="content-overlay"></div>
				<div class="content-wrapper">
					@yield('breadcrumb')
					<div class="content-body">
						@yield('content')
					</div>
				</div>
			</div>
			<!-- END: Content-->
			<!-- BEGIN: Customizer-->
			@include('partials._customizer')			
			<!-- End: Customizer-->
		<!-- Buynow Button-->
		{{-- <div class="buy-now"><a href="#" target="_blank" class="btn btn-info btn-glow round px-2"><i class="fal fa-headset"></i></a></div> --}}
		<div class="sidenav-overlay"></div>
		<div class="drag-target"></div>

		<!-- BEGIN: Footer-->
		<footer class="footer footer-static footer-light navbar-border navbar-shadow">
			<p class="clearfix blue-grey lighten-2 text-sm-center mb-0 px-2">
				<span class="float-md-left d-block d-md-inline-block">Copyright &copy; 2018 - @php echo date('Y') @endphp
					<a class="text-bold-800 grey darken-2" href="" target="_blank">Tech Duka</a>
				</span>
			</p>
		</footer>
		<!-- END: Footer-->
		
		@include('partials._javascripts')
	</body>
	<!-- END: Body-->
</html>