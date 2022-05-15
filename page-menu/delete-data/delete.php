<?php 
    include '../database/koneksi.php';
    include '../navbar/header.php';

    if(isset($_GET['kode_asset'])){
        $kode = $_GET['kode_asset'];
    }else{
        die("Error! Asset tidak ditemukan");
    }

    $query = mysqli_query($conn, " SELECT * FROM asset_hapus WHERE kode_asset = '$kode'");
    $data = mysqli_fetch_array($query);
?>
    <div class="modal fade" id="modalHapus">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header bg-danger">
          <h4 class="modal-title"><center>Verifikasi</center></h4>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body">
          <p><h5>Yakin untuk menghapus data ?</h5></p>
        </div>
        <div class="modal-footer justify-content-between">
        <button type="button" class="btn btn-default" data-dismiss="modal">Batal</button>
          <form action="../delete-data/delete.php">
          <button type="button" class="btn btn-danger">Hapus</button>
          </form>
        </div>
      </div>
    </div>
  </div>
</html>
<?php
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