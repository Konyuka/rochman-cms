<head>
   <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
   <meta name="description" content="LimitlessCMS">
   <meta name="keywords" content="Wingu CMS">
   <meta name="author" content="Blue tree agency">
   <meta name="csrf-token" content="{{ csrf_token() }}">
   <title>@yield('title')</title>
   <link rel="apple-touch-icon" href="{!! asset('assets/favicon/apple-icon-120.png') !!}">
   <link rel="shortcut icon" type="image/x-icon" href="{!! asset('assets/favicon/favicon.ico') !!}">
   <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i%7CQuicksand:300,400,500,700" rel="stylesheet">

   <!-- BEGIN: Vendor CSS-->
   <link rel="stylesheet" type="text/css" href="{!! asset('assets/vendors/css/vendors.min.css') !!}">
   <link rel="stylesheet" type="text/css" href="{!! asset('assets/vendors/css/tables/datatable/datatables.min.css') !!}">
   <link rel="stylesheet" type="text/css" href="{!! asset('assets/vendors/css/forms/selects/select2.min.css') !!}">
   <!-- END: Vendor CSS-->

   <!-- BEGIN: Theme CSS-->
   <link rel="stylesheet" type="text/css" href="{!! asset('assets/css/bootstrap.min.css') !!}">
   <link rel="stylesheet" type="text/css" href="{!! asset('assets/css/bootstrap-extended.min.css') !!}">
   <link rel="stylesheet" type="text/css" href="{!! asset('assets/css/colors.min.css') !!}">
   <link rel="stylesheet" type="text/css" href="{!! asset('assets/css/components.min.css') !!}">
   <!-- END: Theme CSS-->

   <!-- BEGIN: Page CSS-->
   <link rel="stylesheet" type="text/css" href="{!! asset('assets/css/core/menu/menu-types/vertical-menu-modern.css') !!}">
   <link rel="stylesheet" type="text/css" href="{!! asset('assets/css/core/colors/palette-gradient.min.css') !!}">
   <link rel="stylesheet" type="text/css" href="{!! asset('assets/fonts/simple-line-icons/style.min.css') !!}">
   <link rel="stylesheet" type="text/css" href="{!! asset('assets/css/core/colors/palette-gradient.min.css') !!}">
   <link rel="stylesheet" type="text/css" href="{!! asset('assets/fonts/fontawesome/css/all.min.css') !!}">
   <!-- END: Page CSS-->

   <!-- BEGIN: Custom CSS-->
   <link rel="stylesheet" type="text/css" href="{!! asset('assets/css/style.css') !!}">
   <link rel="stylesheet" type="text/css" href="{!! asset('assets/css/status.css') !!}">
   <!-- END: Custom CSS-->

   <link rel="stylesheet" type="text/css" href="{!! asset('assets/css/pages/dropzone.min.css') !!}">
   <link rel="stylesheet" href="{{ asset('vendor/file-manager/css/file-manager.css') }}">
   
   @yield('stylesheets')
</head>