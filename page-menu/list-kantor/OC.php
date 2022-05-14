<?php 
	session_start();
    if($_SESSION['status']!="login"){
      header("location:../login/login.php?pesan=belum_login");
    }
  include '../database/koneksi.php';
  include '../navbar/navbar.php';
?>
<html>
  <style>
    .mt--5 {
      margin-top : -30px;
    }
  </style>
  <div class="content-wrapper">
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Office Center</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">List Kantor</a></li>
              <li class="breadcrumb-item active">Office Center</li>
            </ol>
          </div>
        </div>
      </div>
    </section>
    <?php
      $batas = 50;
      $halaman = isset($_GET['halaman'])?(int)$_GET['halaman'] : 1;
      $halaman_awal = ($halaman>1) ? ($halaman * $batas) - $batas : 0;	
      $previous = $halaman - 1;
      $next = $halaman + 1;
      $sql = "SELECT * FROM `asset_oc`";
      $result = $conn->query($sql);
      $total = mysqli_num_rows($result);
      $total_halaman = ceil($total / $batas);
      $data_asset = mysqli_query($conn,"SELECT * FROM asset_oc limit $halaman_awal, $batas");
      $no = $halaman_awal+1;
    ?>
    <div class="row ml-2 mr-2">
      <div class="col-12">
        <div class="card text-white bg-primary mb-3">
          <div class="card-header d-flex p-0">
            <h3 class="card-title p-2">Today</h3>
            <h3 class="card-title p-2" id="date" style="color:lightgrey;"></h3>
          </div>
          <div class="card-body">
            <div class="tab-content">
              <div class="tab-pane active" id="tab_1">
                <table class="table table-borderless">
                  <thead>
                    <tr>
                      <th scope="col"><h2><?php echo $total ?></h2></th>
                        <?php
                          $sql1 = "SELECT * FROM `asset_rusak_berat` WHERE id_kantor = 'OC' ";
                          $result1 = $conn->query($sql1);
                          $totalAssetRusakBerat = mysqli_num_rows($result1);
                        ?>
                      <th scope="col"><h2><?php echo $totalAssetRusakBerat ?></h2></th>
                        <?php
                          $sql2 = "SELECT * FROM `asset_waktu_habis` WHERE id_kantor = 'OC' ";
                          $result2 = $conn->query($sql2);
                          $totalAssetUmurHabis = mysqli_num_rows($result2);
                        ?>
                      <th scope="col"><h2><?php echo $totalAssetUmurHabis ?></h2></th>
                    </tr>
                  </thead>
                  <tfoot>
                      <tr>
                        <th>Total</th>
                        <th>Asset Rusak Berat</th>
                        <th>Asset Waktu Habis</th>
                      </tr>
                  </tfoot>
                </table> 
              </div>  
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="row ml-2 mr-2">
      <div class="col-md-6">
        <div class="card">
          <div class="card-header">
            <h3 class="card-title"> 
              <b>Add Item</b>
            </h3>
          </div>
          <div class="card-body">
            <i class="fas fa-plus-square"></i>
              <a href="../input-data/inputData.php" style="color:black;">Tambah Asset Baru</a> <br>
            <i class="fa-solid fa-file-excel"></i>  
              <a href="input_item.php" style="color:black;">Tambah Asset dengan Excel</a> <br>
          </div>
        </div>
      </div>
      <div class="col-md-6">
        <div class="card ">
          <div class="card-header">
            <h3 class="card-title">
              <b>Low Stock Reminder</b>
            </h3>
          </div>
        <div class="card-body clearfix">
          <i class="fa-solid fa-house-crack fa-sm"></i>
            <a href="../delete-data/assetRusakBeratPUC.php"style="color:black;">Asset Rusak Berat</a> <br>
          <i class="fa-solid fa-hourglass-end mr-1"></i>
            <a href="../delete-data/assetUmurHabisPUC.php"style="color:black;">Asset Umur Habis</a>  <br>
        </div>
      </div>
    </div>
    <section class="content">
      <div class="container-fluid">
        <div class="row">
          <div class="col-12">
            <div class="card">
              <div class="card-header bg-dark">
                <h3 class="card-title">Production Unit Office Center</h3>
              </div>
              <div class="card-body">
                <table class="table table-bordered table-striped">
                  <thead>
                    <tr class="bg-primary">
                      <th align = center style="width: 10px"><h6 align="center"><b>No</b></h6></th>
                      <th style="width: 150px"><h6 align="center"><b>Jenis Asset</b></h6></th>
                      <th style="width: 150px"><h6 align="center"><b>Deskripsi Asset</b></h6></th>
                      <th style="width: 120px"><h6 align="center"><b>Kode Asset</b></h6></th>
                      <th style="width: 120px"><h6 align="center"><b>Merk/ Type</b></h6></th>
                      <th style="width: 30px"><h6 align="center"><b>Jumlah</b></h6></th>
                      <th style="width: 30px"><h6 align="center"><b>Ukuran</b></h6></th>
                      <th style="width: 100px"><h6 align="center"><b>Tahun Pengadaan</b></h6></th>
                      <th style="width: 250px"><h6 align="center"><b>Status Kepemilikan</b></h6></th>
                      <th style="width: 100px"><h6 align="center"><b>Lokasi</b></h6></th>
                      <th style="width: 150px"><h6 align="center"><b>Kondisi</b></h6></th>
                      <th style="width: 200px"><h6 align="center"><b>Asal-usul</b></h6></th>
                      <th style="width: 150px"><h6 align="center"><b>Harga</b></h6></th>
                      <th style="width: 120px"><h6 align="center"><b>Gambar</b></h6></th>
                      <th style="width: 120px"><h6 align="center"><b>Keterangan</b></h6></th>
                      <th style="width: 120px"><h6 align="center"><b>Aksi</b></h6></th>
                    </tr>
                  </thead>
                  <tbody>
                    <tr>
                    <?php
                      $sql = "SELECT * FROM `asset_oc`";
                      $result = $conn->query($sql);
                        if ($result->num_rows > 0) {
                          while ($row = $data_asset->fetch_assoc()) {
                      ?>
                      <td><center><?php echo $no++ ; ?></center></td>
                      <td><?php echo $row["jenis_asset"] ?></td>
                      <td><?php echo $row["deskripsi_asset"] ?></td>
                      <td><center><?php echo $row["kode_asset"] ?></center></td>
                      <td><?php echo $row["merk/type"] ?></td>
                      <td><center><?php echo $row["jumlah"] ?></center></td>
                      <td><center><?php echo $row["ukuran"] ?></center></td>
                      <td><center><?php echo $row["tahun_pengadaan"] ?></center></td>
                      <td><?php echo $row["id_status_kepemilikan"] ?></td>
                      <td><?php echo $row["deskripsi_lokasi"] ?></td>
                      <td><center><?php echo $row["id_kondisi"] ?></center></td>
                      <td><?php echo $row["asal_usul"] ?></td>
                      <td>Rp. <?php echo $row["harga"] ?></td>
                      <td>
                        <?php 
                          if ( $row["gambar"] == ''){
                        ?>
                          <center>
                          <?php
                            echo "No Image";
                          ?>
                          </center>
                        <?php  
                          }else{
                            echo "<img src='../input-data/GambarAsset/$row[gambar]' width='100'/>";
                          }
                        ?>
                      </td>
                      <td><?php echo $row["keterangan"] ?></td>
                      <td>
                        <a href="../input-data/editAssetOC.php? kode_asset=<?=$row["kode_asset"]?>">
                          <button class="bg-primary mr-4" style=" float:left">
                            <i class="fa-solid fa-pen-to-square fa-sm"></i>
                          </button>
                        </a>
                        <button class="bg-danger mt--5" style=" float:right"><i class="fa-solid fa-trash"></i></button>
                      </td>
                    </tr>
                      <?php
                          }
                        }else {
                          echo "0 results";
                        }
                        $conn->close();
                      ?>
                  </tbody>
                </table>
              </div>
              <div class="card-footer clearfix">
                <ul class="pagination pagination-sm m-0 float-right">
                  <li class="page-item">
                    <a class="page-link" <?php if($halaman > 1){ echo "href='?halaman=$previous'"; } ?>>Previous</a>
                  </li>
                  <?php 
                    for($x=1;$x<=$total_halaman;$x++){
                  ?> 
                      <li class="page-item"><a class="page-link" href="?halaman=<?php echo $x ?>"><?php echo $x; ?></a></li>
                  <?php
                    }
                  ?>				
                  <li class="page-item">
                    <a  class="page-link" <?php if($halaman < $total_halaman) { echo "href='?halaman=$next'"; } ?>>Next</a>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
  </div>
