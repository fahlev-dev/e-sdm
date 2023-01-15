<?php
	include '../config/koneksi.php';
 
// Get id from URL to delete that user
$id = $_GET['id'];
 
// Delete user row from table based on given id
$result = mysqli_query($connect, "DELETE FROM anggota WHERE id_anggota='$id'");
 
 if ($result>0) {
 	echo '<script type ="text/JavaScript">alert("Berhasil menghapus data");window.location.replace("data-sespim.php");</script>';
 }else{
 	echo "".$connect->error;
 }

?>
