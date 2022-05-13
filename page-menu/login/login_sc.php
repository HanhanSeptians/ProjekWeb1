<?php 
<<<<<<< HEAD
// mengaktifkan session php
session_start();
 
// menghubungkan dengan koneksi
include '../database/koneksi.php';
 
// menangkap data yang dikirim dari form
$username = $_POST['username'];
$password = $_POST['password'];
 
// menyeleksi data admin dengan username dan password yang sesuai
$data = mysqli_query($conn,"select * from account where username='$username' and password='$password'");
 
// menghitung jumlah data yang ditemukan
$cek = mysqli_num_rows($data);
 
if($cek > 0){
	$_SESSION['username'] = $username;
	$_SESSION['status'] = "login";
	header("location:../dashboard/dashboard.php");
}else{
	header("location:logingagal.php");
}
=======
	// mengaktifkan session php
	session_start();
	
	// menghubungkan dengan koneksi
	include '../database/koneksi.php';
	
	// menangkap data yang dikirim dari form
	$email = $_POST['email'];
	$password = $_POST['password'];
	
	// menyeleksi data admin dengan username dan password yang sesuai
	$data = mysqli_query($conn,"select * from account where email='$email' and password='$password'");
	
	// menghitung jumlah data yang ditemukan
	$cek = mysqli_num_rows($data);
	
	if($cek > 0){
		$_SESSION['email'] = $email;
		$_SESSION['status'] = "login";
		header("location:../dashboard/dashboard.php");
	}else{
		header("location:logingagal.php");
	}
>>>>>>> e546164445177275caec9b179b18a92cb199303c
?>