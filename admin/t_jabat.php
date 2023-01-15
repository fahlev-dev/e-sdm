<?php 
	include '../config/koneksi.php';
	$nama 		= $_POST['id_anggota'];
	$jabatan 	= $_POST['jabatan'];
	$kesatuan 	= $_POST['kesatuan'];
	$tmt 		= $_POST['tmt'];

	$query 		= mysqli_query($connect,"INSERT INTO riwayat_jabatan VALUES(NULL, '$nama','$jabatan','$kesatuan','$tmt')");
	if($query){
		echo '<script type ="text/JavaScript">alert("Data berhasil disimpan");window.location.replace("jabatan.php");</script>';
	}else{
		echo '<script type ="text/JavaScript">alert("Data gagal disimpan");window.location.replace("jabatan.php");</script>';
		
	}
 ?>