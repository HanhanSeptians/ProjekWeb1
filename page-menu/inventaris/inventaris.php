<?php
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
            <h1>Inventaris</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">List Kantor</a></li>
              <li class="breadcrumb-item active">Inventaris</li>
            </ol>
          </div>
        </div>
      </div>
    </section>
    <?php
      $sql = "SELECT * FROM `asset`";
      $result = $conn->query($sql);
      $total = mysqli_num_rows($result);
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
                      <th scope="col"><h2><?php echo $total?></h2></th>
                      <th scope="col"><h2>0</h2></th>
                      <th scope="col"><h2>0</h2></th>
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
            <a href="../delete-data/assetRusakBerat.php"style="color:black;">Asset Rusak Berat</a> <br>
          <i class="fa-solid fa-hourglass-end mr-1"></i>
            <a href="../delete-data/assetUmurHabis.php"style="color:black;">Asset Umur Habis</a>  <br>
        </div>
      </div>
    </div>
    <section class="content">
      <div class="container-fluid">
        <div class="row">
          <div class="col-12">
            <div class="card">
              <div class="card-header">
                <h3 class="card-title">Semua Asset</h3>
              </div>
              <div class="card-body">
                <table class="table table-bordered table-striped">
                  <thead>
                    <tr>
                      <th align = center style="width: 10px"><h6 align="center"><b>No</b></h6></th>
                      <th><h6 align="center"><b>Jenis Asset</b></h6></th>
                      <th><h6 align="center"><b>Deskripsi Asset</b></h6></th>
                      <th><h6 align="center"><b>Kode Asset</b></h6></th>
                      <th><h6 align="center"><b>Merk/ Type</b></h6></th>
                      <th><h6 align="center"><b>Jumlah</b></h6></th>
                      <th><h6 align="center"><b>Ukuran</b></h6></th>
                      <th><h6 align="center"><b>Tahun Pengadaan</b></h6></th>
                      <th><h6 align="center"><b>Status Kepemilikan</b></h6></th>
                      <th><h6 align="center"><b>Lokasi</b></h6></th>
                      <th><h6 align="center"><b>Kondisi</b></h6></th>
                      <th><h6 align="center"><b>Asal-usul</b></h6></th>
                      <th><h6 align="center"><b>Harga</b></h6></th>
                      <th><h6 align="center"><b>Gambar</b></h6></th>
                      <th><h6 align="center"><b>Keterangan</b></h6></th>
                      <th><h6 align="center"><b>Aksi</b></h6></th>
                    </tr>
                  </thead>
                  <tbody>
                  <?php
                      $no = 0;
                      if ($result->num_rows > 0) {
                          while ($row = $result->fetch_assoc()) {
                            $no += 1;
                      ?>
                      <td><?php echo $no ?>.</td>
                      <td><?php echo $row["jenis-asset"] ?></td>
                      <td><?php echo $row["deskripsi-asset"] ?></td>
                      <td><?php echo $row["kode-asset"] ?></td>
                      <td><?php echo $row["merk-type"] ?></td>
                      <td><?php echo $row["jumlah"] ?></td>
                      <td><?php echo $row["ukuran"] ?></td>
                      <td><?php echo $row["tahun-pengadaan"] ?></td>
                      <td><?php echo $row["status-kepemilikan"] ?></td>
                      <td><?php echo $row["lokasi"] ?></td>
                      <td><?php echo $row["kondisi"] ?></td>
                      <td><?php echo $row["asal-usul"] ?></td>
                      <td><?php echo $row["harga"] ?></td>
                      <td><?php echo $row["gambar"] ?></td>
                      <td><?php echo $row["keterangan"] ?></td>
                      <td>
                        <a href="../input-data/editAsset.php? `kode-asset`=<?=$row["kode-asset"]?>"><button class="bg-primary mr-4" style=" float:left"><i class="fa-solid fa-pen-to-square fa-sm"></i></button></a> 
                        <button class="bg-danger mt--5" style=" float:right"><i class="fa-solid fa-trash"></i></button>
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
                  <li class="page-item"><a class="page-link" href="#">&laquo;</a></li>
                  <li class="page-item"><a class="page-link" href="#">1</a></li>
                  <li class="page-item"><a class="page-link" href="#">2</a></li>
                  <li class="page-item"><a class="page-link" href="#">3</a></li>
                  <li class="page-item"><a class="page-link" href="#">&raquo;</a></li>
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