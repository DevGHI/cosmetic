@extends('user.layout.master')

@section('title')
    FashionShop | Checkout
@endsection

@section('content')
   <!-- order Page Starts Here -->
   <div class="contact-page">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <div class="section-heading">
            <div class="line-dec"></div>
            <h1>0rder</h1>
          </div>
        </div>
       

        <div class="col-md-8">
          <div class="right-content">
            <div class="container">
              <form id="order_form" action="#" method="post">
                <div class="row">
                  <div class="col-md-4">
                    <fieldset>
                        <input type="text" class="form-control" id="first_name" value="{{ $user_info['name'] }}" placeholder="Your Name..." required>
                    </fieldset>
                  </div>
                  <div class="col-md-4">
                      <fieldset>
                        <input type="tel" class="form-control" id="last_name" value="{{ $user_info['phone'] }}" placeholder="Your Phone...." required>
                      </fieldset>
                    </div>
                  
                  <div class="col-md-6">
                      <fieldset>
                        <select name="township_id" class="form-control"  id="township_id" required style="width: 100%">
                            <option value="{{ $user_info['township_id'] }}" selected>{{ $user_info['township_name'] }}</option>
                            @foreach ($township as $item)
                                <option value="{{ $item['id'] }}">{{ $item['name'] }}</option>
                            @endforeach
                        </select>
                      </fieldset><br>
                    </div>
                  
                  <div class="col-md-12">
                    <fieldset>
                      <textarea name="address" rows="3" class="form-control" id="address" placeholder="Your address..." required="">{{ $user_info['address'] }}</textarea>
                    </fieldset>
                  </div>

                 

                  <div class="col-md-4">
                    <fieldset>
                        <label>Receive Date</label>
                        <input type="date" name="receive_date" placeholder="Enter Receieve Date" class="form-control mb-3" id="street_address" required>
                    </fieldset>
                  </div>

                  <div class="col-md-4">
                    <fieldset>
                        <label>Receive Time</label>
                        <input type="time" name="receive_time" placeholder="Enter Receive Time" class="form-control mb-3" id="street_address" required>
                    </fieldset>
                  </div>
                  <div style="display: none">
                    {{ $i=0 }}
                    @foreach ($cart as $item)
                        <input type="hidden" name="product_id[{{ $i }}]" value="{{ $item }}">
                        <input type="hidden" name="quantity[{{ $i }}]" value="1">
                        {{ $i++ }}
                    @endforeach
    
                  </div>
                 
                  <input type="hidden" name="web" value="1">
                  <input type="hidden" name="user_id" value="{{ $user_info['user_id'] }}">


                  <div class="col-md-12">
                    <fieldset>
                      <button type="submit" id="form-submit" class="button">Comfirm Order</button>
                        {{-- <input type="submit" value="Confrim Order" class="button"> --}}
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
  <!-- order Page Ends Here -->





@endsection

@section('js')
<script>
    var form=document.getElementById('order_form');
    form.setAttribute('action',domain+'api/orders');
    </script>

@endsection