<?php 
	include '../config/koneksi.php';
	$nama 		= $_POST['id_anggota'];
	$dikbang 	= $_POST['dikbang'];
	$tmt 		= $_POST['tmt'];

	$query 		= mysqli_query($connect,"INSERT INTO riwayat_dikbang VALUES(NULL, '$nama','$dikbang','$tmt')");
	if($query){
		echo '<script type ="text/JavaScript">alert("Data berhasil disimpan");window.location.replace("pendidikan.php");</script>';
	}else{
		echo '<script type ="text/JavaScript">alert("Data gagal disimpan");window.location.replace("pendidikan.php");</script>';
		
	}
 ?>