<?php 
	session_start();
	if($_SESSION['status']!="login"){
		header("location:../login/login.php?pesan=belum_login");
	}
  ?>
<?php

    include '../navbar/navbar.php';

?>
<html>
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0">Input Asset Baru</h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">Input Asset Baru</li>
            </ol>
          </div><!-- /.col -->
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <div class="card card-primary">
      <div class="card-header">
        <h3 align="center" class="card-title">Form Pengisian Asset Baru</h3>
      </div>
      <div class="card-body">
        <form>
          <div class="row">
            <div class="col-sm-6">
              <div class="form-group">
                <label for="exampleInputEmail1">Jenis Asset</label>
                  <input type="varchar" name="JenisAsset" class="form-control" id="exampleInputEmail1" placeholder="Masukkan Jenis Asset">
              </div>
              <div class="form-group">
                <label>Deskripsi Asset</label>
                  <textarea class="form-control" rows="3" name="DeskripsiAsset" placeholder="Masukkan Deskripsi"></textarea>
              </div>
              <div class="form-group">
                <label for="exampleInputEmail1">Kode Asset</label>
                  <input type="varchar" name="KodeAsset" class="form-control" id="exampleInputEmail1" placeholder="Masukkan Kode Asset">
              </div>
              <div class="form-group">
                <label for="exampleInputEmail1">Merk/ Type</label>
                  <input type="varchar" name="MerkAsset" class="form-control" id="exampleInputEmail1" placeholder="Masukkan Merk/ Type Asset">
              </div>
              <div class="form-group">
                <label for="exampleInputEmail1">Jumlah</label>
                  <input type="int" name="JumlahAsset" class="form-control" id="exampleInputEmail1" placeholder="Masukkan Jumlah Asset">
              </div>
              <div class="form-group">
                <label for="exampleInputEmail1">Ukuran</label>
                  <input type="varchar" name="UkuranAsset" class="form-control" id="exampleInputEmail1" placeholder="Masukkan Ukuran Asset">
              </div>
              <div class="form-group">
                <label for="exampleInputEmail1">Tahun Pengadaan</label>
                  <input type="varchar" name="TahunPengadaanAsset" class="form-control" id="exampleInputEmail1" placeholder="Masukkan Tahun Pengadaan Asset">
              </div>
              <div class="form-group">
                <label for="exampleInputEmail1">Status Kepemilikan Asset</label>
                  <input type="varchar" name="StatusKepemilikanAsset" class="form-control" id="exampleInputEmail1" placeholder="Masukkan Status Kepemilikan Asset">
              </div>  
            </div>
            <div class="col-sm-6">
              <div class="form-group">
                <label for="exampleInputEmail1">Lokasi</label>
                  <input type="varchar" name="LokasiAsset" class="form-control" id="exampleInputEmail1" placeholder="Masukkan Lokasi Asset">
              </div>
              <div class="form-group">
                <label for="IDKondisi">Kondisi</label>
                  <select class="custom-select rounded-0" id="IDKondisi" name="Kondisi">
                    <option>DB</option>
                    <option>DS</option>
                    <option>DJ</option>
                    <option>TR</option>
                    <option>TX</option>
                    <option>RB</option>
                  </select>
              </div>
              <div class="form-group">
                <label for="exampleInputEmail1">Asal-Usul</label>
                  <input type="varchar" name=AsalUsulAsset" class="form-control" id="exampleInputEmail1" placeholder="Masukkan Asal-Usul Asset">
              </div>
              <div class="form-group">
                <label for="exampleInputEmail1">Harga</label>
                  <input type="int" name="HargaAsset" class="form-control" id="exampleInputEmail1" placeholder="Masukkan Harga Asset">
              </div>
              <div class="form-group">
                <label for="IDGambar">Gambar</label>
                  <div class="input-group">
                    <div class="custom-file">
                      <input type="file" class="custom-file-input" id="IDGambar" name="GambarAsset">
                        <label class="custom-file-label" for="IDGambar">Choose file</label>
                    </div>
                    <div class="input-group-append">
                      <span class="input-group-text">Upload</span>
                    </div>
                  </div>
              </div>
              <div class="form-group">
                <label>Keterangan</label>
                  <textarea class="form-control" name="KeteranganAsset" rows="3" placeholder="Masukkan Keterangan"></textarea>
              </div>
              <div class="form-group">
                <label for="IDKantor">Kantor</label>
                  <select class="custom-select rounded-0" id="IDKantor" name="KantorAsset">
                    <option>Kantor Pusat OC</option>
                    <option>PUC</option>
                    <option>PUG</option>
                    <option>PUJ</option>
                  </select>
              </div>
            </div>
          </div>
        </form>
      </div>
      <div class="card-footer">
        <button type="submit" class="btn btn-primary">Submit</button>
        <button type="submit" class="btn btn-default float-right">Cancel</button>
      </div>
    </div>
 
</html>