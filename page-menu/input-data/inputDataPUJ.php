<?php 
	session_start();
	if($_SESSION['status']!="login"){
		header("location:../login/login.php?pesan=belum_login");
	}
  include '../database/koneksi.php';
  include '../navbar/navbar.php';
  $sql = "SELECT * FROM asset";
  $result = $conn->query($sql);
?>
<html>
  <div class="content-wrapper">
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0">Input Asset Baru</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="../list-kantor/PUJ.php">Production Unit Jakarta</a></li>
              <li class="breadcrumb-item active">Input Asset Baru</li>
            </ol>
          </div>
        </div>
      </div>
    </div>
    <div class="card card-primary ml-3 mr-3">
      <div class="card-header">
        <i class="fa-solid fa-pen-to-square fa-lg"></i><b> Form Pengisian Asset Baru</b>
      </div>
      <div class="card-body">
        <form method="post" action="setInput.php" enctype="multipart/form-data">
          <div class="row">
            <div class="col-sm-6">
              <div class="form-group">
                <label>Jenis Asset</label>
                  <select type="varchar" class="custom-select rounded-0" name="id_jenis_asset">
                      <option class="bg-secondary" value="" disabled selected>Pilih Jenis Asset</option>
                      <?php
                        $sql = "SELECT * FROM jenis_asset";
                        $result = $conn->query($sql);
                          if ($result->num_rows > 0) {
                            while ($row = $result->fetch_assoc()) {
                              echo "<option value= $row[id_jenis_asset]>$row[nama_jenis_asset]</option>";
                            }
                          }
                      ?>
                  </select> 
              </div>
              <div class="form-group">
                <label>Deskripsi Asset</label>
                  <textarea class="form-control" rows="3" name="deskripsi_asset" placeholder="Masukkan Deskripsi"></textarea>
              </div>
              <div class="form-group">
                <label>Kode Asset</label>
                  <input type="varchar" name="kode_asset" class="form-control" placeholder="Masukkan Kode Asset">
              </div>
              <div class="form-group">
                <label>Merk/ Type</label>
                  <input type="varchar" name="merk_type" class="form-control" placeholder="Masukkan Merk/ Type Asset">
              </div>
              <div class="form-group">
                <label>Jumlah</label>
                  <input type="int" name="jumlah" class="form-control" placeholder="Masukkan Jumlah Asset">
              </div>
              <div class="form-group">
                <label>Ukuran</label>
                  <input type="varchar" name="ukuran" class="form-control" placeholder="Masukkan Ukuran Asset">
              </div>
              <div class="form-group">
                <label>Tahun Pengadaan</label>
                  <input type="year" name="tahun_pengadaan" class="form-control" placeholder="Masukkan Tahun Pengadaan Asset">
              </div>
            </div>
            <div class="col-sm-6">
            <div class="form-group">
                <label>Status Kepemilikan Asset</label>
                  <select type="varchar" class="custom-select rounded-0" name="status_kepemilikan">
                  <option class="bg-secondary" value="" disabled selected>Pilih Status Kepemilikan</option>
                  <?php
                      $sql = "SELECT * FROM status_kepemilikan";
                      $result = $conn->query($sql);
                        if ($result->num_rows > 0) {
                          while ($row = $result->fetch_assoc()) {
                            echo"<option value=$row[status_kepemilikan]>$row[deskripsi_status_kepemilikan]</option>";
                          }
                        }
                    ?>
                  </select>               
              </div>  
              <div class="form-group">
                <label for="exampleInputEmail1">Lokasi</label>
                  <select type="varchar" class="custom-select rounded-0" name="id_lokasi">
                  <option class="bg-secondary" value="" disabled selected>Pilih Lokasi</option>
                  <optgroup label="Office Center">
                    <?php
                      $sql = "SELECT * FROM lokasi WHERE id_kantor= 'OC'";
                      $result = $conn->query($sql);
                        if ($result->num_rows > 0) {
                          while ($row = $result->fetch_assoc()) {
                            echo "<option value=$row[id_lokasi]>$row[lokasi]</option>";
                          }
                        }
                    ?>
                  </optgroup><hr>
                  <optgroup label="Kantor Production Unit Cilacap">
                    <?php
                      $sql = "SELECT * FROM lokasi WHERE id_kantor= 'PUC'";
                      $result = $conn->query($sql);
                        if ($result->num_rows > 0) {
                          while ($row = $result->fetch_assoc()) {
                            echo "<option value=$row[id_lokasi]>$row[lokasi]</option>";
                          }
                        }
                    ?>
                  </optgroup><hr>
                  <optgroup label="Kantor Production Unit Gresik">
                    <?php
                      $sql = "SELECT * FROM lokasi WHERE id_kantor= 'PUG'";
                      $result = $conn->query($sql);
                        if ($result->num_rows > 0) {
                          while ($row = $result->fetch_assoc()) {
                            echo "<option value=$row[id_lokasi]>$row[lokasi]</option>";
                          }
                        }
                    ?>
                  </optgroup><hr>
                  <optgroup label="Kantor Production Unit Jakarta">
                    <?php
                      $sql = "SELECT * FROM lokasi WHERE id_kantor= 'PUJ'";
                      $result = $conn->query($sql);
                        if ($result->num_rows > 0) {
                          while ($row = $result->fetch_assoc()) {
                            echo "<option value=$row[id_lokasi]>$row[lokasi]</option>";
                          }
                        }
                    ?>
                  </optgroup>
                  </select>
              </div>
              <div class="form-group">
                <label>Kondisi</label>
                  <select type="varchar" class="custom-select rounded-0" name="id_kondisi">
                  <option class="bg-secondary" value="" disabled selected>Pilih Kondisi Asset</option>
                  <?php
                      $sql = "SELECT * FROM kondisi";
                      $result = $conn->query($sql);
                        if ($result->num_rows > 0) {
                          while ($row = $result->fetch_assoc()) {
                            echo "<option value=$row[kondisi]>$row[kondisi]</option>";
                          }
                        }
                    ?>
                  </select>
              </div>
              <div class="form-group">
                <label>Asal-Usul</label>
                  <input type="varchar" name="asal_usul" class="form-control" placeholder="Masukkan Asal-Usul Asset">
              </div>
              <div class="form-group">
                <label>Harga</label>
                  <input type="int" name="harga" class="form-control" placeholder="Masukkan Harga Asset">
              </div>
              <div class="form-group">
                <label>Gambar</label>
                  <div class="input-group">
                    <div class="custom-file">
                      <input type="file" name="gambar" >
                    </div>  
                  </div>
              </div>
              <div class="form-group">
                <label>Keterangan</label>
                  <textarea class="form-control" name="keterangan" rows="3" placeholder="Masukkan Keterangan"></textarea>
              </div>
            </div>
          </div>
        
      </div>
      <div class="card-footer">
        <input type="submit" class="btn btn-primary "></input>
      </div>
    </div>
    </form>
 
</html>