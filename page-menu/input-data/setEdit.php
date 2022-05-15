<?php 
    include '../database/koneksi.php';

    $kode_asset = $_POST['kode_asset'];
    $id_kondisi = $_POST['id_kondisi'];
    $id_status_kepemilikan = $_POST['id_status_kepemilikan'];
    $id_lokasi = $_POST['id_lokasi'];
    $id_jenis_asset = $_POST['id_jenis_asset'];
    $deskripsi_asset = $_POST['deskripsi_asset'];
    $jumlah = $_POST['jumlah'];
    $ukuran = $_POST['ukuran'];
    $tahun_pengadaan = $_POST['tahun_pengadaan'];
    $asal_usul = $_POST['asal_usul'];
    $harga = $_POST['harga'];
    $gambar = $_FILES["gambar"]["name"]; 
    $keterangan = $_POST['keterangan'];
    $merk_type = $_POST['merk_type'];

    $query = mysqli_query($conn, " SELECT * FROM asset WHERE kode_asset = '$kode_asset'");
    $data = mysqli_fetch_array($query);
      if($gambar != ''){
        $temp_name = $_FILES["gambar"]["tmp_name"];    
        $folder = "../../GambarAsset/".$gambar;
        unlink("../../GambarAsset/$data[gambar]");
        move_uploaded_file($temp_name, '../../GambarAsset/'.$gambar);
        $query="UPDATE `asset` SET kode_asset='$kode_asset',id_kondisi='$id_kondisi',id_status_kepemilikan='$id_status_kepemilikan',
                                   id_lokasi='$id_lokasi',id_jenis_asset='$id_jenis_asset', deskripsi_asset='$deskripsi_asset',jumlah='$jumlah', 
                                   ukuran='$ukuran',tahun_pengadaan='$tahun_pengadaan',asal_usul='$asal_usul',harga='$harga',gambar= '$gambar',
                                   keterangan='$keterangan', merk_type='$merk_type' WHERE kode_asset='$kode_asset'";
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
        $query="UPDATE `asset` SET kode_asset='$kode_asset',id_kondisi='$id_kondisi',id_status_kepemilikan='$id_status_kepemilikan',
        id_lokasi='$id_lokasi',id_jenis_asset='$id_jenis_asset', deskripsi_asset='$deskripsi_asset',jumlah='$jumlah', 
        ukuran='$ukuran',tahun_pengadaan='$tahun_pengadaan',asal_usul='$asal_usul',harga='$harga',
        keterangan='$keterangan', merk_type='$merk_type' WHERE kode_asset='$kode_asset'";
        $result = mysqli_query($conn, $query);
        if($result){
            echo '<script type ="text/JavaScript">';  
            echo 'alert("DATA BERHASIL DI UPDATE")';  
            echo '</script>'; 
            echo '<meta http-equiv="refresh" content="0.1;url=../inventaris/inventaris.php">';
        }else{
            echo '<script type ="text/JavaScript">';  
            echo 'alert("UPDATE GAGAL LUR")';  
            echo '</script>'; 
            echo '<meta http-equiv="refresh" content="0.1;url=editAsset.php">';
        }
      }
  ?>