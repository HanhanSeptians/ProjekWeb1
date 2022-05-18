<?php 
	// mengaktifkan session php
	session_start();
	
	// menghubungkan dengan koneksi
	include '../database/koneksi.php';
	
	// menangkap data yang dikirim dari form
	$username = $_POST['username'];
	$password = $_POST['password'];
	
	// menyeleksi data admin dengan username dan password yang sesuai
<<<<<<< HEAD
	$data = mysqli_query($conn,"select * from account where username='$username' and password='$password'");
=======
	$data = mysqli_query($conn,"select * from user where username='$username' and password='$password'");
>>>>>>> e64dd5a2fd1029be794e0048112007eff0b0c731
	
	// menghitung jumlah data yang ditemukan
	$cek = mysqli_num_rows($data);
	
	if($cek > 0){
		$_SESSION['username'] = $username;
		$_SESSION['status'] = "login";
		header("location:../dashboard/dashboard.php");
	}else{
		header("location:logingagal.php");
	}
?>