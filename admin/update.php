<?php 
    include '../config/koneksi.php';
    if($_POST['update']){
          $id         = $_POST['id'];
          $nama       = $_POST['nama'];
          $jabatan    = $_POST['jabatan'];
          $kesatuan   = $_POST['kesatuan'];
          $pangkat    = $_POST['pangkat'];
          $nrp        = $_POST['nrp'];
          $tempat     = $_POST['tempat'];
          $tgl        = $_POST['tgl'];
          $tmt_satker = $_POST['tmt_satker'];
          $tmt_jabatan = $_POST['tmt_jabatan'];
          $status       = $_POST['status'];
          $query      = mysqli_query($connect,"UPDATE anggota SET           nama='$nama',tmt_satker='$tmt_satker',tmt_jabatan='$tmt_jabatan',tempat='$tempat',tgl='$tgl',jabatan='$jabatan',nrp='$nrp',pangkat='$pangkat',status = '$status' ,kesatuan='$kesatuan' WHERE id_anggota='$id'");
          if($query){
            echo '<script type ="text/JavaScript">alert("Data berhasil disimpan");window.location.replace("index.php");</script>';
          }else{
            echo '<script type ="text/JavaScript">alert("Data gagal disimpan");window.location.replace("index.php");</script>';
          }
        }
 ?>