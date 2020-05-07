




@extends('layouts.master')
@section('title')
Admin | OrderReport
@endsection

@section('content')


  
   <!-- Header -->
   <div class="header bg-primary pb-6">
    <div class="container-fluid">
      <div class="header-body">
        <div class="row align-items-center py-4">
          <div class="col-lg-6 col-7">
            <h6 class="h2 text-white d-inline-block mb-0">Order Report</h6>
            <nav aria-label="breadcrumb" class="d-none d-md-inline-block ml-md-4">
              <ol class="breadcrumb breadcrumb-links breadcrumb-dark">
                <li class="breadcrumb-item"><a href="#"><i class="fas fa-home"></i></a></li>
                <li class="breadcrumb-item"><a href="#">Tables</a></li>
                <li class="breadcrumb-item active" aria-current="page">Datatables</li>
              </ol>
            </nav>
          </div>
          <div class="col-lg-6 col-5 text-right">
            {{-- <button type="button" class="btn btn-sm btn-neutral" data-toggle="modal" data-target="#insertModal">Create</button> --}}
            {{-- <a href="#" class="btn btn-sm btn-neutral">New</a> --}}
            {{-- <a href="#" class="btn btn-sm btn-neutral">Filters</a> --}}
          </div>
        </div>
      </div>
    </div>
  </div>
  <!-- Page content -->
  <div class="container-fluid mt--6">
    <!-- Table -->
    <div class="row">
      <div class="col">
        <div class="card">
          <!-- Card header -->
          <div class="card-header">
            <h3 class="mb-0">Order Report</h3>
            {{-- <p>Order လက်ခံထားသောစရင်း မှ Start Date မှ End Date အထိ Product စုစုပေါင်းကိုပြပါမည်။ </p> --}}
            {{-- <form id="filter_form" class="form-inline">
                
                
                
            </form> --}}
            <form id="filter_form">
              <input type="hidden" name="status" value="accept">
              <div class="form-row">
                <div class="col">
                  <label for="">Start Date</label>
                  <input type="date" class="form-control" name="start_date" placeholder="Choose Start Date" required>
                </div>
                <div class="col">
                  <label for="">End Date</label>
                  <input type="date" class="form-control" name="end_date" placeholder="Choose End Date" required>
                </div>
                <div class="col" style="padding-top:32px">
                  <input type="submit" class="btn btn-primary" value="Show">
                </div>
              </div>
            </form>
            <p class="text-sm mb-0 myanmar">
              {{-- Product အားလုံး ဖြစ်သည်။ Product ကိုဖျက်ပါက Order များပါပျက်ပါမည်။ --}}
            </p>
          </div>
          <div class="table-responsive py-4">
            <table id="myTable" class="table table-flush">
              <thead>
                <tr>
                  <th>No</th>
                  <th>Name</th>
                  <th>Price</th>
                  <th>TotalQty</th>
                  <th>TotalAmount</th>
                  <th>Actions</th>
                </tr>
              </thead>
                <tbody>

                </tbody>
            </table>

          </div>
        </div>
      </div>
    </div>
  </div>


@endsection

@section('js')
  <script>

    $(document).ready( function () {
      var t=$('#myTable').DataTable({
        //"paging":   false,
        "ordering": false,
        "info":     false
      });


      document.getElementById('filter_form').addEventListener('submit',()=>{
        event.preventDefault();
        var form=new FormData(document.getElementById('filter_form'));
        axios.post(domain+'api/order_report',form,{
          headers: {
            Authorization: TokenData.get()
          }
        })
        .then(res=>{
            let arr=res.data.data;
            console.log(res);
            var no = 1;
            t.clear().draw();
            arr.forEach(element=>{
              t.row.add([
                      `${no++}`,
                      `${element.name}`,
                      `${element.price}`,
                      `${element.TotalQty}`,
                      `${element.TotalAmount}`,
                      `
                      <a href="{{url('product_detail/${element.id}')}}" target='_blank'><button type="" class="btn btn-sm btn-primary">Product Detail</button><a>
                        
                      `
                  ]).draw(false);
            });
        })
        .catch(err=>console.log(err));
      });

    });
  </script>
  
@endsection