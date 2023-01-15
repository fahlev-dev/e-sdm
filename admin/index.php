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
            <a href="index.php" class="nav-link active">
              <i class="nav-icon fas fa-home"></i>
              <p>
                Dashboard
              </p>
            </a>
          </li>
          <li class="nav-header">OPSI</li>
          <li class="nav-item">
            <a href="#" class="nav-link">
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
                <a href="jabatan.php" class="nav-link">
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
            <h1 class="m-0">Dashboard</h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">Dashboard v1</li>
            </ol>
          </div><!-- /.col -->
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->
    <?php 
      include '../config/koneksi.php';

      $query1 = mysqli_query($connect, "SELECT * FROM anggota WHERE kesatuan = 'Sespim Lemdiklat Polri'");
      $jumlah1 = mysqli_num_rows($query1);

      $query2 = mysqli_query($connect, "SELECT * FROM anggota WHERE kesatuan = 'STIK Lemdiklat Polri'");
      $jumlah2 = mysqli_num_rows($query2);

      $query3 = mysqli_query($connect, "SELECT * FROM anggota WHERE kesatuan = 'Akpol Lemdiklat Polri'");
      $jumlah3 = mysqli_num_rows($query3);

      $query4 = mysqli_query($connect, "SELECT * FROM anggota WHERE kesatuan = 'Setukpa Lemdiklat Polri'");
      $jumlah4 = mysqli_num_rows($query4);
      
      $query5 = mysqli_query($connect, "SELECT * FROM anggota WHERE kesatuan = 'Diklat Reserse'");
      $jumlah5 = mysqli_num_rows($query5);
      
      $query6 = mysqli_query($connect, "SELECT * FROM anggota WHERE kesatuan = 'Sebasa Lemdiklat Polri'");
      $jumlah6 = mysqli_num_rows($query6);
      
      $query7 = mysqli_query($connect, "SELECT * FROM anggota WHERE kesatuan = 'Sepolwan Lemdiklat Polri'");
      $jumlah7 = mysqli_num_rows($query7);
      
      $query8 = mysqli_query($connect, "SELECT * FROM anggota WHERE kesatuan = 'Pusdikmin Lemdiklat Polri'");
      $jumlah8 = mysqli_num_rows($query8);
      
       $query9 = mysqli_query($connect, "SELECT * FROM anggota WHERE kesatuan = 'Pusdik Lantas Lemdiklat Polri'");
      $jumlah9 = mysqli_num_rows($query9);
      
       $query10 = mysqli_query($connect, "SELECT * FROM anggota WHERE kesatuan = 'Pusdik Intel Lemdiklat Polri'");
      $jumlah10 = mysqli_num_rows($query10);
      
       $query11 = mysqli_query($connect, "SELECT * FROM anggota WHERE kesatuan = 'Pusdik Sabhara Lemdiklat Polri'");
      $jumlah11 = mysqli_num_rows($query11);
      
      $query12 = mysqli_query($connect, "SELECT * FROM anggota WHERE kesatuan = 'Pusdik Brimob Lemdiklat Polri'");
      $jumlah12 = mysqli_num_rows($query12);
      
      $query13 = mysqli_query($connect, "SELECT * FROM anggota WHERE kesatuan = 'Pusdik Binmas Lemdiklat Polri'");
      $jumlah13 = mysqli_num_rows($query13);
      
      $query14 = mysqli_query($connect, "SELECT * FROM anggota WHERE kesatuan = 'Pusdik Sabhara Lemdiklat Polri'");
      $jumlah14 = mysqli_num_rows($query14);
     ?>
    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        <!-- Small boxes (Stat box) -->
        <div class="row">
          <div class="col-lg-3 col-6">
            <!-- small box -->
            <div class="small-box bg-info">
              <div class="inner">
                <h3><?= $jumlah1 ?></h3>

                <p>Jumlah Personel Sespim</p>
              </div>
              <div class="icon">
                <i class="ion ion-person"></i>
              </div>
              <a href="data-sespim.php" class="small-box-footer">Info selengkapnya <i class="fas fa-arrow-circle-right"></i></a>
            </div>
          </div>
          <!-- ./col -->
          <div class="col-lg-3 col-6">
            <!-- small box -->
            <div class="small-box bg-success">
              <div class="inner">
                <h3><?= $jumlah2 ?></h3>

                <p>Jumlah Personel STIK/PTIK</p>
              </div>
              <div class="icon">
                <i class="ion ion-person"></i>
              </div>
              <a href="data-stik.php" class="small-box-footer">Info selengkapnya <i class="fas fa-arrow-circle-right"></i></a>
            </div>
          </div>
          <!-- ./col -->
          <div class="col-lg-3 col-6">
            <!-- small box -->
            <div class="small-box bg-warning">
              <div class="inner">
                <h3><?= $jumlah3 ?></h3>

                <p>Jumlah Personel Akpol</p>
              </div>
              <div class="icon">
                <i class="ion ion-person"></i>
              </div>
              <a href="data-akpol.php" class="small-box-footer">Info selengkapnya <i class="fas fa-arrow-circle-right"></i></a>
            </div>
          </div>
          <!-- ./col -->
          <div class="col-lg-3 col-6">
            <!-- small box -->
            <div class="small-box bg-danger">
              <div class="inner">
                <h3><?= $jumlah4 ?></h3>

                <p>Jumlah Personel Setukpa</p>
              </div>
              <div class="icon">
                <i class="ion ion-person"></i>
              </div>
              <a href="data-setukpa.php" class="small-box-footer">Info selengkapnya <i class="fas fa-arrow-circle-right"></i></a>
            </div>
          </div>
          <!-- ./col -->
          <div class="col-lg-3 col-6">
            <!-- small box -->
            <div class="small-box bg-danger">
              <div class="inner">
                <h3><?= $jumlah5 ?></h3>

                <p>Jumlah Personel Diklat Reserse</p>
              </div>
              <div class="icon">
                <i class="ion ion-person"></i>
              </div>
              <a href="data-serse.php" class="small-box-footer">Info selengkapnya <i class="fas fa-arrow-circle-right"></i></a>
            </div>
          </div>
          <!-- ./col -->
          <div class="col-lg-3 col-6">
            <!-- small box -->
            <div class="small-box bg-warning">
              <div class="inner">
                <h3><?= $jumlah6 ?></h3>

                <p>Jumlah Personel Sebasa</p>
              </div>
              <div class="icon">
                <i class="ion ion-person"></i>
              </div>
              <a href="data-sebasa.php" class="small-box-footer">Info selengkapnya <i class="fas fa-arrow-circle-right"></i></a>
            </div>
          </div>
          <!-- ./col -->
          <div class="col-lg-3 col-6">
            <!-- small box -->
            <div class="small-box bg-success">
              <div class="inner">
                <h3><?= $jumlah7 ?></h3>

                <p>Jumlah Personel Sepolwan </p>
              </div>
              <div class="icon">
                <i class="ion ion-person"></i>
              </div>
              <a href="data-sepolwan.php" class="small-box-footer">Info selengkapnya <i class="fas fa-arrow-circle-right"></i></a>
            </div>
          </div>
          <!-- ./col -->
          <div class="col-lg-3 col-6">
            <!-- small box -->
            <div class="small-box bg-info">
              <div class="inner">
                <h3><?= $jumlah8 ?></h3>

                <p>Jumlah Personel Pusdikmin</p>
              </div>
              <div class="icon">
                <i class="ion ion-person"></i>
              </div>
              <a href="data-pusdikmin.php" class="small-box-footer">Info selengkapnya <i class="fas fa-arrow-circle-right"></i></a>
            </div>
          </div>
          <!-- ./col -->
          
        <!-- /.row -->
        <div class="col-lg-3 col-6">
            <!-- small box -->
            <div class="small-box bg-warning">
              <div class="inner">
                <h3><?= $jumlah9 ?></h3>

                <p>Jumlah Personel Pusdik Lantas</p>
              </div>
              <div class="icon">
                <i class="ion ion-person"></i>
              </div>
              <a href="data-lantas.php" class="small-box-footer">Info selengkapnya <i class="fas fa-arrow-circle-right"></i></a>
            </div>
          </div>
          <!-- ./col -->
         <div class="col-lg-3 col-6">
            <!-- small box -->
            <div class="small-box bg-danger">
              <div class="inner">
                <h3><?= $jumlah10 ?></h3>

                <p>Jumlah Personel Pusdik Intel</p>
              </div>
              <div class="icon">
                <i class="ion ion-person"></i>
              </div>
              <a href="data-intel.php" class="small-box-footer">Info selengkapnya <i class="fas fa-arrow-circle-right"></i></a>
            </div>
          </div>
          <!-- ./col -->
          <div class="col-lg-3 col-6">
            <!-- small box -->
            <div class="small-box bg-info">
              <div class="inner">
                <h3><?= $jumlah11 ?></h3>

                <p>Jumlah Personel Pusdik Sabhara</p>
              </div>
              <div class="icon">
                <i class="ion ion-person"></i>
              </div>
              <a href="data-sabhara.php" class="small-box-footer">Info selengkapnya <i class="fas fa-arrow-circle-right"></i></a>
            </div>
          </div>
          <!-- ./col -->
          <div class="col-lg-3 col-6">
            <!-- small box -->
            <div class="small-box bg-success">
              <div class="inner">
                <h3><?= $jumlah12 ?></h3>

                <p>Jumlah Personel Pusdik Brimob</p>
              </div>
              <div class="icon">
                <i class="ion ion-person"></i>
              </div>
              <a href="data-brimob.php" class="small-box-footer">Info selengkapnya <i class="fas fa-arrow-circle-right"></i></a>
            </div>
          </div>
          <!-- ./col -->
          <div class="col-lg-3 col-6">
            <!-- small box -->
            <div class="small-box bg-success">
              <div class="inner">
                <h3><?= $jumlah13 ?></h3>

                <p>Jumlah Personel Pusdik Binmas</p>
              </div>
              <div class="icon">
                <i class="ion ion-person"></i>
              </div>
              <a href="data-binmas.php" class="small-box-footer">Info selengkapnya <i class="fas fa-arrow-circle-right"></i></a>
            </div>
          </div>
          <!-- ./col -->
          <div class="col-lg-3 col-6">
            <!-- small box -->
            <div class="small-box bg-info">
              <div class="inner">
                <h3><?= $jumlah14 ?></h3>

                <p>Jumlah Personel Pusdik Polair</p>
              </div>
              <div class="icon">
                <i class="ion ion-person"></i>
              </div>
              <a href="data-polair.php" class="small-box-footer">Info selengkapnya <i class="fas fa-arrow-circle-right"></i></a>
            </div>
          </div>
          <!-- ./col -->
        <!-- Main row -->
        
                </div>
              </div>
            </div>

          </section>
        </div>
      </div>
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
  <footer class="main-footer">
    <strong>Copyright &copy; 22 <a href="https://adminlte.io">Iqbal</a>.</strong>
    All rights reserved.
  </footer>

  <!-- Control Sidebar -->
  <aside class="control-sidebar control-sidebar-dark">
    <!-- Control sidebar content goes here -->
  </aside>
  <!-- /.control-sidebar -->
</div>
<!-- ./wrapper -->

<!-- jQuery -->
<script src="../plugins/jquery/jquery.min.js"></script>
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
<!-- overlayScrollbars -->
<script src="../plugins/overlayScrollbars/js/jquery.overlayScrollbars.min.js"></script>
<!-- AdminLTE App -->
<script src="../dist/js/adminlte.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="../dist/js/demo.js"></script>
<!-- AdminLTE dashboard demo (This is only for demo purposes) -->
<script src="../dist/js/pages/dashboard.js"></script>
</body>
</html>
