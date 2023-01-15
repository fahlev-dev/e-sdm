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
  <link rel="stylesheet" href="../plugins/datatables-bs4/css/dataTables.bootstrap4.min.css">
  <link rel="stylesheet" href="../plugins/datatables-responsive/css/responsive.bootstrap4.min.css">
  <link rel="stylesheet" href="../plugins/datatables-buttons/css/buttons.bootstrap4.min.css">
  <link href="//netdna.bootstrapcdn.com/font-awesome/3.2.1/css/font-awesome.css" rel="stylesheet">

</head>
  <style type="text/css">
    @media print{
      .opsi{
        display: none;
      }
    }
  </style>
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
            <a href="#" class="nav-link active">
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
            <h1 class="m-0">Data Personel Pusdik Lantas</h1>
          </div><!-- /.col -->
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->

    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        <div class="card">
              <div class="card-header">
                <h3 class="card-title">List Data</h3>
              </div>
              <!-- /.card-header -->
              <div class="card-body">
                <table id="example1" class="table table-bordered table-striped">
                  <thead>
                  <tr>
                    <th>Nama</th>
                    <th>Pangkat</th>
                    <th>NRP</th>
                    <th>Jabatan</th>
                    <th class="opsi"><center>Opsi</center></th>
                  </tr>
                  </thead>
                  <tbody>
                    <?php 
                        include '../config/koneksi.php';

                        $query = mysqli_query($connect,"SELECT * FROM anggota WHERE kesatuan ='Pusdik Lantas Lemdiklat Polri'");
                        while ($tampil = mysqli_fetch_array($query)) {
                          
                        
                     ?>
                  <tr>
                    <td><?= $tampil['nama'] ?></td>
                    <td><?= $tampil['pangkat'] ?></td>
                    <td><?= $tampil['nrp'] ?></td>
                    <td><?= $tampil['jabatan'] ?></td>
                    <td class="opsi">
                      <center>
                        <a href="detail.php?id=<?=$tampil['id_anggota']?>" class="btn btn-info"><i class="nav-icon fa fa-list"></i> Detail</a>
                        <a href="ubah.php?id=<?=$tampil['id_anggota'];?>&kat=<?=$tampil['status'];?>" class="btn btn-success"><i class="nav-icon fa fa-edit"></i> Ubah</a>
                        <a href="hapus.php?id=<?=$tampil['id_anggota']?>" class="btn btn-danger" onclick="return confirm('Anda yakin menghapus data ini?');"><i class="nav-icon fas fa-trash"></i> Hapus</a>
                      </center>
                    </td>
                  </tr>
                  <?php 
                    }
                   ?>
                  </tbody>
                  <!-- <tfoot>
                  <tr>
                    <th>Nama</th>
                    <th>Pangkat</th>
                    <th>NRP</th>
                    <th>Jabatan</th>
                    <th>Opsi</th>
                  </tr>
                  </tfoot> -->
                </table>
              </div>
              <!-- /.card-body -->
            </div>
      </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
  <footer class="main-footer">
    <center><strong>Copyright &copy; 2022 Iqbal</strong></center>
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
<!-- Bootstrap 4 -->
<script src="../plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- DataTables  & Plugins -->
<script src="../plugins/datatables/jquery.dataTables.min.js"></script>
<script src="../plugins/datatables-bs4/js/dataTables.bootstrap4.min.js"></script>
<script src="../plugins/datatables-responsive/js/dataTables.responsive.min.js"></script>
<script src="../plugins/datatables-responsive/js/responsive.bootstrap4.min.js"></script>
<script src="../plugins/datatables-buttons/js/dataTables.buttons.min.js"></script>
<script src="../plugins/datatables-buttons/js/buttons.bootstrap4.min.js"></script>
<script src="../plugins/jszip/jszip.min.js"></script>
<script src="../plugins/pdfmake/pdfmake.min.js"></script>
<script src="../plugins/pdfmake/vfs_fonts.js"></script>
<script src="../plugins/datatables-buttons/js/buttons.html5.min.js"></script>
<script src="../plugins/datatables-buttons/js/buttons.print.min.js"></script>
<script src="../plugins/datatables-buttons/js/buttons.colVis.min.js"></script>
<!-- AdminLTE App -->
<script src="../dist/js/adminlte.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="../dist/js/demo.js"></script>
<!-- AdminLTE dashboard demo (This is only for demo purposes) -->
<script src="../dist/js/pages/dashboard.js"></script>
<script>
  $(function () {
    $("#example1").DataTable({
      "responsive": true, "lengthChange": false, "autoWidth": false,
      "buttons": ["copy", "csv", "excel", "pdf", "print", "colvis"]
    }).buttons().container().appendTo('#example1_wrapper .col-md-6:eq(0)');
    $('#example2').DataTable({
      "paging": true,
      "lengthChange": false,
      "searching": false,
      "ordering": true,
      "info": true,
      "autoWidth": false,
      "responsive": true,
    });
  });
</script>
</body>
</html>
