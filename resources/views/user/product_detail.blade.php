@extends('user.layout.master')

@section('title')
FashionShop | {{ $product['name'] }}
@endsection


@section('content')
  

    <!-- Page Content -->
    <!-- Single Starts Here -->
    <div class="single-product">
        <div class="container">
          <div class="row">
            <div class="col-md-12">
              <div class="section-heading">
                <div class="line-dec"></div>
                <h1>Single Product</h1>
              </div>
            </div>
            <div class="col-md-6">
              <div class="product-slider">
                <div id="slider" class="flexslider">
                  <ul class="slides">
                       
                @foreach ($product['photo'] as $item)
                    <li>
                    <img src="{{ $item['photo_url'] }}"style="height: 350px;width:100%;object-fit:cover" />
                  </li> 
                @endforeach
                   
                    <!-- items mirrored twice, total of 12 -->
                  </ul>
                </div>
                <div id="carousel" class="flexslider">
                  <ul class="slides">
                    @foreach ($product['photo'] as $item)
                        <li>
                        <img src="{{ $item['photo_url'] }}"style="height: 80px;width:100%;object-fit:cover" />
                    </li> 
                    @endforeach
                   
                   
                    <!-- items mirrored twice, total of 12 -->
                  </ul>
                </div>
              </div>
            </div>
            <div class="col-md-6">
              <div class="right-content">
                <h4>{{ $product['name'] }}</h4>
                <h6>{{ $product['price'] }} MMK</h6>
                <p>{{ $product['detail'] }}</p>
               
               
                      <button type="button" class="btn btn-primary text-white" onclick="add_to_cart({{ $product['id'] }})">Add To Cart</button>
            
                <div class="down-content">
                  <div class="categories">
                    <h6>Category: <span><a href="{{ url('category/'.$product['subcategory']['id']) }}">{{ $product['subcategory']['name'] }}MMK</a></span></h6>
                  </div>
                  <div class="categories">
                    <h6>Color: <span>{{ implode(",",json_decode($product['color_name'],true))}}</span></h6>
                  </div>
                  <div class="share">
                    <h6>Share: <span><div class="sharethis-inline-share-buttons"></div></span></h6>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <!-- Single Page Ends Here -->
  
  
    
@endsection