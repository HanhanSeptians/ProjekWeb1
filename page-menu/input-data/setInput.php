<?php
  include '../database/koneksi.php';
  $sql = "SELECT * FROM asset";
  $result = $conn->query($sql);

  $kode_asset = $_POST['kode_asset'];
  $kondisi = $_POST['kondisi'];
  $status_kepemilikan = $_POST['status_kepemilikan'];
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
  $temp_name = $_FILES["gambar"]["tmp_name"];    
  $folder = "GambarAsset/".$gambar;
    move_uploaded_file($temp_name, 'GambarAsset/'.$gambar);
    mysqli_query($conn,"INSERT INTO `asset` (`kode_asset`, `kondisi`, `status_kepemilikan`, `id_lokasi`, `id_jenis_asset`, `deskripsi_asset`, `jumlah`, `ukuran`, `tahun_pengadaan`, `asal_usul`, `harga`, `gambar`, `keterangan`, `merk_type`) 
                                     VALUES ('$kode_asset', '$kondisi', '$status_kepemilikan', '$id_lokasi', '$id_jenis_asset', '$deskripsi_asset', '$jumlah', '$ukuran', '$tahun_pengadaan', '$asal_usul', '$harga', '$gambar', '$keterangan', '$merk_type')") ;
    echo '<script type ="text/JavaScript">';  
    echo 'alert("Asset Berhasil Ditambahkan !!!")';  
    echo '</script>'; 
    // header ("location:../inventaris/inventaris.php");
?>