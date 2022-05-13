<?php
  include '../database/koneksi.php';
  $sql = "SELECT * FROM asset";
  $result = $conn->query($sql);
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

  $temp_name = $_FILES["gambar"]["tmp_name"];    
  $folder = "GambarAsset/".$gambar;
    move_uploaded_file($temp_name, 'GambarAsset/'.$gambar);
    mysqli_query($conn,"INSERT INTO `asset` (`kantor`, `jenis_asset`, `deskripsi_asset`, `kode_asset`, `merk_type`, `jumlah`, `ukuran`, `tahun_pengadaan`, `status_kepemilikan`, `lokasi`, `kondisi`, `asal_usul`, `harga`, `gambar`, `keterangan`) 
                                     VALUES ('$kantor', '$jenis_asset', '$deskripsi_asset', '$kode_asset', '$merk_type', '$jumlah', '$ukuran', '$tahun_pengadaan', '$status_kepemilikan', '$lokasi', '$kondisi', '$asal_usul', '$harga', '$gambar','$keterangan')") ;
    echo '<script type ="text/JavaScript">';  
    echo 'alert("Asset Berhasil Ditambahkan !!!")';  
    echo '</script>'; 
    header ("location:../inventaris/inventaris.php");
?>