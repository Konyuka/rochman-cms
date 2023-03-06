<!DOCTYPE html>
<html class="loading" lang="en" data-textdirection="ltr">
	<!-- BEGIN: Head-->
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
										<h6 class="card-subtitle line-on-side text-muted text-center font-small-3 pt-2"><span>Login</span></h6>
									</div>
									<div class="card-content">
										<div class="card-body pt-0 mb-3">
											<form class="form-horizontal" action="{{ route('login') }}" method="post">
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
												<fieldset class="form-group floating-label-form-group mb-1">
													<label for="user-password">Enter Password</label>
													<input type="password" class="form-control @error('password') is-invalid @enderror" name="password" placeholder="Enter Password">
													@error('password')
														<span class="invalid-feedback" role="alert">
															<strong>{{ $message }}</strong>
														</span>
													@enderror
												</fieldset>
												<div class="form-group row">
													<div class="col-sm-6 col-12 text-center text-sm-left">
														<fieldset>
														<input type="checkbox" id="remember-me" class="chk-remember">
														<label for="remember-me"> Remember Me</label>
														</fieldset>
													</div>
													<div class="col-sm-6 col-12 float-sm-left text-center text-sm-right">
														<a href="{{ route('password.request') }}" class="card-link">Forgot Password?</a>
													</div>
												</div>
												<button type="submit" class="btn btn-outline-info btn-block"><i class="ft-unlock"></i> Login</button>
											</form>
										</div>
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
