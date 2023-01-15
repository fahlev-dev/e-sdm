<?php 
	include '../config/koneksi.php';
	$nama 		= $_POST['id_anggota'];
	$tingkat 	= $_POST['tingkat'];
	$peringkat 	= $_POST['peringkat'];
	$tmt 		= $_POST['tmt'];

	$query 		= mysqli_query($connect,"INSERT INTO riwayat_dikpol VALUES(NULL, '$nama','$tingkat','$tmt','$peringkat')");
	if($query){
		echo '<script type ="text/JavaScript">alert("Data berhasil disimpan");window.location.replace("pendidikan.php");</script>';
	}else{
		echo '<script type ="text/JavaScript">alert("Data gagal disimpan");window.location.replace("pendidikan.php");</script>';
		
	}
 ?>