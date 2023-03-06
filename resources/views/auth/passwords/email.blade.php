<!DOCTYPE html>
<html class="loading" lang="en" data-textdirection="ltr">
	<!-- BEGIN: Head-->
	@section('title','Reset Password')
	@include('partials._head')

  <!-- BEGIN: Body-->
  <body class="vertical-layout vertical-menu-modern 1-column  bg-cyan bg-lighten-2 blank-page" data-open="click" data-menu="vertical-menu-modern" data-col="1-column">
		<!-- BEGIN: Content-->
		<div class="app-content content">
			<div class="content-overlay"></div>
			<div class="content-wrapper">
				<div class="content-header row">
				</div>
				<div class="content-body">
					<section class="row flexbox-container">
						<div class="col-12 d-flex align-items-center justify-content-center">
							<div class="col-lg-4 col-md-8 col-10 box-shadow-2 p-0">
								<div class="card border-grey border-lighten-3 m-0">
									<div class="card-header border-0">
										<div class="card-title text-center">
											<div class="p-1">
												<h1><img src="{!! asset('assets/favicon/android-icon-144x144.png') !!}" alt="LimitlessCMS" style="width:8%"> Wingu CMS</h1>
											</div>
										</div>
										<h6 class="card-subtitle line-on-side text-muted text-center font-small-3 pt-2"><span>Reset Password</span></h6>
									</div>
									<div class="card-content">
										<div class="card-body pt-0">
											@if (session('status'))
												<div class="alert alert-success" role="alert">
													{{ session('status') }}
												</div>
											@endif
											<form class="form-horizontal" action="{{ route('password.email') }}" method="post">
												@csrf
												<fieldset class="form-group floating-label-form-group">
													<label for="user-name">Your Email</label>
													<input type="email" class="form-control @error('email') is-invalid @enderror" name="email" placeholder="Your Email" value="{{ old('email') }}">
													@error('email')
														<span class="invalid-feedback" role="alert">
															<strong>{{ $message }}</strong>
														</span>
													@enderror
												</fieldset>
												<button type="submit" class="btn btn-outline-info btn-block"><i class="ft-unlock"></i> Send Password Reset Link</button>
											</form>
										</div>
									</div>
									<div class="card-footer border-0">
										<p class="text-center"><a href="{!! url('/') !!}" class="card-link">Login</a></p>
									 </div>
								</div>
							</div>
						</div>
					</section>
				</div>
			</div>
		</div>
		<!-- END: Content-->
	 	@include('partials._javascripts')
	</body>
	<!-- END: Body-->
</html>
