@extends('user.layout.master')

@section('title')
FashionShop |  {{ $category }}
@endsection


@section('content')
        <div class="container">
          <div class="row">
            <div class="col-md-4">
              <div class="shop_sidebar_area">

                <!-- ##### Single Widget ##### -->
                <div class="widget catagory mb-50" style="margin-top: 100px">
                    <!-- Widget Title -->
                    <h6 class="widget-title mb-30">Catagories</h6>

                    <!--  Catagories  -->
                    <div class="catagories-menu">
                        <ul id="menu-content2" class="menu-content collapse show">
                            <!-- Single Item -->
                            @foreach ($categories as $item)
                            <li data-toggle="collapse" data-target="#{{ $item['name'] }}">
                                <a href="#" style="color: blue">{{ $item['name'] }}</a>
                                <ul class="sub-menu collapse show" id="{{ $item['name'] }}">
                                    
                                    @foreach ($item['subcategories_data'] as $data)
                                    <li><a href="{{ url('category/'.$data['id']) }}">{{ $data['name'] }}</a></li>
                                    @endforeach
                                </ul>
                            </li> 
                            @endforeach
                           
                        </ul>
                    </div>
                </div>

            </div>
            </div>
            <div class="col-md-8">
              <!-- Items Starts Here -->
              <div class="featured-page">
                <div class="container">
                  <div class="row">
                    <div class="col-md-12 col-sm-12">
                      <div class="section-heading">
                        <div class="line-dec"></div>
                        <h1> {{ $category }}</h1>
                      </div>
                    </div>
                  
                  </div>
                </div>
              </div>

              <div class="featured container no-gutter">

                  <div class="row posts">
                    @foreach ($products['data'] as $item)
                      <div id="1" class="item men col-md-4">
                        <a href="{{ url('product/'.$item['id']) }}">
                          <div class="featured-item">
                            <img src="{{ $item['photo'][0]['photo_url']}}" alt="" style="height:250px;object-fit:cover">
                            <h4>{{ $item['name'] }}</h4>
                            <h6>{{ $item['price'] }} MMK</h6>
                          </div>
                        </a>
                      </div>
                      @endforeach
                  
                  </div>
              </div>

              <div class="page-navigation">
                <div class="container">
                  <div class="row">
                    <div class="col-md-12">
                        {{ $products['paginate']->links() }}
                    </div>
                  </div>
                </div>
              </div>
              <!-- Featred Page Ends Here -->

            </div>
          </div>
        </div>
          

@endsection