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
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">Input Asset Baru</li>
            </ol>
          </div>
        </div>
      </div>
    </div>
    <div class="card card-primary">
      <div class="card-header">
        <h3 align="center" class="card-title">Form Pengisian Asset Baru</h3>
      </div>
      <div class="card-body">
        <form method="post" action="setInput.php" enctype="multipart/form-data">
          <div class="row">
            <div class="col-sm-6">
              <div class="form-group">
                <label>Jenis Asset</label>
                  <input type="varchar" name="jenis_asset" class="form-control" placeholder="Masukkan Jenis Asset">
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
                  <input type="varchar" name="merk/type" class="form-control" placeholder="Masukkan Merk/ Type Asset">
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
              <div class="form-group">
                <label>Status Kepemilikan Asset</label>
                  <input type="varchar" name="id_status_kepemilikan" class="form-control" placeholder="Masukkan Status Kepemilikan Asset">
              </div>  
            </div>
            <div class="col-sm-6">
              <div class="form-group">
                <label for="exampleInputEmail1">Lokasi</label>
                  <input type="varchar" name="lokasi" class="form-control" placeholder="Masukkan Lokasi Asset">
              </div>
              <div class="form-group">
                <label>Kondisi</label>
                  <select type="varchar" class="custom-select rounded-0" name="kondisi">
                    <option>DB</option>
                    <option>DS</option>
                    <option>DJ</option>
                    <option>TR</option>
                    <option>TX</option>
                    <option>RB</option>
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
              <div class="form-group">
                  <select type="varchar" class="custom-select rounded-0" name="kantor">
                    <option>Office Center</option>
                    <option>PUC</option>
                    <option>PUG</option>
                    <option>PUJ</option>
                  </select>
              </div>
            </div>
          </div>
        
      </div>
      <div class="card-footer">
        <input type="submit" class="btn btn-primary"></input>
      </div>
    </div>
    </form>
 
</html>