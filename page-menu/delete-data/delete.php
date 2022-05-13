<?php 
    include '../database/koneksi.php';

    if(isset($_GET['kode_asset'])){
        $kode = $_GET['kode_asset'];
    }else{
        die("Error! Asset tidak ditemukan");
    }

    $query = mysqli_query($conn, " SELECT * FROM asset_hapus WHERE kode_asset = '$kode'");
    $data = mysqli_fetch_array($query);


    $query="DELETE FROM asset WHERE kode_asset = '$kode'";
    $result = mysqli_query($conn, $query);
    if($result){
        unlink("../input-data/GambarAsset/$data[gambar]");
        echo '<script type ="text/JavaScript">';  
        echo 'alert("ASSET BERHASIL DIHAPUS")';  
        echo '</script>'; 
        echo '<meta http-equiv="refresh" content="0.1;url=../inventaris/inventaris.php">';
    }else{
        echo "Delete Gagal";
    }
?>