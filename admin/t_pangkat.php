<?php 
	include '../config/koneksi.php';
	$nama 		= $_POST['id_anggota'];
	$pangkat 	= $_POST['pangkat'];
	$tmt 		= $_POST['tmt'];

	$query = mysqli_query($connect,"INSERT INTO riwayat_pangkat VALUES(NULL, '$nama','$pangkat','$tmt')");
	if($query){
		echo '<script type ="text/JavaScript">alert("Data berhasil disimpan");window.location.replace("jabatan.php");</script>';
	}else{
		echo '<script type ="text/JavaScript">alert("Data gagal disimpan");window.location.replace("jabatan.php");</script>';
		
	}
 ?>