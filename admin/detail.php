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
   <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
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
                <a href="tambah.php" class="nav-link active">
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
            <h1 class="m-0"></h1>
          </div><!-- /.col -->
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->
    <?php 
        $id = $_GET['id'];

        include '../config/koneksi.php';

        $query = mysqli_query($connect,"SELECT * FROM anggota WHERE id_anggota ='$id'");
        while ($tampil = mysqli_fetch_array($query)) {
          $nama         = $tampil['nama'];
          $tmt_satker   = $tampil['tmt_satker'];
          $tmt_jabatan  = $tampil['tmt_jabatan'];
          $status       = $tampil['status'];
          $pangkat      = $tampil['pangkat'];
          $nrp          = $tampil['nrp'];
          $jabatan      = $tampil['jabatan'];
          $tempat       = $tampil['tempat'];
          $kesatuan     = $tampil['kesatuan'];
          $tgl          = $tampil['tgl'];
          $nama_file    = $tampil['nama_file'];
        }
     ?>
    <form action="update.php" method="post" enctype="multipart/form-data">
    <section class="content">
      <div class="container-fluid">
        <div class="row">
          <div class="col-md-4">
            <div class="card card-default">
                <div class="card-header">
                  <h3 class="card-title"><b>Info Detail Personel</b></h3>
                </div>
                <div class="card-body">
                  <center><br>
                    <img src="file/<?=$nama_file?>" height="380px" alt=""></center><br>
                  <center><i><?= $nama_file ?></i></center>
                </div>
                <div class="card-footer"><br></div>
            </div>
          </div>
          <div class="col-md-8">
            <div class="card card-info">
                <div class="card-header">
                  <h3 class="card-title">Informasi Pribadi</h3>
                </div>
                <div class="card-body">
                  <div class="row">
                  <div class="col-md-6">
                    <div class="form-group">
                      <label>Nama Lengkap:</label>
                        <div class="input-group my-colorpicker2">
                          <input type="text" name="nama" value="<?= $nama ?>" class="form-control" readonly>

                          <div class="input-group-append">
                            <span class="input-group-text"><i class="fas fa-user"></i></span>
                          </div>
                        </div>
                    </div>
                  </div>
                <div class="col-md-6">
                   <div class="form-group">
                      <label>TMT Satker:</label>

                      <div class="input-group my-colorpicker2">
                        <div class="input-group-append">
                              <span class="input-group-text"><i class="fas fa-calendar-alt"></i></span>
                            </div>
                        <input type="date" name="tmt_satker" value="<?= $tmt_satker ?>" class="form-control" readonly>

                      </div>
                    </div>
                </div>
                
                <div class="col-md-6">
                  <div class="bootstrap-timepicker">
                    <div class="form-group">
                      <label>Status</label>
                        <div class="input-group my-colorpicker2">
                           <input type="text" value="<?= $status ?>" class="form-control" readonly>
                            </select>
                            <div class="input-group-append">
                              <span class="input-group-text"><i class="fas fa-university"></i></span>
                            </div>
                        </div>
                    </div>
                  </div>
                </div>

                <div class="col-md-6">
                  <div class="form-group">
                    <label>TMT Jabatan:</label>   
                        <div class="input-group my-colorpicker2">
                          <div class="input-group-append">
                              <span class="input-group-text"><i class="fas fa-calendar-alt"></i></span>
                            </div>
                          <input type="date" name="tmt_jabatan" class="form-control" value="<?= $tmt_jabatan ?>" readonly>
                        </div>
                  </div>
                </div>

                <div class="col-md-6">
                  <div class="form-group">
                    <label>Pangkat</label>
                      <div class="input-group">
                        <input type="text" value="<?= $pangkat ?>" class="form-control" readonly>

                          <div class="input-group-append">
                            <span class="input-group-text">
                              <i class="far fa-address-book"></i>
                            </span>
                          </div>
                    </div>
                  </div>
                </div>

                <div class="col-md-6">
                  <div class="form-group">
                    <label>NRP/NIP</label>
                      <div class="input-group">
                      <div class="input-group-prepend">
                        <span class="input-group-text">
                          <i class="far fa-address-book"></i>
                        </span>
                      </div>
                      <input type="text" class="form-control float-right" value="<?= $nrp ?>" name="nrp" readonly>
                    </div>
                  </div>
                </div>

                
                <div class="col-md-6">
                  <div class="form-group">
                    <label>Jabatan:</label>

                    <div class="input-group my-colorpicker2">
                      <input type="text" name="jabatan" value="<?= $jabatan ?>" class="form-control" readonly>

                      <div class="input-group-append">
                        <span class="input-group-text"><i class="fas fa-id-card"></i></span>
                      </div>
                    </div>
                  </div>
                </div>
                

                <div class="col-md-6">
                  <div class="form-group">
                    <label>Tempat Lahir</label>
                    <div class="input-group">
                      <div class="input-group-append">
                        <span class="input-group-text">
                          <i class="far fa-map"></i>
                        </span>
                      </div>
                      <input type="text" class="form-control float-right" value="<?= $tempat ?>" name="tempat" readonly>
                      
                    </div>
                  </div>
                </div>

                <div class="col-md-6">
                  <div class="bootstrap-timepicker">
                    <div class="form-group">
                      <label>Kesatuan</label>
                      <div class="input-group my-colorpicker2">
                          <input type="text" class="form-control" value="<?=$kesatuan?>" readonly>
                          <div class="input-group-append">
                            <span class="input-group-text"><i class="fas fa-university"></i></span>
                          </div>
                      </div>
                    <!-- /.form group -->
                    </div>
                  </div>
                </div>
                
                
                
                <div class="col-md-6">
                  <div class="form-group">
                    <label>Tanggal Lahir</label>

                    <div class="input-group">
                      <div class="input-group-prepend">
                        <span class="input-group-text"><i class="far fa-calendar-alt"></i></span>
                      </div>
                      <input type="date" class="form-control float-right" value="<?= $tgl ?>" name="tgl" readonly>
                    </div>
                  </div>
                </div>
                <div class="col-md-12">&nbsp;</div>
                <!-- <div class="col-md-12">
                    <input type="hidden" name="id" value=<?php echo $_GET['id'];?>>
                    <input type="submit" name="update" value="Simpan" class="btn btn-info">
                    <input type="reset" name="" value="Reset" class="btn btn-default">
                 </div>
                </div> -->
              </div>
                <div class="card-footer"><br></div>
            </div>
          </div>
        </div>
      </div>

      <?php 
        $queryjoin = mysqli_query($connect,"select * from syarat_pangkat join anggota on anggota.id_anggota = syarat_pangkat.anggota_id");
        $data = mysqli_fetch_array($queryjoin);
       ?>
       <form class="validatorServerSide row g-3">
        <div class="row">
          <div class="col-md-6">
            <div class="card card-info">
                <div class="card-header">
                  <h3 class="card-title">Syarat Kenaikan Pangkat</h3>
                </div>
                <div class="card-body">
                  <div class="row">

                  <div class="col-md-6">
                    <div class="form-group">
                      <label>Riwayat Hidup</label>
                        <div class="input-group my-colorpicker2">
                          <input type="text" name="nama" value="<?= $data['rh'] ?>" class="form-control" required="">
                        </div>
                    </div>
                  </div>
                <div class="col-md-6">
                   <div class="form-group">
                      <label>SMK</label>

                      <div class="input-group my-colorpicker2">
                        <input type="text" name="tmt_satker" value="<?= $data['smk'] ?>" class="form-control" required="">

                      </div>
                    </div>
                </div>
                
                <div class="col-md-6">
                  <div class="bootstrap-timepicker">
                    <div class="form-group">
                      <label>SKEP Pertama</label>
                        <div class="input-group my-colorpicker2">
                            <input type="text" class="form-control" value="<?= $data['skep_pertama'] ?>">
                        </div>
                    </div>
                  </div>
                </div>

                <div class="col-md-6">
                  <div class="form-group">
                    <label>SKEP Terakhir</label>   
                        <div class="input-group my-colorpicker2">
                          <input type="text" name="tmt_jabatan" class="form-control" value="<?= $data['skep_terakhir'] ?>" required="">
                        </div>
                  </div>
                </div>

                <div class="col-md-6">
                  <div class="form-group">
                    <label>SKEP Gaji Terakhir</label>
                      <div class="input-group">
                          <input type="text" class="form-control" value="<?= $data['skep_gaji_t']?>">
                    </div>
                  </div>
                </div>

                <div class="col-md-6">
                  <div class="form-group">
                    <label>Ijazah Dikpolri Terakhir</label>
                      <div class="input-group">
                      <input type="text" class="form-control float-right" value="<?= $data['ijazah_dikpolri'] ?>" name="nrp" required="">
                    </div>
                  </div>
                </div>

                
                <div class="col-md-6">
                  <div class="form-group">
                    <label>Ijazah Dikum Terakhir</label>
                    <div class="input-group my-colorpicker2">
                      <input type="text" name="jabatan" value="<?= $data['ijazah_dikum_t'] ?>" class="form-control" required="">
                    </div>
                  </div>
                </div>
                

                <div class="col-md-6">
                  <div class="form-group">
                    <label>Ijazah Dikjur</label>
                    <div class="input-group">
                      <input type="text" class="form-control float-right" value="<?= $data['ijazah_dikjur'] ?>" name="tempat" required="">
                    </div>
                  </div>
                </div>

                <div class="col-md-6">
                  <div class="bootstrap-timepicker">
                    <div class="form-group">
                      <label>SKHP</label>
                      <div class="input-group my-colorpicker2">
                         <input type="text" class="form-control" value="<?=$data['skhp']?>">
                      </div>
                    <!-- /.form group -->
                    </div>
                  </div>
                </div>
                
                
                
                <div class="col-md-6">
                  <div class="form-group">
                    <label>SKET Lulus Beladiri</label>
                    <div class="input-group">
                      <input type="text" class="form-control float-right" value="<?= $data['sket_lulus_beladiri'] ?>" name="tgl" required="">
                    </div>
                  </div>
                </div>
                
                <div class="col-md-6">
                  <div class="form-group">
                    <label>SKEP Perwira</label>
                    <div class="input-group">
                      <input type="text" class="form-control float-right" value="<?= $data['skep_perwira'] ?>" name="tgl" required="">
                    </div>
                  </div>
                </div>

                <div class="col-md-6">
                  <div class="form-group">
                    <label>SKEP Jabatan</label>
                    <div class="input-group">
                      <input type="text" class="form-control float-right" value="<?= $data['skep_jabatan'] ?>" name="tgl" required="">
                    </div>
                  </div>
                </div>

                <div class="col-md-6">
                  <div class="form-group">
                    <label>Sprinlak Jabatan</label>
                    <div class="input-group">
                      <input type="text" class="form-control float-right" value="<?= $data['sprinlak_jabatan'] ?>" name="tgl" required="">
                    </div>
                  </div>
                </div>
                <div class="col-md-12">&nbsp;</div>
              </div>
                <div class="card-footer"><br></div>
            </div>
          </div>
        </div>
        </div>
    </div>
      </section>
      </form>
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
<script src="../plugins/bs-custom-file-input/bs-custom-file-input.min.js"></script>
<!-- overlayScrollbars -->
<script src="../plugins/overlayScrollbars/js/jquery.overlayScrollbars.min.js"></script>
<!-- AdminLTE App -->
<script src="../dist/js/adminlte.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="../dist/js/demo.js"></script>
<!-- AdminLTE dashboard demo (This is only for demo purposes) -->
<script src="../dist/js/pages/dashboard.js"></script>

<script src="https://code.jquery.com/jquery-3.5.1.min.js" crossorigin="anonymous"></script>
<!-- JavaScript Bundle with Popper.js -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf" crossorigin="anonymous"></script>

<script src="https://cdn.jsdelivr.net/npm/@emretulek/jbvalidator"></script>
<script>
    $(function () {

        let validator = $('form.needs-validation').jbvalidator({
            errorMessage: true,
            successClass: true,
            language: 'dist/lang/en.json'
        });

        //new custom validate methode
        validator.validator.custom = function (el, event) {

            if ($(el).is('[name=password]') && $(el).val().length < 5) {
                return 'Your password is too weak.';
            }

            return '';
        }

        let validatorServerSide = $('form.validatorServerSide').jbvalidator({
            errorMessage: true,
            successClass: true,
        });

        //serverside
        $(document).on('submit', '.validatorServerSide', function () {

            $.ajax({
                method: "get",
                url: "test.json",
                data: $(this).serialize(),
                success: function (data) {
                    if (data.status === 'error') {
                        validatorServerSide.errorTrigger($('[name=username]'), data.message);
                    }
                }
            })

            return false;
        });
    })
</script>
</body>
</html>
