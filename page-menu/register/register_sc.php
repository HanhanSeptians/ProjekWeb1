<?php
        include '../database/koneksi.php';
        $nama = $_POST['nama'];
        $username = $_POST['username'];
        $password = $_POST['password'];
        $jenis_kelamin = $_POST['jenis_kelamin'];

        $insert = mysqli_query($conn,"INSERT INTO user(nama,username,password,jenis_kelamin) VALUES ('$nama', '$username', '$password', '$jenis_kelamin')");
        if($insert){
            echo '<center>berhasil upload</center>';
        }else{
            echo '<center>Gagal Upload</center>';
        }
        header("location:../login/login.php");
?>