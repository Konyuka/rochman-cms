
<!DOCTYPE html>
<html>
	@include('partials._head')
	<body class="auth-wrapper">
		<div class="all-wrapper menu-side with-pattern">
			<div class="auth-box-w">
				<div class="logo-w">
					<a href="{!! url('/') !!}"><img alt="" src="{!! url('/') !!}/public/img/logo-big2.png"></a>
				</div>
            <h4 class="auth-header">Verify Your Email Address</h4>
            <div class="row">
               <div class="col-md-12">
                  <div class="container">
                     <div class="alert alert-success no-border">
                        <p class="text-center">
                           @if (session('resent'))
                              <div class="alert alert-success" role="alert">
                                 {{ __('A fresh verification link has been sent to your email address.') }}
                              </div>
                           @endif
                           {{ __('Before proceeding, please check your email for a verification link.') }}
                           {{ __('If you did not receive the email') }},
                           <form class="d-inline" method="POST" action="{{ route('verification.resend') }}">
                              @csrf
                              <center><button type="submit" class="btn btn-primary">{{ __('click here to request another') }}</button>.</center>
                           </form>
                        </p>
                     </div>
                  </div>
               </div>
            </div>
			</div>
		</div>
	</body>
</html> 