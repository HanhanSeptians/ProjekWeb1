<?php

    include '../navbar/navbar.php';

?>

<html>
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>PUJ</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">List Kantor</a></li>
              <li class="breadcrumb-item active">PUJ</li>
            </ol>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>
     <!-- /.row -->

  

<div class="row">
  <div class="col-12">
    <!-- Custom Tabs -->
    <div class="card text-white bg-primary mb-3">
      <div class="card-header d-flex p-0">
        <h3 class="card-title p-3">Today</h3>
        <h3 class="card-title p-3" id="date" style="color:lightgrey;"></h3>

      </div><!-- /.card-header -->
      <div class="card-body">
        <div class="tab-content">
          <div class="tab-pane active" id="tab_1">
          <table class="table table-borderless">
  <thead>
    <tr>
      
      <th scope="col">0</th>
      <th scope="col">0</th>
      <th scope="col">0</th>
    </tr>
  </thead>
  <tfoot>
      <tr>
        <th>Total</th>
        <th>Stock In</th>
        <th>Stock Out</th>
      </tr>
  </tfoot>
</table>
            
          </div>  
        </div>
        <!-- /.tab-content -->
      </div><!-- /.card-body -->
    </div>
    <!-- ./card -->
  </div>
  <!-- /.col -->
</div>
<!-- /.row -->
<!-- END CUSTOM TABS -->

     <div class="row">
          <div class="col-md-6">
            <div class="card">
              <div class="card-header">
                <h3 class="card-title">
                  
                  Add Item
                </h3>
              </div>
              <!-- /.card-header -->
              <div class="card-body">
              <i class="fas fa-plus-square"></i>
                <a href="input_item.php" style="color:black;">Register New Items</a> <br>
              <i class="fa-solid fa-file-excel"></i>  
                <a href="input_item.php" style="color:black;">Register by Excel Files</a> <br>
                
              </div>
              <!-- /.card-body -->
            </div>
            <!-- /.card -->
          </div>
          <!-- ./col -->
          <div class="col-md-6">
          <div class="card ">
              <div class="card-header">
                <h3 class="card-title">
                  Stock In / Out
                </h3>
              </div>
              <!-- /.card-header -->
              <div class="card-body clearfix">
              <i class="fa-solid fa-circle-down"></i>
                <a href="input_item.php"style="color:black;">Stock IN</a> <br>
                <i class="fa-solid fa-circle-up"></i>
                <a href="input_item.php"style="color:black;">Stock Out</a>  <br>
                <i class="fa-solid fa-file-lines"></i>
                <a href="input_item.php"style="color:black;">Audit</a>
              </div>
              <!-- /.card-body -->
            </div>
            <!-- /.card -->
          </div>
          <!-- ./col -->
        </div>
        <!-- /.row -->

    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        <div class="row">
          <div class="col-12">
            <div class="card">
              <div class="card-header">
                <h3 class="card-title">Production Unit Jakarta</h3>
              </div>
              <!-- /.card-header -->
              <div class="card-body">
                <table class="table table-bordered table-striped">
                  <thead>
                    <tr>
                      <th style="width: 10px">No</th>
                      <th>No.Inventaris</th>
                      <th>Deskripsi Inventaris</th>
                      <th>Tahun Perolehan</th>
                      <th>Acquis Val / Nilai Perolehan</th>
                      <th>Cost Center</th>
                      <th>Location</th>
                      <th>Kondisi</th>
                      <th>Paraf</th>
                      <th>Keterangan</th>
                    </tr>
                  </thead>
                  <tbody>
                    <tr>
                      <td>1.</td>
                      <td>101</td>
                      <td>Kursi tamu merah 1 set</td>
                      <td>2020</td>
                      <td>12345</td>
                      <td>12345</td>
                      <td>Gedung Utama PUJ Lt. 1</td>
                      <td>DB</td>
                      <td> in paraf</td>
                      <td>Aset Berharga</td>
                    </tr>
                    <tr>
                      <td>1.</td>
                      <td>101</td>
                      <td>Kursi tamu merah 1 set</td>
                      <td>2020</td>
                      <td>12345</td>
                      <td>12345</td>
                      <td>Gedung Utama PUJ Lt. 1</td>
                      <td>DB</td>
                      <td> in paraf</td>
                      <td>Aset Berharga</td>
                    </tr>
                    <tr>
                      <td>1.</td>
                      <td>101</td>
                      <td>Kursi tamu merah 1 set</td>
                      <td>2020</td>
                      <td>12345</td>
                      <td>12345</td>
                      <td>Gedung Utama PUJ Lt. 1</td>
                      <td>DB</td>
                      <td> in paraf</td>
                      <td>Aset Berharga</td>
                    </tr>
                    <tr>
                      <td>1.</td>
                      <td>101</td>
                      <td>Kursi tamu merah 1 set</td>
                      <td>2020</td>
                      <td>12345</td>
                      <td>12345</td>
                      <td>Gedung Utama PUJ Lt. 1</td>
                      <td>DB</td>
                      <td> in paraf</td>
                      <td>Aset Berharga</td>
                    </tr>
                    <tr>
                      <td>1.</td>
                      <td>101</td>
                      <td>Kursi tamu merah 1 set</td>
                      <td>2020</td>
                      <td>12345</td>
                      <td>12345</td>
                      <td>Gedung Utama PUJ Lt. 1</td>
                      <td>DB</td>
                      <td> in paraf</td>
                      <td>Aset Berharga</td>
                    </tr>
                  </tbody>
                </table>
              </div>
              <!-- /.card-body -->
              <div class="card-footer clearfix">
                <ul class="pagination pagination-sm m-0 float-right">
                  <li class="page-item"><a class="page-link" href="#">&laquo;</a></li>
                  <li class="page-item"><a class="page-link" href="#">1</a></li>
                  <li class="page-item"><a class="page-link" href="#">2</a></li>
                  <li class="page-item"><a class="page-link" href="#">3</a></li>
                  <li class="page-item"><a class="page-link" href="#">&raquo;</a></li>
                </ul>
              </div>
            </div>
            <!-- /.card -->
              </div>
              <!-- /.card-body -->
            </div>
            <!-- /.card -->
          </div>
        </div>
        <!-- /.row -->
      </div><!-- /.container-fluid -->
    </section>
    <!-- /.content -->
  </div>
</html>


<script>
  //Date
      n =  new Date();
      y = n.getFullYear();
      m = n.getMonth() + 1;
      d = n.getDate();
      document.getElementById("date").innerHTML = m + "/" + d + "/" + y;
</script>