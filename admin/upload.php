<?php

	include '../config/koneksi.php';
		if($_POST['simpan']){
		   
		    if($_FILES['file']['size'] >= 0){
			$ekstensi_diperbolehkan	= array('png','jpg','jpeg');
			$nama_file = $_FILES['file']['name'];
			$x = explode('.', $nama_file);
			$ekstensi = strtolower(end($x));
			$ukuran	= $_FILES['file']['size'];
			$file_tmp = $_FILES['file']['tmp_name'];	
 
			if(in_array($ekstensi, $ekstensi_diperbolehkan) == true){
				if($ukuran < 1044070){			
					move_uploaded_file($file_tmp, 'file/'.$nama_file);
					$nama 		= $_POST['nama'];
					$jabatan 	= $_POST['jabatan'];
					$kesatuan 	= $_POST['kesatuan'];
					$pangkat 	= $_POST['pangkat'];
					$nrp 		= $_POST['nrp'];
					$tempat 	= $_POST['tempat'];
					$tgl 		= $_POST['tgl'];
					$tmt_satker = $_POST['tmt_satker'];
					$tmt_jabatan = $_POST['tmt_jabatan'];
					$status 	= $_POST['status'];
					$query = mysqli_query($connect,"INSERT INTO anggota VALUES(NULL, '$nama','$jabatan','$kesatuan','$pangkat','$nrp','$tempat','$tgl','$tmt_satker','$tmt_jabatan','$status','$nama_file','user')");
					if($query){
						echo '<script type ="text/JavaScript">alert("Data berhasil disimpan");window.location.replace("tambah.php");</script>';
					}else{
						echo '<script type ="text/JavaScript">alert("Data gagal disimpan");window.location.replace("tambah.php");</script>'.$connect->error;
					}
				}else{
					echo '<script type ="text/JavaScript">alert("ukuran gambar terlalu besar");window.location.replace("tambah.php");</script>';
				}
			}
			}else{
					$nama 		= $_POST['nama'];
					$jabatan 	= $_POST['jabatan'];
					$kesatuan 	= $_POST['kesatuan'];
					$pangkat 	= $_POST['pangkat'];
					$nrp 		= $_POST['nrp'];
					$tempat 	= $_POST['tempat'];
					$tgl 		= $_POST['tgl'];
					$tmt_satker = $_POST['tmt_satker'];
					$tmt_jabatan = $_POST['tmt_jabatan'];
					$status 	= $_POST['status'];
					$query = mysqli_query($connect,"INSERT INTO anggota VALUES(NULL, '$nama','$jabatan','$kesatuan','$pangkat','$nrp','$tempat','$tgl','$tmt_satker','$tmt_jabatan','$status','avatar.png','user')");
					if($query){
						echo '<script type ="text/JavaScript">alert("Data berhasil disimpan");window.location.replace("tambah.php");</script>';
					}else{
						echo ''.$connect->error;
						echo '<script type ="text/JavaScript">alert("Data gagal disimpan");window.location.replace("tambah.php");</script>';
					}
			}
		}
?>