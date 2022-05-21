<?php 
    include '../database/koneksi.php';
    include '../navbar/header.php';

    if(isset($_GET['kode_asset'])){
        $kode = $_GET['kode_asset'];
    }
    if(isset($_GET['button'])){
        $button = $_GET['button'];
    }
    $query="UPDATE asset SET tanggal_pemeliharaan = DATE_ADD(curdate(), INTERVAL 14 DAY) WHERE kode_asset = '$kode'";
    $result = mysqli_query($conn, $query);
        if($result){
            echo '<script type ="text/JavaScript">';  
            echo 'alert("Asset Telah Diperbaiki")';  
            echo '</script>'; 
            if($button =='MInventaris'){
                echo '<meta http-equiv="refresh" content="0.1;url=maintenance.php">';
            }elseif($button =='MOC'){
                echo '<meta http-equiv="refresh" content="0.1;url=../list-kantor/OC.php">';
            }elseif($button =='MPUC'){
                echo '<meta http-equiv="refresh" content="0.1;url=../list-kantor/PUC.php">';
            }elseif($button =='MPUG'){
                echo '<meta http-equiv="refresh" content="0.1;url=../list-kantor/PUG.php">';
            }elseif($button =='MPUJ'){
                echo '<meta http-equiv="refresh" content="0.1;url=../list-kantor/PUJ.php">';
            }else{
                echo '<meta http-equiv="refresh" content="0.1;url=maintenance.php">';
            }
        }else{
            echo "Asset Gagal Diperbaiki !";
        }
?>