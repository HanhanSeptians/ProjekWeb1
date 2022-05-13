<?php
        include '../database/koneksi.php';
        $nama = $_POST['nama'];
        $username = $_POST['username'];
        $password = $_POST['password'];

        $insert = mysqli_query($conn,"INSERT INTO account(nama,username,password) VALUES ('$nama', '$username', '$password')");
        if($insert){
            echo '<center>berhasil upload</center>';
        }else{
            echo '<center>Gagal Upload</center>';
        }
        header("location:../login/login.php");
?>