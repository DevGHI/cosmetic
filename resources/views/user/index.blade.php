@extends('user.layout.master')

@section('title')
    Home
@endsection

@section('banner')
 <!-- Banner Starts Here -->
 <div class="banner">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <div class="caption">
            <h2>Summer Shop</h2>
            <div class="line-dec"></div>
            <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, </p>
            <div class="main-button">
              <a href="order.html">Order Now!</a>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <!-- Banner Ends Here -->
@endsection
@section('content')
       
         <!-- Page Content -->
         @foreach ($categories as $main)
         @foreach ($main['subcategories_data'] as $item)

         @if(count($item['product_data'])!=0)
 <!-- Featured Starts Here -->
 <div class="featured-items">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <div class="section-heading">
            <div class="line-dec"></div>
            <a href="{{ url('category/'.$item['id']) }}"><h1>{{ $item['name'] }}</h1></a>
          </div>
        </div>
        <div class="col-md-12">
          <div class="owl-carousel owl-theme">
            @foreach ($item['product_data'] as $product)
            <a href="{{ url('product/'.$product['id']) }}">
              <div class="featured-item">
                <img src="{{ $product['photo'][0]['photo_url']}}" alt="Item 1" style="height:250px;object-fit:cover">
                
                <h4>{{ $product['name'] }}</h4>
                <h6>{{ $product['price'] }} MMK</h6>
                <p>{{ $product['subcategory']['name'] }}</p>
              </div>
            </a>
            @endforeach
           
          </div>
        </div>
      </div>
    </div>
  </div>
  <!-- Featred Ends Here -->
         @endif
         @endforeach
         @endforeach
   
       
      <!-- Subscribe Form Starts Here -->
      <div class="subscribe-form">
        <div class="container">
          <div class="row">
            <div class="col-md-12">
              <div class="section-heading">
                <div class="line-dec"></div>
                <h1>Subscribe on PIXIE now!</h1>
              </div>
            </div>
            <div class="col-md-8 offset-md-2">
              <div class="main-content">
                <p>Integer vel turpis ultricies, lacinia ligula id, lobortis augue. Vivamus porttitor dui id dictum efficitur. Phasellus vel interdum elit.</p>
                <div class="container">
                  <form id="subscribe" action="" method="get">
                    <div class="row">
                      <div class="col-md-7">
                        <fieldset>
                          <input name="email" type="text" class="form-control" id="email" 
                          onfocus="if(this.value == 'Your Email...') { this.value = ''; }" 
                          onBlur="if(this.value == '') { this.value = 'Your Email...';}"
                          value="Your Email..." required="">
                        </fieldset>
                      </div>
                      <div class="col-md-5">
                        <fieldset>
                          <button type="submit" id="form-submit" class="button">Subscribe Now!</button>
                        </fieldset>
                      </div>
                    </div>
                  </form>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <!-- Subscribe Form Ends Here -->
  
  




      @endsection