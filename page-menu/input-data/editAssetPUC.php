<?php 
	session_start();
    if($_SESSION['status']!="login"){
      header("location:../login/login.php?pesan=belum_login");
    }
  include '../database/koneksi.php';
  include '../navbar/navbar.php';
?>

<html>
  <div class="content-wrapper">
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-1">Edit Asset</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">Edit Asset</li>
            </ol>
          </div>
        </div>
      </div>
    </div>
    <?php
      if(isset($_GET['kode_asset'])){
        $kode = $_GET['kode_asset'];
      }else{
          die("Error! Asset tidak ditemukan");
      }
      $query = mysqli_query($conn, "SELECT * FROM asset WHERE kode_asset = $kode AND kantor='PUC'");
      $data = mysqli_fetch_array($query);
    ?>
    <div class="card card-primary ml-4 mr-4">
      <div class="card-header">
        <h3 align="center" class="card-title">Form Edit Asset</h3>
      </div>
      <div class="card-body">
        <form method="post" action= "" enctype="multipart/form-data">
          <div class="row">
            <div class="col-sm-6">
              <div class="form-group">
                <label>Jenis Asset</label>
                  <input type="varchar" class="form-control" name="jenis_asset" value="<?php echo $data["jenis_asset"] ?> ">
              </div>
              <div class="form-group">
                <label>Deskripsi Asset</label>
                  <input type="varchar" class="form-control" rows=3 name="deskripsi_asset" value="<?php echo $data["deskripsi_asset"] ?>"></input>
              </div>
              <div class="form-group">
                <label>Kode Asset</label>
                  <input type="varchar" class="form-control" name="kode_asset" value="<?php echo $data["kode_asset"] ?>" >
              </div>
              <div class="form-group">
                <label>Merk/ Type</label>
                  <input type="varchar" class="form-control" name="merk_type" value="<?php echo $data["merk_type"] ?>">
              </div>
              <div class="form-group">
                <label>Jumlah</label>
                  <input type="int" class="form-control" name="jumlah" value="<?php echo $data["jumlah"] ?>">
              </div>
              <div class="form-group">
                <label>Ukuran</label>
                  <input type="varchar" class="form-control" name="ukuran" value="<?php echo $data["ukuran"] ?>">
              </div>
              <div class="form-group">
                <label>Tahun Pengadaan</label>
                  <input type="year" class="form-control" name="tahun_pengadaan" value="<?php echo $data["tahun_pengadaan"] ?>">
              </div>
              <div class="form-group">
                <label>Status Kepemilikan Asset</label>
                  <input type="varchar" class="form-control" name="status_kepemilikan" value="<?php echo $data["status_kepemilikan"] ?>">
              </div>  
            </div>
            <div class="col-sm-6">
              <div class="form-group">
                <label>Lokasi</label>
                  <input type="varchar" class="form-control" name="lokasi" value="<?php echo $data["lokasi"] ?>">
              </div>
              <div class="form-group">
                <label>Kondisi</label>
                  <select type="varchar" class="custom-select rounded-0" name="kondisi" >
                    <option><?php echo $data["kondisi"] ?></option>
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
                  <input type="varchar" class="form-control" name="asal_usul" value="<?php echo $data["asal_usul"] ?>">
              </div>
              <div class="form-group">
                <label>Harga</label>
                  <input type="int" class="form-control" name="harga" value="<?php echo $data["harga"] ?>">
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
                  <input type="varchar" class="form-control" rows="3" name="keterangan" value="<?php echo $data["keterangan"] ?>"></input>
              </div>
              <div class="form-group">
                <label>Kantor</label>
                  <select type="varchar" class="custom-select rounded-0" name="kantor" >
                    <option><?php echo $data["kantor"] ?></option>
                    <option>OC</option>
                    <option>PUC</option>
                    <option>PUG</option>
                    <option>PUJ</option>
                  </select>
              </div>
            </div>
          </div>
          <div class="mt-3">
            <input type="submit" class="btn btn-primary" value="Update" name="Update"></input>
            <button type="submit" class="btn btn-default float-right">Cancel</button>
          </div>
        </form>
      </div>
    </div>
  </div>
  <?php
    if(isset($_POST['Update'])){
      $kantor = $_POST['kantor'];
      $jenis_asset = $_POST['jenis_asset'];
      $deskripsi_asset = $_POST['deskripsi_asset'];
      $kode_asset = $_POST['kode_asset'];
      $merk_type = $_POST['merk_type'];
      $jumlah = $_POST['jumlah'];
      $ukuran = $_POST['ukuran'];
      $tahun_pengadaan = $_POST['tahun_pengadaan'];
      $status_kepemilikan = $_POST['status_kepemilikan'];
      $lokasi = $_POST['lokasi'];
      $kondisi = $_POST['kondisi'];
      $asal_usul = $_POST['asal_usul'];
      $harga = $_POST['harga'];
      $gambar = $_FILES["gambar"]["name"]; 
      $keterangan = $_POST['keterangan'];

      if($gambar != ''){
      $temp_name = $_FILES["gambar"]["tmp_name"];    
      $folder = "GambarAsset/".$gambar;
        move_uploaded_file($temp_name, 'GambarAsset/'.$gambar);
        unlink("./GambarAsset/$data[gambar]");
        $query="UPDATE `asset` SET jenis_asset='$jenis_asset', deskripsi_asset='$deskripsi_asset',kode_asset='$kode_asset', merk_type='$merk_type', 
                                   jumlah='$jumlah', ukuran='$ukuran', tahun_pengadaan='$tahun_pengadaan', status_kepemilikan='$status_kepemilikan', lokasi='$lokasi', 
                                   kondisi='$kondisi',asal_usul='$asal_usul', harga='$harga', gambar= '$gambar', keterangan='$keterangan' WHERE kode_asset='$kode_asset'";
        $result = mysqli_query($conn, $query);
        if($result){
            echo '<script type ="text/JavaScript">';  
            echo 'alert("DATA BERHASIL DI UPDATE")';  
            echo '</script>'; 
            echo '<meta http-equiv="refresh" content="0.1;url=../inventaris/inventaris.php">';
            
        }else{
            echo '<script type ="text/JavaScript">';  
            echo 'alert("UPDATE GAGAL")';  
            echo '</script>'; 
            echo '<meta http-equiv="refresh" content="0.1;url=editAsset.php">';
        }
      }else{
        $query="UPDATE `asset` SET jenis_asset='$jenis_asset', deskripsi_asset='$deskripsi_asset',kode_asset='$kode_asset', merk_type='$merk_type', 
                                   jumlah='$jumlah', ukuran='$ukuran', tahun_pengadaan='$tahun_pengadaan', status_kepemilikan='$status_kepemilikan', lokasi='$lokasi', 
                                   kondisi='$kondisi',asal_usul='$asal_usul', harga='$harga', keterangan='$keterangan' WHERE kode_asset='$kode_asset'";
        $result = mysqli_query($conn, $query);
        if($result){
            echo '<script type ="text/JavaScript">';  
            echo 'alert("DATA BERHASIL DI UPDATE")';  
            echo '</script>'; 
            echo '<meta http-equiv="refresh" content="0.1;url=../inventaris/inventaris.php">';
            
        }else{
            echo '<script type ="text/JavaScript">';  
            echo 'alert("UPDATE GAGAL")';  
            echo '</script>'; 
            echo '<meta http-equiv="refresh" content="0.1;url=editAsset.php">';
        }

      }
    
    }
  ?>
</html>