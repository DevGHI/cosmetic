
    <!-- Navigation -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark static-top">
        <div class="container">
          <a class="navbar-brand" href="{{ url('/') }}"><img src="{{ url('user/assets/images/header-logo.png') }}" alt=""></a>
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse" id="navbarResponsive">
            <ul class="navbar-nav ml-auto">
              <li class="nav-item active">
                <a class="nav-link" href="{{ url('/') }}">Home
                  <span class="sr-only">(current)</span>
                </a>
              </li>
              {{-- <li class="nav-item"> --}}
                {{-- <a class="nav-link" href="{{ url('category/'.$categories[0]['subcategories_data'][0]['id']) }}">Products</a> --}}
              {{-- </li> --}}
              {{-- <li class="nav-item">
                <a class="nav-link" href="{{ url('about') }}">About Us</a>
              </li> --}}
              <li class="nav-item">
                <a class="nav-link" href="{{ url('contact') }}">Contact Us</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="{{ url('shopingcart') }}">Cart  <span class="cart_count" style="background: blue;color:white;border-radius:50%;padding:10px">0</span></a>
              </li>
            </ul>
          </div>
        </div>
      </nav>
  