</html>

<script>
  n =  new Date();
  y = n.getFullYear();
  m = n.getMonth() + 1;
  d = n.getDate();
  document.getElementById("date").innerHTML = m + "/" + d + "/" + y;
</script>
<script>
  $(function() {
    var Toast = Swal.mixin({
      toast: true,
      position: 'top-end',
      showConfirmButton: false,
      timer: 3000
    });

    $('.swalDefaultSuccess').click(function() {
      Toast.fire({
        icon: 'success',
        title: 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr.'
      })
    });
    $('.swalDefaultInfo').click(function() {
      Toast.fire({
        icon: 'info',
        title: 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr.'
      })
    });
    $('.swalDefaultError').click(function() {
      Toast.fire({
        icon: 'error',
        title: 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr.'
      })
    });
    $('.swalDefaultWarning').click(function() {
      Toast.fire({
        icon: 'warning',
        title: 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr.'
      })
    });
    $('.swalDefaultQuestion').click(function() {
      Toast.fire({
        icon: 'question',
        title: 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr.'
      })
    });

    $('.toastrDefaultSuccess').click(function() {
      toastr.success('Lorem ipsum dolor sit amet, consetetur sadipscing elitr.')
    });
    $('.toastrDefaultInfo').click(function() {
      toastr.info('Lorem ipsum dolor sit amet, consetetur sadipscing elitr.')
    });
    $('.toastrDefaultError').click(function() {
      toastr.error('Lorem ipsum dolor sit amet, consetetur sadipscing elitr.')
    });
    $('.toastrDefaultWarning').click(function() {
      toastr.warning('Lorem ipsum dolor sit amet, consetetur sadipscing elitr.')
    });

    $('.toastsDefaultDefault').click(function() {
      $(document).Toasts('create', {
        title: 'Toast Title',
        body: 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr.'
      })
    });
    $('.toastsDefaultTopLeft').click(function() {
      $(document).Toasts('create', {
        title: 'Toast Title',
        position: 'topLeft',
        body: 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr.'
      })
    });
    $('.toastsDefaultBottomRight').click(function() {
      $(document).Toasts('create', {
        title: 'Toast Title',
        position: 'bottomRight',
        body: 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr.'
      })
    });
    $('.toastsDefaultBottomLeft').click(function() {
      $(document).Toasts('create', {
        title: 'Toast Title',
        position: 'bottomLeft',
        body: 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr.'
      })
    });
    $('.toastsDefaultAutohide').click(function() {
      $(document).Toasts('create', {
        title: 'Toast Title',
        autohide: true,
        delay: 750,
        body: 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr.'
      })
    });
    $('.toastsDefaultNotFixed').click(function() {
      $(document).Toasts('create', {
        title: 'Toast Title',
        fixed: false,
        body: 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr.'
      })
    });
    $('.toastsDefaultFull').click(function() {
      $(document).Toasts('create', {
        body: 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr.',
        title: 'Toast Title',
        subtitle: 'Subtitle',
        icon: 'fas fa-envelope fa-lg',
      })
    });
    $('.toastsDefaultFullImage').click(function() {
      $(document).Toasts('create', {
        body: 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr.',
        title: 'Toast Title',
        subtitle: 'Subtitle',
        image: '../../dist/img/user3-128x128.jpg',
        imageAlt: 'User Picture',
      })
    });
    $('.toastsDefaultSuccess').click(function() {
      $(document).Toasts('create', {
        class: 'bg-success',
        title: 'Toast Title',
        subtitle: 'Subtitle',
        body: 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr.'
      })
    });
    $('.toastsDefaultInfo').click(function() {
      $(document).Toasts('create', {
        class: 'bg-info',
        title: 'Toast Title',
        subtitle: 'Subtitle',
        body: 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr.'
      })
    });
    $('.toastsDefaultWarning').click(function() {
      $(document).Toasts('create', {
        class: 'bg-warning',
        title: 'Toast Title',
        subtitle: 'Subtitle',
        body: 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr.'
      })
    });
    $('.toastsDefaultDanger').click(function() {
      $(document).Toasts('create', {
        class: 'bg-danger',
        title: 'Toast Title',
        subtitle: 'Subtitle',
        body: 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr.'
      })
    });
    $('.toastsDefaultMaroon').click(function() {
      $(document).Toasts('create', {
        class: 'bg-maroon',
        title: 'Toast Title',
        subtitle: 'Subtitle',
        body: 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr.'
      })
    });
  });
</script>