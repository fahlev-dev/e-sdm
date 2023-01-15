<?php
session_start();
if($_SESSION['hak']!='admin')
{
    header("location:index.php");
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Admin</title>
  <link rel="icon" href="../images/logo.png">
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
  <link rel="stylesheet" href="../plugins/fontawesome-free/css/all.min.css">
  <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
  <link rel="stylesheet" href="../plugins/tempusdominus-bootstrap-4/css/tempusdominus-bootstrap-4.min.css">
  <link rel="stylesheet" href="../plugins/icheck-bootstrap/icheck-bootstrap.min.css">
  <link rel="stylesheet" href="../plugins/jqvmap/jqvmap.min.css">
  <link rel="stylesheet" href="../dist/css/adminlte.min.css">
  <link rel="stylesheet" href="../plugins/overlayScrollbars/css/OverlayScrollbars.min.css">
  <link rel="stylesheet" href="../plugins/daterangepicker/daterangepicker.css">
  <link rel="stylesheet" href="../plugins/summernote/summernote-bs4.min.css">
<!--   <link href="//netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet"> -->
  <link href="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.7/css/select2.min.css" rel="stylesheet" />
  <script src="https://code.jquery.com/jquery-3.4.1.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.7/js/select2.min.js"></script>
</head>
<body class="hold-transition sidebar-mini layout-fixed">
<div class="wrapper">

  <!-- Preloader -->
  <div class="preloader flex-column justify-content-center align-items-center">
    <img class="animation__shake" src="../dist/img/AdminLTELogo.png" alt="AdminLTELogo" height="60" width="60">
  </div>

  <nav class="main-header navbar navbar-expand navbar-white navbar-light">
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link" data-widget="pushmenu" href="#" role="button"><i class="fas fa-bars"></i></a>
      </li>
      
    </ul>

    <!-- Right navbar links -->
    <ul class="navbar-nav ml-auto">
      <li class="nav-item">
        <a class="nav-link" data-widget="fullscreen" href="#" role="button">
          <i class="fas fa-expand-arrows-alt"></i>
        </a>
      </li>
      
    </ul>
  </nav>
  <!-- /.navbar -->

  <!-- Main Sidebar Container -->
  <aside class="main-sidebar sidebar-dark-primary elevation-4">
    <!-- Brand Logo -->
    <a href="#" class="brand-link">
      <br>
    </a>

    <!-- Sidebar -->
    <div class="sidebar">
      <!-- Sidebar user panel (optional) -->
      <div class="user-panel mt-3 pb-3 mb-3 d-flex">
        <div class="image">
          <img src="../dist/img/AdminLTELogo.png" class="img-circle elevation-2" alt="User Image">
        </div>
        <div class="info">
          <a href="#" class="d-block">Administrator</a>
        </div>
      </div>

      <nav class="mt-2">
        <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
          <li class="nav-item">
            <a href="index.php" class="nav-link">
              <i class="nav-icon fas fa-home"></i>
              <p>
                Dashboard
              </p>
            </a>
          </li>
          <li class="nav-header">OPSI</li>
          <li class="nav-item">
            <a href="#" class="nav-link active">
              <i class="nav-icon fas fa-plus"></i>
              <p>
                Tambah Data
                <span class="right badge badge-danger">New</span>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="tambah.php" class="nav-link">
                  <i class="far fa-dot-circle nav-icon"></i>
                  <p>Anggota</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="jabatan.php" class="nav-link active">
                  <i class="far fa-dot-circle nav-icon"></i>
                  <p>Riwayat Jabatan</p>
                </a>
              </li>
               <li class="nav-item">
                <a href="pendidikan.php" class="nav-link">
                  <i class="far fa-dot-circle nav-icon"></i>
                  <p>Riwayat Pendidikan</p>
                </a>
              </li>
            </ul>
          </li>
           <li class="nav-header">DATA</li>
          <li class="nav-item">
            <a href="#" class="nav-link">
              <i class="nav-icon fas fa-university"></i>
              <p>
                Satker
                <i class="fas fa-angle-left right"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="data-lemdiklat.php" class="nav-link">
                  <i class="far fa-dot-circle nav-icon"></i>
                  <p>Lemdiklat</p>
                </a>
              </li>
             <li class="nav-item">
                <a href="data-sespim.php" class="nav-link">
                  <i class="far fa-dot-circle nav-icon"></i>
                  <p>Sespim</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="data-stik.php" class="nav-link">
                  <i class="far fa-dot-circle nav-icon"></i>
                  <p>STIK</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="data-akpol.php" class="nav-link">
                  <i class="far fa-dot-circle nav-icon"></i>
                  <p>Akpol</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="data-setukpa.php" class="nav-link">
                  <i class="far fa-dot-circle nav-icon"></i>
                  <p>Setukpa</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="data-serse.php" class="nav-link">
                  <i class="far fa-dot-circle nav-icon"></i>
                  <p>Diklat Reserse</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="data-sebasa.php" class="nav-link">
                  <i class="far fa-dot-circle nav-icon"></i>
                  <p>Sebasa</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="data-sepolwan.php" class="nav-link">
                  <i class="far fa-dot-circle nav-icon"></i>
                  <p>Sepolwan</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="data-pusdikmin.php" class="nav-link">
                  <i class="far fa-dot-circle nav-icon"></i>
                  <p>Pusdikmin</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="data-lantas.php" class="nav-link">
                  <i class="far fa-dot-circle nav-icon"></i>
                  <p>Pusdik Lantas</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="data-intel.php" class="nav-link">
                  <i class="far fa-dot-circle nav-icon"></i>
                  <p>Pusdik Intel</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="data-sabhara.php" class="nav-link">
                  <i class="far fa-dot-circle nav-icon"></i>
                  <p>Pusdik Sabhara</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="data-binmas.php" class="nav-link">
                  <i class="far fa-dot-circle nav-icon"></i>
                  <p>Pusdik Binmas</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="data-brimob.php" class="nav-link">
                  <i class="far fa-dot-circle nav-icon"></i>
                  <p>Pusdik Brimob</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="data-polair.php" class="nav-link">
                  <i class="far fa-dot-circle nav-icon"></i>
                  <p>Pusdik Polair</p>
                </a>
              </li>
            </ul>
          </li>
          <li class="nav-item">
            <a href="../config/logout.php" class="nav-link">
              <i class="nav-icon fas fa-sign-out-alt"></i>
              <p>
                Logout
              </p>
            </a>
        </ul>
      </nav>
      <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
  </aside>

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0"></h1>
          </div><!-- /.col -->
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <?php
  
    //sesuaikan dengan database, username, dan password kalian masing-masing
    $servername     = "localhost";
    $database       = "sespimpo_sdm"; 
    $username       = "root";
    $password       = "";

    // membuat koneksi
    $conn   = mysqli_connect($servername, $username, $password, $database);

    //jika jurusan sudah diset maka masukkan datanya ke dalam variabel $cari
    if(isset($_GET['kat'])){
        $cari = $_GET['kat'];

        //ambil data dari database, dimana pencarian sesuai dengan variabel cari
        $data = mysqli_query($conn, "select * from pangkat where kat = '$cari'");
    
    }else{

        //tapi jika jurusan belum diset, maka jangan tampilkan apapun
        $data = [];   
    }
    ?>
    
    
    <section class="content">
      <div class="container-fluid">
        <div class="row">
          <div class="col-md-6">
            <div class="card card-default">
                <div class="card-header">
                  <h3 class="card-title"><b>Pendidikan Kepolisian</b></h3>
                </div>
                <div class="card-body">
                   <div class="form-group">
                    <form action="t_dikpol.php" method="POST">
                      <label>Pilih Anggota:</label>
                        <div class="input-group my-colorpicker2">
                          <select class="form-control" id="nama" name="id_anggota">
                            <?php 
                              include '../config/koneksi.php';

                              $query = mysqli_query($connect,"SELECT * FROM anggota ORDER BY nama");

                              while ($data = mysqli_fetch_array($query)) {
                              
                           ?>
                            <option value="<?= $data['id_anggota'] ?>"><?= $data['nama'] ?></option>
                            <?php } ?>
                          </select>
                        </div>
                    </div>
                    <div class="form-group">
                      <br>
                      <label>Tingkat:</label>
                        <div class="input-group my-colorpicker2">
                          <div class="input-group-append">
                            <span class="input-group-text"><i class="fas fa-map"></i></span>
                          </div>
                          <input type="text" name="tingkat" class="form-control" required="">
                        </div>
                    </div>
                     <div class="form-group">
                      <label>Tahun:</label>
                        <div class="input-group my-colorpicker2">
                          <div class="input-group-append">
                            <span class="input-group-text"><i class="fas fa-calendar-alt"></i></span>
                          </div>
                          <input type="date" name="tmt" class="form-control" required="">
                        </div>
                    </div>
                     <div class="form-group">
                      <label>Peringkat:</label>
                        <div class="input-group my-colorpicker2">
                          <div class="input-group-append">
                            <span class="input-group-text"><i class="fas fa-rocket"></i></span>
                          </div>
                          <input type="text" name="peringkat" class="form-control" required="">
                        </div>
                    </div>
                     <div class="form-group">
                      <br>
                        <input type="submit" class="btn btn-success" name="simpan" value="Simpan">
                        <input type="reset" class="btn btn-default" name="reset" value="Reset">
                     </div>
                     </form>
                </div>
                <div class="card-footer"><br></div>
            </div>
          </div>
          <div class="col-md-6">
            <div class="card card-default">
                <div class="card-header">
                </div>
                <div class="card-body">
                   <center><img src="file/dikpol.jpg" width="100%"></center>
                </div>
                <div class="card-footer"><br></div>
            </div>
          </div>

          <div class="col-md-6">
            <div class="card card-default">
                <div class="card-header">
                  <h3 class="card-title"><b>Pendidikan Umum</b></h3>
                </div>
                <div class="card-body">
                   <center><img src="file/dikum.jpg" width="100%"></center>
                </div>
                <div class="card-footer"><br></div>
            </div>
          </div>
          <div class="col-md-6">
            <div class="card card-default">
                <div class="card-header"></div>
                <div class="card-body">
                  
                    <div class="form-group">
                      <form action="t_dikum.php" method="POST">
                      <label>Nama:</label>
                        <div class="input-group my-colorpicker2">
                          <select class="form-control" id="select" name="id_anggota">
                            <?php 
                              include '../config/koneksi.php';

                              $query = mysqli_query($connect,"SELECT * FROM anggota ORDER BY nama");

                              while ($data = mysqli_fetch_array($query)) {
                              
                           ?>
                            <option value="<?= $data['id_anggota'] ?>"><?= $data['nama'] ?></option>
                            <?php } ?>
                          </select>
                        </div>
                    </div>
                    <div class="form-group">
                      <br>
                      <label>Tingkat:</label>
                        <div class="input-group my-colorpicker2">
                          <div class="input-group-append">
                            <span class="input-group-text"><i class="fas fa-map"></i></span>
                          </div>
                          <input type="text" name="tingkat" class="form-control" required="">
                        </div>
                    </div>
                    <div class="form-group">
                      <label>Institusi:</label>
                        <div class="input-group my-colorpicker2">
                          <div class="input-group-append">
                            <span class="input-group-text"><i class="fas fa-rocket"></i></span>
                          </div>
                          <input type="text" name="institusi" class="form-control" required="">
                        </div>
                    </div>
                     <div class="form-group">
                      <label>Tahun:</label>
                        <div class="input-group my-colorpicker2">
                          <div class="input-group-append">
                            <span class="input-group-text"><i class="fas fa-calendar-alt"></i></span>
                          </div>
                          <input type="date" name="tmt" class="form-control" required="">
                        </div>
                    </div>
                     <div class="form-group">
                      <br>
                        <input type="submit" class="btn btn-success" name="simpan" value="Simpan">
                        <input type="reset" class="btn btn-default" name="reset" value="Reset">
                     </div>
                   </form>
                </div>
                <div class="card-footer"><br></div>
            </div>
          </div>
          <div class="col-md-6">
            <div class="card card-default">
                <div class="card-header">
                  <h3 class="card-title"><b>Pendidikan Pengembangan</b></h3>
                </div>
                <div class="card-body">
                   <div class="form-group">
                    <form action="t_dikbang.php" method="POST">
                      <label>Pilih Anggota:</label>
                        <div class="input-group my-colorpicker2">
                          <select class="form-control" id="nama" name="id_anggota">
                            <?php 
                              include '../config/koneksi.php';

                              $query = mysqli_query($connect,"SELECT * FROM anggota ORDER BY nama");

                              while ($data = mysqli_fetch_array($query)) {
                              
                           ?>
                            <option value="<?= $data['id_anggota'] ?>"><?= $data['nama'] ?></option>
                            <?php } ?>
                          </select>
                        </div>
                    </div>
                    <div class="form-group">
                      <br>
                      <label>Dikbang:</label>
                        <div class="input-group my-colorpicker2">
                          <div class="input-group-append">
                            <span class="input-group-text"><i class="fas fa-map"></i></span>
                          </div>
                          <input type="text" name="dikbang" class="form-control" required="">
                        </div>
                    </div>
                     <div class="form-group">
                      <label>Tahun:</label>
                        <div class="input-group my-colorpicker2">
                          <div class="input-group-append">
                            <span class="input-group-text"><i class="fas fa-calendar-alt"></i></span>
                          </div>
                          <input type="date" name="tmt" class="form-control" required="">
                        </div>
                    </div>
                     <div class="form-group">
                      <br>
                        <input type="submit" class="btn btn-success" name="simpan" value="Simpan">
                        <input type="reset" class="btn btn-default" name="reset" value="Reset">
                     </div>
                     </form>
                </div>
                <div class="card-footer"><br></div>
            </div>
          </div>
          <div class="col-md-6">
            <div class="card card-default">
                <div class="card-header">
                </div>
                <div class="card-body">
                   <center><img src="file/dikbang.jpg" width="80%"></center>
                </div>
                <div class="card-footer"><br></div>
            </div>
          </div>
        </div>
      </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
  <footer class="main-footer">
    <center>
      <strong>Copyright &copy; Iqbal.</strong>
      All rights reserved.
      </center>
  </footer>

  <!-- Control Sidebar -->
  <aside class="control-sidebar control-sidebar-dark">
    <!-- Control sidebar content goes here -->
  </aside>
  <!-- /.control-sidebar -->
</div>
<!-- ./wrapper -->

<!-- jQuery -->
<!-- jQuery UI 1.11.4 -->
<script src="../plugins/jquery-ui/jquery-ui.min.js"></script>
<!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
<script>
  $.widget.bridge('uibutton', $.ui.button)
</script>
<!-- Bootstrap 4 -->
<script src="../plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- ChartJS -->
<script src="../plugins/chart.js/Chart.min.js"></script>
<!-- Sparkline -->
<script src="../plugins/sparklines/sparkline.js"></script>
<!-- JQVMap -->
<script src="../plugins/jqvmap/jquery.vmap.min.js"></script>
<script src="../plugins/jqvmap/maps/jquery.vmap.usa.js"></script>
<!-- jQuery Knob Chart -->
<script src="../plugins/jquery-knob/jquery.knob.min.js"></script>
<!-- daterangepicker -->
<script src="../plugins/moment/moment.min.js"></script>
<script src="../plugins/daterangepicker/daterangepicker.js"></script>
<!-- Tempusdominus Bootstrap 4 -->
<script src="../plugins/tempusdominus-bootstrap-4/js/tempusdominus-bootstrap-4.min.js"></script>
<!-- Summernote -->
<script src="../plugins/summernote/summernote-bs4.min.js"></script>
<script src="../plugins/bs-custom-file-input/bs-custom-file-input.min.js"></script>
<!-- overlayScrollbars -->
<script src="../plugins/overlayScrollbars/js/jquery.overlayScrollbars.min.js"></script>
<!-- AdminLTE App -->
<script src="../dist/js/adminlte.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="../dist/js/demo.js"></script>
<!-- AdminLTE dashboard demo (This is only for demo purposes) -->
<script src="../dist/js/pages/dashboard.js"></script>
  <script type="text/javascript">
   $(document).ready(function() {
       $('#nama').select2();
   });
   $(document).ready(function() {
       $('#select').select2();
   });
</script>
</body>
</html>
