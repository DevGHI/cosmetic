<!DOCTYPE html>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link href="https://fonts.googleapis.com/css?family=Roboto:100,300,400,500,700" rel="stylesheet">

    <title>PIXIE</title>

    <!-- Bootstrap core CSS -->
    <link href="{{ url('user/assets/css/bootstrap.min.css') }}" rel="stylesheet">


    <!-- Additional CSS Files -->
    <link rel="stylesheet" href="{{ url('user/assets/css/fontawesome.css') }}">
    <link rel="stylesheet" href="{{ url('user/assets/css/tooplate-main.css') }}">
    <link rel="stylesheet" href="{{ url('user/assets/css/owl.css') }}">
    <link rel="stylesheet" href="{{ url('user/assets/css/flex-slider.css') }}">




  </head>

  <body>
    @include('user.layout.header')

    @yield('banner')
   

    @yield('content')

    @include('user.layout.footer')

    <!-- Bootstrap core JavaScript -->
    <script src="{{ url('user/assets/js/jquery.min.js') }}"></script>
    <script src="{{ url('user/assets/js/bootstrap.bundle.min.js') }}"></script>


    <!-- Additional Scripts -->
    <script src="{{ url('user/assets/js/custom.js') }}"></script>
    <script src="{{ url('user/assets/js/owl.js') }}"></script>
    <script src="{{ url('user/assets/js/isotope.js') }}"></script>
    <script src="{{ url('user/assets/js/flex-slider.js') }}"></script>
    <script language = "text/Javascript"> 
      cleared[0] = cleared[1] = cleared[2] = 0; //set a cleared flag for each field
      function clearField(t){                   //declaring the array outside of the
      if(! cleared[t.id]){                      // function makes it static and global
          cleared[t.id] = 1;  // you could use true and false, but that's more typing
          t.value='';         // with more chance of typos
          t.style.color='#fff';
          }
      }
    </script>

    <script type="text/javascript" src="https://platform-api.sharethis.com/js/sharethis.js#property=5e7f57858c38cd0019ecf42a&product=inline-share-buttons" async="async"></script>


    <script src="https://unpkg.com/axios/dist/axios.min.js"></script>
    <script src="{{ asset('js/customjs/helper.js') }}"></script>
    <script src="{{ asset('js/customjs/CookieUtil.js') }}"></script>
    <script src="{{ asset('js/customjs/cart.js') }}"></script>
    
{{--//success noti message alert plugin--}}
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

<script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>
@yield('js')
  </body>

</html>
