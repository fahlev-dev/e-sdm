<?php
	$username   = $_POST['username'];
	$pass       = $_POST['password'];
	$error = "username/password incorrect";

	include 'koneksi.php';

	$user = mysqli_query($connect,"select * from anggota where nrp='$username' and nrp='$pass'");
	$chek = mysqli_num_rows($user);

	if($chek>0)
	{
	    session_start();
	    $row = mysqli_fetch_array($user);

	    if ($row['hak']=="admin") {
	    	$_SESSION['nama'] 		= $row['nama'];
		    $_SESSION['jabatan'] 	= $row['jabatan'];
		    $_SESSION['kesatuan'] 	= $row['kesatuan'];
		    $_SESSION['hak'] 		= $row['hak'];
		    header("location: ../admin/index.php");
	    }else{
		    $_SESSION['nama'] 		= $row['nama'];
		    $_SESSION['jabatan'] 	= $row['jabatan'];
		    $_SESSION['kesatuan'] 	= $row['kesatuan'];
		    $_SESSION['pangkat'] 	= $row['pangkat'];
		    $_SESSION['nrp'] 		= $row['nrp'];
		    $_SESSION['tempat'] 	= $row['tempat'];
		    $_SESSION['tgl'] 		= $row['tgl'];
		    $_SESSION['tmt_satker'] = $row['tmt_satker'];
		    $_SESSION['tmt_jabatan'] = $row['tmt_jabatan'];
		    $_SESSION['nama_file'] 	= $row['nama_file'];
		    $_SESSION['hak']		= $row['hak'];
		    $_SESSION['status'] 	= $row['status'];
		    $_SESSION['id_anggota'] = $row['id_anggota'];
		    header("location: ../user.php");
		}
	}else
	{
		$_SESSION["error"] = $error;
        header("location: ../index.php");
	}
?>