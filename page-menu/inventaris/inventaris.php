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
            <h1>Rekapitulasi Inventaris</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item active">Rekapitulasi Inventaris</li>
            </ol>
          </div>
        </div>
      </div>
    </section>
    <?php
      $batas = 100;
      $halaman = isset($_GET['halaman'])?(int)$_GET['halaman'] : 1;
      $halaman_awal = ($halaman>1) ? ($halaman * $batas) - $batas : 0;	
      $previous = $halaman - 1;
      $next = $halaman + 1;
      $sql = "SELECT * FROM `asset_inventaris`";
      $result = $conn->query($sql);
      $total = mysqli_num_rows($result);
      $total_halaman = ceil($total / $batas);
      $data_asset = mysqli_query($conn,"SELECT * FROM `asset_inventaris` limit $halaman_awal, $batas");
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
                          $sql1 = "SELECT * FROM `asset_rusak_berat`";
                          $result1 = $conn->query($sql1);
                          $totalAssetRusakBerat = mysqli_num_rows($result1);
                        ?>
                      <th scope="col"><center><h2><?php echo $totalAssetRusakBerat ?></h2></center></th>
                        <?php
                          $sql2 = "SELECT * FROM `asset_waktu_habis`";
                          $result2 = $conn->query($sql2);
                          $totalAssetUmurHabis = mysqli_num_rows($result2);
                        ?>
                      <th scope="col"><center><h2><?php echo $totalAssetUmurHabis ?></h2></center></th>
                    </tr>
                  </thead>
                  <tfoot>
                      <tr>
                        <th><h3>Total</h4></th>
                        <th><center><h4>Asset Rusak Berat</h4></center></th>
                        <th><center><h4>Asset Umur Habis</h4></center></th>
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
            <a href="../input-data/inputData.php">
              <button type="button" class="btn btn-primary"><i class="fa fa-plus"></i> Tambah Asset Baru</button>
            </a>
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
          <div class="mb-2">
            <a href="../delete-data/assetRusakBerat.php">
              <button type="button" class="btn btn-danger"><i class="fa fa-circle-exclamation"></i> Asset Rusak Berat</button>
            </a> <br>
          </div>
          <a href="../delete-data/assetUmurHabis.php">
            <button type="button" class="btn btn-info"><i class="fa fa-clock-rotate-left"></i> Asset Umur Habis</button>
          </a>  <br>
        </div>
      </div>
    </div>
    <section class="content">
      <div class="container-fluid">
        <div class="row">
          <div class="col-12">
            <div class="card">
              <div class="card-header bg-dark">
                <h3 class="card-title">Rekapitulasi Inventaris</h3>
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
                      <?php
                      $sql = "SELECT * FROM `asset_inventaris`";
                      $result = $conn->query($sql);
                        if ($result->num_rows > 0) {
                          while ($row = $data_asset->fetch_assoc()) {
                      ?>
                      <td><center><?php echo $no++ ; ?></center></td>
                      <td><?php echo $row["jenis_asset"] ?></td>
                      <td><?php echo $row["deskripsi_asset"] ?></td>
                      <td><center><?php echo $row["kode_asset"] ?></center></td>
                      <td><?php echo $row["merk_type"] ?></td>
                      <td><center><?php echo $row["jumlah"] ?></center></td>
                      <td><center><?php echo $row["ukuran"] ?></center></td>
                      <td><center><?php echo $row["tahun_pengadaan"] ?></center></td>
                      <td><?php echo $row["status_kepemilikan"] ?></td>
                      <td><?php echo $row["lokasi"] ?></td>
                      <td><center><?php echo $row["kondisi"] ?></center></td>
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
                        <a href="../input-data/editAsset.php? kode_asset=<?=$row["kode_asset"]?>">
                          <button class="btn-primary mr-4" style=" float:left">
                            <i class="fa-solid fa-pen-to-square fa-sm"></i>
                          </button>
                        </a> 
                        <a href="../delete-data/delete.php? kode_asset=<?=$row["kode_asset"]?>">
                          <button class="btn-danger mt--5" style=" float:right">
                            <i class="fa-solid fa-trash"></i>
                          </button>
                        </a>
                        <!-- <a href="../delete-data/delete.php? kode_asset=<?=$row["kode_asset"]?>" data-toggle="modal" data-target="#modalHapus">
                          <button class="btn-danger mt--5" style=" float:right">
                            <i class="fa-solid fa-trash"></i>
                          </button>
                        </a> -->
                      </td>
                    </tr>
                      <?php
                          }
                        } else {
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
  <div class="modal fade" id="modalHapus">
        <div class="modal-dialog">
          <div class="modal-content">
            <div class="modal-header bg-danger">
              <h4 class="modal-title"><center>Verifikasi</center></h4>
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
            </div>
            <div class="modal-body">
              <p><h5>Yakin untuk menghapus data ?</h5></p>
            </div>
            <div class="modal-footer justify-content-between">
            <button type="button" class="btn btn-default" data-dismiss="modal">Batal</button>
              <form action="../delete-data/delete.php">
              <button type="button" class="btn btn-danger">Hapus</button>
              </form>
              
              
            </div>
          </div>
        </div>
      </div>
</html>

<script>
  n =  new Date();
  y = n.getFullYear();
  m = n.getMonth() + 1;
  d = n.getDate();
  document.getElementById("date").innerHTML = m + "/" + d + "/" + y;
</script>