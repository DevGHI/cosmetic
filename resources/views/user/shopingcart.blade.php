@extends('user.layout.master')

@section('title')
FashionShop | Cart
@endsection


@section('content')
  
           <!-- Items Starts Here -->
           <div class="featured-page">
            <div class="container">
              <div class="row">
                <div class="col-md-12 col-sm-12">
                    <table class="table">
                        <thead>
                            <tr>
                            <th scope="col">#</th>
                            <th scope="col">Photo</th>
                            <th scope="col">Name</th>
                            <th scope="col">Price</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach ($products as $item)
                            <tr>
                                <th scope="row">1</th>
                                <td>
                                    <img src="{{ $item['photo'][0]['photo_url']}}" alt="Item 1" style="height:80px;width:80px;object-fit:cover">
                                </td>
                                <td>{{ $item['name'] }}</td>
                                <td>{{ $item['price'] }}</td>
                                <td>
                                    <input type="button" onclick="delete_cart({{ $item['id'] }})" class="btn btn-danger" value="Delete">
                                </td>
                                </tr>  
                            @endforeach
                            
                            
                        </tbody>
                    </table>
               
                     {{-- <a href="{{ url('checkout') }}" value="Checkout" class="btn btn-success"> --}}
               
               
                </div>
               
              </div>
              <div class="row">
                  <div class="col-md-9"></div>
                  <div class="col-md-3">
                    <input type="button" value="Checkout" class="btn btn-primary" onclick="check_login()">
                  </div>
              </div>
             
            </div>
          </div>
       
      

@endsection

