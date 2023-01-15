<?php 
	include '../config/koneksi.php';
    if($_POST['ubah']){
	  $id = $_POST['id'];
      $temp = explode(".", $_FILES["file"]["name"]);
      $newfilename = round(microtime(true)) . '.' . end($temp);

          move_uploaded_file($_FILES["file"]["tmp_name"], "file/" . $newfilename);

          $query      = mysqli_query($connect,"UPDATE anggota SET nama_file='$newfilename' WHERE id_anggota='$id'");

      if($query){
           header("Location: " . $_SERVER["HTTP_REFERER"]);
          }else{
            header("Location: " . $_SERVER["HTTP_REFERER"]);
          }
      }
 ?>