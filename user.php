
<?php
session_start();
if($_SESSION['nama']=='')
{
    header("location:index.php");
}
?>
<?php
   $tmtpensiun = date('m-Y', strtotime('+1 month, +58 year', strtotime($_SESSION['tgl'])));
   $tanggallahir = date('d-m-Y', strtotime($_SESSION['tgl']));

    $now = new DateTime();
    
    $old_date = date('Y-m-d', strtotime('+58 year, +1 month', strtotime($_SESSION['tgl'])));
    
    $pensiun = new DateTime($old_date);
    
    $jarak = $pensiun->diff($now);
    
?>

<!DOCTYPE html>
<html lang="en">

<head>
  <link rel="icon" href="images/logo.png">
  <link rel="stylesheet" href="/path/to/cdn/bootstrap.min.css" />
  <script src="/path/to/cdn/jquery.min.js"></script>
  <script src="/path/to/cdn/bootstrap.min.js"></script>

  <title>Data Personel</title>


  <!-- Vendor CSS Files -->
  <link href="assets/vendor/aos/aos.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
  <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <!-- Template Main CSS File -->
  <link href="assets/css/style.css" rel="stylesheet">
</head>
<style type="text/css">
  td ul{
    font-size: 16px;
  }
  ol li{
    line-height: 200%;
  }
</style>
<body>
// <?php
//     $tgl1 = new DateTime();
// 	$tgl2 = date(strtotime('+0 days, +1 month, +58 year', strtotime($_SESSION['tgl'])));
// 	$perbedaan = $tgl2->diff($tgl1);
// ?>
  <!-- ======= Mobile nav toggle button ======= -->
  <i class="bi bi-list mobile-nav-toggle d-xl-none"></i>

  <!-- ======= Header ======= -->
  <header id="header">
    <div class="d-flex flex-column">

      <div class="profile">
        <img src="images/logo.png" style="height: 160px;" alt="" class="img-fluid">
        <div class="social-links mt-3 text-center">
          <a href="https://www.instagram.com/sespimlemdiklatpolri/" class="twitter"><i class="bx bxl-instagram"></i></a>
          <a href="https://www.youtube.com/channel/UCmxhEwS61g6ADHh5xwy87yw" class="instagram"><i class="bx bxl-youtube"></i></a>
        </div>
      </div>

      <nav id="navbar" class="nav-menu navbar">
        <ul>
          <li><a href="#about" class="nav-link scrollto"><i class="bx bx-user"></i> <span>Profil Personel</span></a></li>
          <li><a href="#resume" class="nav-link scrollto"><i class="bx bx-file-blank"></i> <span>Riwayat Pangkat & Jabatan</span></a></li>
          <li><a href="#portfolio" class="nav-link scrollto"><i class="bx bx-book-content"></i> <span>Syarat Jabatan</span></a></li>
          <li><a href="#services" class="nav-link scrollto"><i class="bx bx-server"></i> <span>Syarat Pendidikan</span></a></li>
          <li><a href="#contact" class="nav-link scrollto"><i class="bx bx-envelope"></i> <span>Pensiun</span></a></li>
          <li><a href="config/logout.php" class="nav-link scrollto"><i class="bx bx-log-out"></i> <span>Logout</span></a></li>
        </ul>
      </nav><!-- .nav-menu -->
    </div>
  </header><!-- End Header -->


  <main id="main">

    <!-- ======= About Section ======= -->
    <section id="about" class="about">
      <div class="container">

        <div class="section-title">
          <h2>Profil Personel</h2>
        </div>
        
        <div class="row">
          <div class="col-lg-4" data-aos="fade-right">
            <img style="height: 400px;" src="<?php echo "admin/file/".$_SESSION['nama_file']; ?>" alt="">
          </div>
          <div class="col-lg-8 pt-4 pt-lg-0 content" data-aos="fade-left">
            <h3 style="text-transform: capitalize;"><?php echo $_SESSION['nama']?></h3>
            <p class="fst-italic" style="text-transform: capitalize;">
             <?php echo $_SESSION['jabatan']?>  -  <?php echo $_SESSION['kesatuan']?>
            </p>
            
                <table>
                  <tr>
                    <td><ul><i class="bi bi-person-badge-fill">&nbsp&nbsp</i> <strong>Pangkat</strong></ul></td>
                    <td><ul>&emsp;: &emsp;</ul></td>
                    <td><ul><span style="text-transform: capitalize;"><?php echo $_SESSION['pangkat']?></span></ul></td>
                  </tr>
                  <tr>
                    <td><ul><i class="bi bi-credit-card"></i>&nbsp&nbsp <strong>NRP/NIP</strong></ul></td>
                    <td><ul>&emsp; : &emsp;</ul></td>
                    <td><ul><span><?php echo $_SESSION['nrp']?></span></ul></td>
                  </tr>
                  <tr>
                    <td><ul><i class="bi bi-list-nested"></i>&nbsp&nbsp <strong>Eselon</strong></ul></td>
                    <td><ul>&emsp; : &emsp;</ul></td>
                    <td><ul></ul></td>
                  </tr>
                  <tr>
                    <td><ul><i class="bi bi-geo-alt"></i>&nbsp&nbsp <strong>Tempat & Tanggal Lahir</strong></ul></td>
                    <td><ul>&emsp; : &emsp;</ul></td>
                    <td><ul> <span style="text-transform: capitalize;"><?php echo $_SESSION['tempat']?>, <?php echo date('d F Y', strtotime($_SESSION['tgl']));?></span></ul></td>
                  </tr>
                  <tr>
                    <td><ul><i class="bi bi-journal-medical"></i>&nbsp&nbsp <strong>Umur</strong></ul></td>
                    <td><ul>&emsp; : &emsp;</ul></td>
                    <td><ul><span><?php echo hitung_umur($_SESSION['tgl']) ?></span></ul></td>
                  </tr>
                  <tr>
                    <td><ul><i class="bi bi-list-ul"></i>&nbsp&nbsp <strong>TMT Sespim</strong></ul></td>
                    <td><ul>&emsp; : &emsp;</ul></td>
                    <td><ul><span><?php echo date('d F Y', strtotime($_SESSION['tmt_satker'])); ?></span></ul></td>
                  </tr>
                  <tr>
                    <td><ul><i class="bi bi-list-ul"></i>&nbsp&nbsp <strong>TMT Jabatan</strong></ul></td>
                    <td><ul>&emsp; : &emsp;</ul></td>
                    <td><ul><span><?php echo date('d F Y', strtotime($_SESSION['tmt_jabatan']));?></span></ul></td>
                  </tr>
                </table>
              </div>
            </div>
          </div>
    </section><!-- End About Section -->

    <section id="resume" class="resume section">
      <div class="container">
        <div class="section-title">
          <h2>Riwayat Pendidikan, Pangkat dan Jabatan</h2>
        </div>
      <div class="col-lg-12">
        <div class="row">
          <div class="col-md-4">
            <div class="card card-default">
                <div class="card-header">
                  <h3 class="card-title"><b>Pendidikan Kepolisian</b></h3>
                </div>
                <div class="card-body">
                  <table class="table table-based">
                    <tr>
                      <th>Tingkat</th>
                      <th>Peringkat</th>
                      <th>Tahun</th>
                    </tr>
                    <?php 
                        include 'config/koneksi.php';
                        $ambil = mysqli_query($connect,"SELECT * FROM riwayat_dikpol WHERE id_anggota = '".$_SESSION['id_anggota']."' ORDER BY tmt DESC");
                        while ($data = mysqli_fetch_array($ambil)) {
                          # code...
                        
                     ?>
                    <tr>
                      <td><?= $data['tingkat'] ?></td>
                      <td><?= $data['peringkat'] ?></td>
                      <td><?= $data['tmt'] ?></td>
                    </tr>
                   <?php } ?>
                  </table>
                </div>
                <div class="card-footer"><br></div>
            </div>
          </div>
          <div class="col-md-4">
            <div class="card card-default">
                <div class="card-header">
                  <h3 class="card-title"><b>Pendidikan Umum</b></h3>
                </div>
                <div class="card-body">
                  <table class="table table-based">
                    <tr>
                      <th>Tingkat</th>
                      <th>Nama Institusi</th>
                      <th>Tahun</th>
                    </tr>
                     <?php 
                        include 'config/koneksi.php';
                        $ambil = mysqli_query($connect,"SELECT * FROM riwayat_dikum WHERE id_anggota = '".$_SESSION['id_anggota']."' ORDER BY tmt DESC");
                        while ($data = mysqli_fetch_array($ambil)) {
                          # code...
                        
                     ?>
                    <tr>
                      <td><?= $data['tingkat'] ?></td>
                      <td><?= $data['institusi'] ?></td>
                      <td><?= $data['tmt'] ?></td>
                    </tr>
                   <?php } ?>
                  </table>
                </div>
                <div class="card-footer"><br></div>
            </div>
          </div>
          <div class="col-md-4">
            <div class="card card-default">
                <div class="card-header">
                  <h3 class="card-title"><b>Pendidikan Pengembangan</b></h3>
                </div>
                <div class="card-body">
                  <table class="table table-based">
                    <tr>
                      <th>Dikbang</th>
                      <th>TMT</th>
                    </tr>
                    <?php 
                        include 'config/koneksi.php';
                        $ambil = mysqli_query($connect,"SELECT * FROM riwayat_dikbang WHERE id_anggota = '".$_SESSION['id_anggota']."' ORDER BY tmt DESC");
                        while ($data = mysqli_fetch_array($ambil)) {
                          # code...
                        
                     ?>
                    <tr>
                      <td><?= $data['dikbang'] ?></td>
                      <td><?= $data['tmt'] ?></td>
                    </tr>
                   <?php } ?>
                  </table>
                </div>
                <div class="card-footer"><br></div>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-md-4"><br><br>
            <div class="card card-default">
                <div class="card-header">
                  <h3 class="card-title"><b>Riwayat Pangkat</b></h3>
                </div>
                <div class="card-body">
                  <table class="table table-based">
                    <tr>
                      <th>Pangkat</th>
                      <th>Tahun</th>
                    </tr>
                    <?php 
                        include 'config/koneksi.php';
                        $ambil = mysqli_query($connect,"SELECT * FROM riwayat_pangkat WHERE id_anggota = '".$_SESSION['id_anggota']."' ORDER BY tmt DESC");
                        while ($data = mysqli_fetch_array($ambil)) {
                          # code...
                        
                     ?>
                    <tr>
                      <td><?= $data['pangkat'] ?></td>
                      <td><?= $data['tmt'] ?></td>
                    </tr>
                   <?php } ?>
                  </table>
                </div>
                <div class="card-footer"><br></div>
            </div>
          </div>
          <div class="col-md-8"><br><br>
            <div class="card card-default">
                <div class="card-header">
                  <h3 class="card-title"><b>Riwayat Jabatan</b></h3>
                </div>
                <div class="card-body">
                  <table class="table table-based">
                    <tr>
                      <th>Jabatan</th>
                      <th>Kesatuan</th>
                      <th>TMT</th>
                    </tr>
                   <?php 
                        include 'config/koneksi.php';
                        $ambil = mysqli_query($connect,"SELECT * FROM riwayat_jabatan WHERE id_anggota = '".$_SESSION['id_anggota']."' ORDER BY tmt DESC");
                        while ($data = mysqli_fetch_array($ambil)) {
                          # code...
                        
                     ?>
                    <tr>
                      <td><?= $data['jabatan'] ?></td>
                      <td><?= $data['kesatuan'] ?></td>
                      <td><?= $data['tmt'] ?></td>
                    </tr>
                   <?php } ?>
                  </table>
                </div>
                <div class="card-footer"><br></div>
            </div>
          </div>
        </div>
      </div>
      </div>
    </section>
    <!-- ======= Facts Section ======= -->
    <section id="portfolio" class="resume section-bg">
      <div class="container">

        <div class="section-title">
          <h2>Syarat Menduduki Jabatan</h2>
          <p>Berikut merupakan syarat bila anda ingin menempati posisi jabatan tersebut</p>
        </div>

        <div class="row">
          <div class="col-lg-6" data-aos="fade-up">
            <h3 class="resume-title">Syarat Jabatan</h3>
            <div class="resume-item pb-0">
              <h4>Promosi Kapolres/ III A 2</h4>
              <h5>AKBP</h5>
              <ul>
                <li>berpangkat AKBP</li>
                <li>sekurang-kurangnya 12 bulan menduduki jabatan eselon III A 2</li>
                <li>sudah mengikuti <i>assesment center</i> jabatan Kapolres</li>
                <li>sudah mengikuti Dikbang Sespimmen (Sekolah Pimpinan Menengah)</li>
                <li>Masa Dinas Dalam Jabatan pada ruang jabatan Kapolres sekurang-kurangnya menjabat selama 24 bulan pada 1 atau 2 tempat yang berbeda</li>
              </ul>
            </div>
            <div class="resume-item pb-0">
              <h4>Promosi Eselon III A 1</h4>
              <h5>AKBP Mantap</h5>
              <ul>
                <li>promosi golongan jabatan Kapolres dari AKBP eselon III A 2 ke III A 1 sekurang-kurangnya telah menjabat 24 bulan dan 4 periode penilaian pada 1 atau 2 tempat yang berbeda</li>
                <li>Masa Dinas Dalam Jabatan AKBP eselon III A 1 dilaksanakan sekurang-kurangnya 12 bulan pada penugasan fungsi kepolisian yang berbeda dari jabatan III A 2</li>
              </ul>
            </div>
            <div class="resume-item pb-0">
              <h4>Promosi Eselon III B 3</h4>
              <h5>KOMBES POL</h5>
              <ul>
                <li>sekurang-kurangnya telah menduduki jabatan AKBP eselon III A 1 selama 12 bulan pada penugasan fungsi kepolisian yang berbeda dari jabatan III A 2</li>
                <li>Masa Dinas Dalam Jabatan Kombes Pol eselon III B 3 dilaksanakan sekurang-kurangnya 18 bulan pada penugasan fungsi kepolisian atau penugasan khusus</li>
                <li>promosi jabatan Kapolresta eselon III B 3 dilaksanakan bagi pejabat yang telah berpangkat Kombes Pol III B 3 dan telah menduduki jabatan eselon III B 3 selama sekurang-kurangnya 6 bulan</li>
              </ul>
            </div>
          </div>
          <div class="col-lg-6" data-aos="fade-up" data-aos-delay="1000">
            <h3 class="resume-title" style="color: transparent;">I</h3>
            
            <div class="resume-item pb-0">
              <h4>Promosi Eselon III B 2</h4>
              <h5>KOMBES POL Mantap</h5>
              <ul>
                <li>sekurang-kurangnya telah menduduki jabatan Kombes Pol eselon III B 3 selama 18 bulan dan diutamakan sudah mengikuti Dikbangti</li>
                <li>bagi lulusan Dikbangti yang berasal dari Kombes Pol eselon III B 3 dapat diarahkan untuk kembali menduduki jabatan Kombes Pol eselon III B 3 (waktu pendidikan tidak dihitung)</li>
                <li>Masa Dinas Dalam Jabatan pada ruang jabatan eselon III B 2 dilaksanakan sekurang-kurangnya 18 bulan</li>
              </ul>
            </div>
            <div class="resume-item pb-0">
              <h4>Promosi Eselon III B 1</h4>
              <h5>KOMBES POL Mantap</h5>
              <ul>
                <li>sekurang-kurangnya telah menduduki jabatan Kombes Pol eselon III B 2 selama 18 bulan dan sudah mengikuti Dikbangti</li>
                <li>bagi lulusan Dikbangti yang berasal dari Kombes Pol eselon III B 2 yang belum memenuhi MDDJ selama 18 bulan, maka diarahkan untuk kembali menduduki jabatan Kombes Pol eselon III B 2 (waktu pendidikan tidak dihitung)</li>
                <li>Masa Dinas Dalam Jabatan pada ruang jabatan eselon III B 1 dilaksanakan sekurang-kurangnya 12 bulan</li>
              </ul>
            </div>
            <div class="resume-item pb-0">
              <h4>Promosi Eselon III A</h4>
              <h5>BRIGJEN POL</h5>
              <ul>
                <li>sekurang-kurangnya telah menduduki jabatan Kombes Pol eselon III B 1 selama 12 bulan </li>
                <li>bagi pejabat eselon III B 1 yang telah 6 bulan menduduki jabatan Kombes Pol eselon III B 1 dapat dipanggil untuk mengikuti <i>assessment center</i> golongan kepangkatan Perwira Tinggi Polri berdasarkan penilaian 13 komponen individu personel Polri</li>
              </ul>
            </div>
          </div>
        </div>

      </div>
    </section>

    
    <!-- ======= Resume Section ======= -->
    <!-- <section id="resume" class="resume section-bg">
      <div class="container">

        <div class="section-title">
          <h2>Riwayat Pendidikan</h2>
          <p>Pendidikan yang tertera adalah pendidikan umun dan pendidikan Polri</p>
        </div>

        <div class="row">
          <div class="col-lg-6" data-aos="fade-up">
            <h3 class="resume-title">Dik Um</h3>
            <div class="resume-item">
              <h4>SD</h4>
              <h5>2006-2012</h5>
              <ul>
                <li>SDN Kalasan 1, Sleman, D.I.Yogyakarta</li>
              </ul>
            </div>
            <div class="resume-item">
              <h4>SMP</h4>
              <h5>2012-2015</h5>
              <ul>
                <li>SMPN 1 Cisarua, Bandung Barat, Jawa Barat</li>
              </ul>
            </div>
            <div class="resume-item">
              <h4>SMA</h4>
              <h5>2016-2018</h5>
              <ul>
                <li>SMKN 2 Cimahi, Cimahi, Jawa Barat</li>
              </ul>
            </div>
            <div class="resume-item">
              <h4>Srata 1</h4>
              <h5>2019-2023</h5>
              <ul>
                <li>Universitas Langlangbuana, Bandung, Jawa Barat</li>
              </ul>
            </div>
          </div>
          <div class="col-lg-6" data-aos="fade-up" data-aos-delay="100">
            <h3 class="resume-title">Dik Pol</h3>
            <div class="resume-item">
              <h4>Diktuk BA</h4>
              <h5>2018-2019</h5>
              <ul>
                <li>SPN Cisarua, Bandung Barat, Jawa Barat</li>
              </ul>
            </div>
            <div class="resume-item">
              <h4>Dikjur Minu</h4>
              <h5>2023-2024</h5>
              <ul>
                <li>Pusdikmin, Bandung, Jawa Barat</li>
              </ul>
            </div>
            <div class="resume-item">
              <h4>SIP</h4>
              <h5>2040-2041</h5>
              <ul>
                <li>Secapa, Sukabumi, Jawa Barat</li>
              </ul>
            </div>
          </div>
        </div>

      </div>
    </section> --><!-- End Resume Section -->

    <section id="services" class="services">
      <div class="container">

        <div class="section-title">
          <h2>Syarat Pendidikan</h2>
          <p>Berikut merupakan syarat-syarat yang bilamana anda akan menempuh pendidikan baik SIP, Sespimma, Sespimmen dan Sespimti</p>
        </div>

        <div class="row">
          <div class="col-lg-4 col-md-6 icon-box" data-aos="fade-up">
            <div class="icon"><i class="bi bi-bar-chart"></i></div>
            <h4 class="title"><a href="">Diklat Pim Tk. I</a></h4>
            <p class="description">Silahkan mendownload syarat untuk mengikuti Pendidikan Pengembangan (Diklat PIM)</p>
            <center><button type="button" class="btn btn-warning" data-toggle="modal" data-target="#largeModal">Lihat Disini</button></center>
          </div>
                 <div class="modal fade" id="largeModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                  <br><br><br><br><br><br><br>
                    <div class="modal-dialog modal-lg">
                      <div class="modal-content">
                        <div class="modal-header">
                          <h4 class="modal-title">Syarat Diklat Pim Tk. I</h4>
                        </div>
                        <div class="modal-body">
                         <ol>
                           <li>Usia 5 (lima) tahun sebelum Batas Usia Pensiun (BUP);</li>
                           <li>Pangkat/ Golongan minimal Pembina Tk.I/IV-b atau setara;</li>
                           <li>Bagi yang masih menduduki jabatan Eselon II : Sudah mengikuti dan Lulus Seleksi calon Peserta Diklatpim Tk.I;</li>
                           <li>Biaya Diklat : (Sesuai Perka LAN)</li>
                           <li>Diusulkan oleh Pejabat yang berwenang, yaitu :</li>
                           <ul>
                             <li>Instansi Pusat : Sekjen/Sesmen/Sestama/Setwapres/As. SDM POLRI, Jaksa Agung Muda bidang Pembinaan;</li>
                             <li>Provinsi/Kabupaten/Kota : Gurbernur.</li>
                           </ul>
                         </ol>
                        </div>
                        <div class="modal-footer">
                          <button type="button" onclick="JavaScript:window.location.href='download.php?file=diklatpim.pdf';" class="btn btn-danger">Download</button>
                          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                        </div>
                      </div><!-- /.modal-content -->
                    </div><!-- /.modal-dialog -->
                  </div>

          <div class="col-lg-4 col-md-6 icon-box" data-aos="fade-up" data-aos-delay="100">
            <div class="icon"><i class="bi bi-bar-chart"></i></div>
            <h4 class="title"><a href="">Diklat Pim Tk. II</a></h4>
            <p class="description">Silahkan mendownload syarat untuk mengikuti Pendidikan Pengembangan (Diklat PIM)</p>
            <center><button type="button" class="btn btn-warning" data-toggle="modal" data-target="#largeModal1">Lihat Disini</button></center>
          </div>
                 <div class="modal fade" id="largeModal1" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                  <br><br><br><br><br><br><br>
                    <div class="modal-dialog modal-lg">
                      <div class="modal-content">
                        <div class="modal-header">
                          <h4 class="modal-title">Syarat Diklat Pim Tk. II</h4>
                        </div>
                        <div class="modal-body">
                         <ol>
                           <li>Usia 5 (lima) tahun sebelum Batas Usia Pensiun (BUP);</li>
                           <li>Pangkat/ Golongan minimal Pembina /IV-a;</li>
                           <li>Bagi yang masih menduduki jabatan Eselon III : Sudah mengikuti dan Lulus Seleksi calon Peserta Diklatpim Tk.II;</li>
                           <li>Biaya Diklat : (Sesuai Perka LAN)</li>
                           <li>Diusulkan oleh Pejabat yang berwenang, yaitu :</li>
                           <ul>
                             <li>Instansi Pusat : Sekjen/Sesmen/Sestama/Setwapres/As. SDM POLRI, Jaksa Agung Muda bidang Pembinaan;</li>
                             <li>Provinsi/Kabupaten/Kota : Gurbernur.</li>
                             <li>Kabupaten : Bupati/Sekda kabupaten;</li>
                             <li>Kota : Walikota/Sekda kota;</li>
                           </ul>
                         </ol>
                        </div>
                        <div class="modal-footer">
                          <button type="button" onclick="JavaScript:window.location.href='download.php?file=diklatpim.pdf';" class="btn btn-danger">Download</button>
                          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                        </div>
                      </div><!-- /.modal-content -->
                    </div><!-- /.modal-dialog -->
                  </div>
          <div class="col-lg-4 col-md-6 icon-box" data-aos="fade-up" data-aos-delay="200">
            <div class="icon"><i class="bi bi-bar-chart"></i></div>
            <h4 class="title"><a href="">Diklat Pim Tk. III</a></h4>
            <p class="description">Silahkan mendownload syarat untuk mengikuti Pendidikan Pengembangan (Diklat PIM)</p>
            <center><button type="button" class="btn btn-warning" data-toggle="modal" data-target="#largeModal2">Lihat Disini</button></center>
          </div>
                 <div class="modal fade" id="largeModal2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                  <br><br><br><br><br><br><br>
                    <div class="modal-dialog modal-lg">
                      <div class="modal-content">
                        <div class="modal-header">
                          <h4 class="modal-title">Syarat Diklat Pim Tk. III</h4>
                        </div>
                        <div class="modal-body">
                         <ol>
                           <li>Usia 5 (lima) tahun sebelum Batas Usia Pensiun (BUP);</li>
                           <li>Pangkat/ Golongan minimal Penata /III-c;</li>
                           <li>Bagi yang masih menduduki jabatan Eselon IV : Sudah mengikuti dan Lulus Seleksi calon Peserta Diklatpim Tk.III;</li>
                           <li>Biaya Diklat : (Sesuai Perka LAN)</li>
                           <li>Diusulkan oleh Pejabat yang berwenang, yaitu :</li>
                           <ul>
                             <li>Instansi Pusat : Sekjen/Sesmen/Sestama/Setwapres/As. SDM POLRI, Jaksa Agung Muda bidang Pembinaan;</li>
                             <li>Provinsi : Gurbernur/Sekda Provinsi;</li>
                             <li>Kabupaten : Bupati/Sekda kabupaten;</li>
                             <li>Kota : Walikota/Sekda kota;</li>
                           </ul>
                         </ol>
                        </div>
                        <div class="modal-footer">
                          <button type="button" onclick="JavaScript:window.location.href='download.php?file=diklatpim.pdf';" class="btn btn-danger">Download</button>
                          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                        </div>
                      </div><!-- /.modal-content -->
                    </div><!-- /.modal-dialog -->
                  </div>
          <div class="col-lg-4 col-md-6 icon-box" data-aos="fade-up" data-aos-delay="300">
            <div class="icon"><i class="bi bi-card-checklist"></i></div>
            <h4 class="title"><a href="">Sespimma</a></h4>
            <p class="description">Silahkan mendownload syarat untuk mengikuti pendidikan Sekolah Staf dan Pimpinan Tingkat Pertama Polri</p>
             <center><button type="button" class="btn btn-warning" data-toggle="modal" data-target="#largeModal11">Lihat Disini</button></center>
          </div>
                 <div class="modal fade" id="largeModal11" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                  <br><br><br><br><br><br><br>
                    <div class="modal-dialog modal-lg">
                      <div class="modal-content">
                        <div class="modal-header">
                          <h4 class="modal-title">Syarat Mengikuti Pendidikan Sespimma</h4>
                        </div>
                        <div class="modal-body">
                         <ol>
                           <li>Perwira Polri lulusan Akpol atau SIP berpangkat AKP atau maks Kompol;</li>
                           <li>Masa Dinas Dalam Pangkat(MDDP) AKP min 1 tahun;</li>
                           <li>Maksimal berusia 50 tahun;</li>
                           <li>Diusulkan oleh Ka/Pimpinan yang berwenang;</li>
                           <li>Bagi Pama/Pamen yang bertugas diluar struktur Polri diusulkan oleh Pengguna(Ka/Pimpinan yang berwenang) kepada Kapolri dan wajib mengikuti seleksi yang diselenggarakan oleh Polri;</li>
                           <li>Mampu mengoperasikan komputer dan mengakses jaringan internet;</li>
                           <li>Memiliki Surat Keterangan Hasil Penelitian (SKHP) yang dikeluarkan dari Polda/Mabes Polri;</li>
                           <li>Tidak mendukung atau ikut serta dalam organisasi atau paham yang bertentangan dengan Pancasila, UUD 1945 dan NKRI, paham radikal/ekstrem dan lain-lain;</li>
                           <li>Tidak melakukan perbuatan yang melanggar norma agama, norma kesusilaan dan norma sosial masyarakat termasuk penyimpangan orientasi perilaku seks beresiko;</li>
                           <li>Membuat surat pernyataan siap ditempatkan di seluruh wilayah NKRI.</li>
                         </ol>
                        </div>
                        <div class="modal-footer">
                          <button type="button" onclick="JavaScript:window.location.href='download.php?file=sespimma.pdf';" class="btn btn-danger">Download</button>
                          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                        </div>
                      </div><!-- /.modal-content -->
                    </div><!-- /.modal-dialog -->
                  </div>
          <div class="col-lg-4 col-md-6 icon-box" data-aos="fade-up" data-aos-delay="400">
            <div class="icon"><i class="bi bi-card-checklist"></i></div>
            <h4 class="title"><a href="">Sespimmen</a></h4>
            <p class="description">Silahkan mendownload syarat untuk mengikuti pendidikan Sekolah Staf dan Pimpinan Tingkat Menengah Polri</p>
            <center><button type="button" class="btn btn-warning" data-toggle="modal" data-target="#largeModal12">Lihat Disini</button></center>
          </div>
                 <div class="modal fade" id="largeModal12" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                  <br><br><br><br><br>
                    <div class="modal-dialog modal-lg">
                      <div class="modal-content">
                        <div class="modal-header">
                          <h4 class="modal-title">Syarat Mengikuti Pendidikan Sespimmen</h4>
                        </div>
                        <div class="modal-body">
                         <ol>
                           <li>Perwira Polri lulusan Akpol berpangkat Kompol atau AKBP;</li>
                           <li>MDP paling singkat 15(lima belas) tahun pada saat pembukaan pendidikan;</li>
                           <li>Masa Dinas Dalam Pangkat(MDDP) Kompol paling sedikit 2(dua) tahun;</li>
                           <li>Telah lulus pendidikan S-1 STIK atau Sespimma Polri minimal 2(dua) tahun;</li>
                           <li>Maksimal usia 45 tahun dan untuk program matrikulasi S2 kedinasan tanpa batasan umur;</li>
                           <li>Anggota Polri yang memiliki Kep Kapolri tentang penghargaan promosi pendidikan Sespimmen;</li>
                           <li>Diusulkan oleh Pimpinan yang berwenang;</li>
                           <li>Bagi Pamen yang bertugas diluar struktur Polri diusulkan oleh Pengguna(Ka/Pimpinan yang berwenang) kepada Kapolri dan wajib mengikuti seleksi yang diselenggarakan oleh Polri;</li>
                           <li>Mampu mengoperasikan komputer dan mengakses jaringan internet;</li>
                           <li>Memiliki Surat Keterangan Hasil Penelitian (SKHP) dengan keterangan memenuhi syarat untuk mengikuti Sekolah Pendidikan Pengembangan yang dikeluarkan dari Bidpropam Polda/ Divpropam Mabes Polri;</li>
                           <li>Tidak mendukung atau ikut serta dalam organisasi atau paham yang bertentangan dengan Pancasila, UUD 1945 dan NKRI, paham radikal/ekstrem dan lain-lain;</li>
                           <li>Tidak melakukan perbuatan yang melanggar norma agama, norma kesusilaan dan norma sosial masyarakat termasuk penyimpangan orientasi perilaku seks beresiko;</li>
                           <li>Membuat surat pernyataan siap ditempatkan di seluruh wilayah NKRI.</li>
                         </ol>
                        </div>
                        <div class="modal-footer">
                          <button type="button" onclick="JavaScript:window.location.href='download.php?file=sespimmen.pdf';" class="btn btn-danger">Download</button>
                          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                        </div>
                      </div><!-- /.modal-content -->
                    </div><!-- /.modal-dialog -->
                  </div>
          <div class="col-lg-4 col-md-6 icon-box" data-aos="fade-up" data-aos-delay="500">
            <div class="icon"><i class="bi bi-card-checklist"></i></div>
            <h4 class="title"><a href="">Sespimti</a></h4>
            <p class="description">Silahkan mendownload syarat untuk mengikuti pendidikan Sekolah Staf dan Pimpinan Tingkat Tinggi Polri</p>
           <center><button type="button" class="btn btn-warning" data-toggle="modal" data-target="#largeModal13">Lihat Disini</button></center>
          </div>
                 <div class="modal fade" id="largeModal13" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                  <br><br><br><br><br><br><br>
                    <div class="modal-dialog modal-lg">
                      <div class="modal-content">
                        <div class="modal-header">
                          <h4 class="modal-title">Syarat Mengikuti Pendidikan Sespimti</h4>
                        </div>
                        <div class="modal-body">
                         <ol>
                           <li>Pamen Polri lulusan Akpol berpangkat paling rendah Komisaris Besar Polisi;</li>
                           <li>Masa Dinas Dalam Pangkat(MDDP) Kombes Pol minimal 2(dua) tahun;</li>
                           <li>Masa Dinas Perwira (MDP) minimal 23 tahun;</li>
                           <li>Maksimal usia 50 tahun;</li>
                           <li>Lulusan Sespimmen Polri dan Sesko Angkatan;</li>
                           <li>Memiliki Surat Keterangan Hasil Penelitian (SKHP) dengan Keterangan <b>Memenuhi Syarat</b> untuk mengikuti Sekolah Pendidikan Pengembangan yang dikeluarkan dari Divpropam Mabes Polri;</li>
                           <li>Diusulkan oleh Kasatker atau Kasatwil tempat anggota Polri bertugas;</li>
                           <li>Bagi anggota Polri yang bertugas di luar struktur Polri diusulkan oleh pimpinan organisasi pengguna kepada Kapolri</li>
                         </ol>
                        </div>
                        <div class="modal-footer">
                          <button type="button" onclick="JavaScript:window.location.href='download.php?file=sespimti.pdf';" class="btn btn-danger">Download</button>
                          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                        </div>
                      </div><!-- /.modal-content -->
                    </div><!-- /.modal-dialog -->
                  </div>
        </div>

      </div>
    </section><!-- End Services Section -->

   <section id="testimonials" class="testimonials section-bg">
      <div class="container">

        <div class="section-title">
          <h2>Link</h2>
          <p>berikut merupakan link untuk mengisi komponen Polri</p>
        </div>

        <div class="testimonials-slider swiper" data-aos="fade-up" data-aos-delay="100">
          <div class="swiper-wrapper">

            <div class="swiper-slide">
              <div class="testimonial-item" data-aos="fade-up">
                <p>
                  <i class="bx bxs-quote-alt-left quote-icon-left"></i>
                  untuk mengisi nilai mental pribadi<i class="bx bxs-quote-alt-right quote-icon-right"></i> <br><br><a href="https://play.google.com/store/apps/details?id=id.polri.biropsi&hl=in&gl=US"><button class="btn btn-primary">Klik disini</button></a>
                  
                </p>
                <img src="images/mental.jpg" style="height: 90px;" class="testimonial-img" alt="">
                <h3>E-Mental Polri</h3>
              </div>
            </div><!-- End testimonial item -->

            <div class="swiper-slide">
              <div class="testimonial-item" data-aos="fade-up" data-aos-delay="100">
                <p>
                  <i class="bx bxs-quote-alt-left quote-icon-left"></i>
                  untuk mengisi nilai rohani pribadi<i class="bx bxs-quote-alt-right quote-icon-right"></i><br><br> <a href="https://cat.e-rohani.ssdm.polri.go.id/login"><button class="btn btn-primary">Klik disini</button></a>
                  
                </p>
                <img src="images/rohani.png" style="height: 90px;" class="testimonial-img" alt="">
                <h3>E-Rohani Polri</h3>
              </div>
            </div><!-- End testimonial item -->

            <div class="swiper-slide">
              <div class="testimonial-item" data-aos="fade-up" data-aos-delay="200">
                <p>
                  <i class="bx bxs-quote-alt-left quote-icon-left"></i>
                  untuk mengisi nilai SMK pribadi <i class="bx bxs-quote-alt-right quote-icon-right"></i><br><br><a href="https://smk.polri.go.id/"><button class="btn btn-primary">Klik disini</button></a>
                  
                </p>
                <img src="images/smk.png" style="height: 90px;" class="testimonial-img" alt="">
                <h3>SMK Polri</h3>
              </div>
            </div><!-- End testimonial item -->

            <div class="swiper-slide">
              <div class="testimonial-item" data-aos="fade-up" data-aos-delay="300">
                <p>
                  <i class="bx bxs-quote-alt-left quote-icon-left"></i>
                 untuk melihat BPJS anda <i class="bx bxs-quote-alt-right quote-icon-right"></i><br> <br><a href="https://bpjs-kesehatan.go.id/bpjs/"><button class="btn btn-primary">Klik disini</button></a>
                 
                </p>
                <img src="images/bpjs.png" style="height: 90px;" class="testimonial-img" alt="">
                <h3>BPJS</h3>
              </div>
            </div><!-- End testimonial item -->

            <div class="swiper-slide">
              <div class="testimonial-item" data-aos="fade-up" data-aos-delay="400">
                <p>
                  <i class="bx bxs-quote-alt-left quote-icon-left"></i>
                   untuk melihat UKP <i class="bx bxs-quote-alt-right quote-icon-right"></i><br><br><a href="https://ukp.ssdm.polri.go.id/"><button class="btn btn-primary">Klik disini</button></a>
                  
                </p>
                <img src="images/ukp.jpg" style="height: 90px;" class="testimonial-img" alt="">
                <h3>UKP Polri</h3>
              </div>
            </div><!-- End testimonial item -->
            
            <div class="swiper-slide">
              <div class="testimonial-item" data-aos="fade-up" data-aos-delay="400">
                <p>
                  <i class="bx bxs-quote-alt-left quote-icon-left"></i>
                   untuk melihat hasil pembinaan kesamaptaan jasmani <i class="bx bxs-quote-alt-right quote-icon-right"></i><br><br><a href="https://e-binjas.polri.go.id/"><button class="btn btn-primary">Klik disini</button></a>
                  
                </p>
                <img src="images/e-binjas.png" style="height: 90px;" class="testimonial-img" alt="">
                <h3>E-Binjas Polri</h3>
              </div>
            </div><!-- End testimonial item -->
            
            <div class="swiper-slide">
              <div class="testimonial-item" data-aos="fade-up" data-aos-delay="400">
                <p>
                  <i class="bx bxs-quote-alt-left quote-icon-left"></i>
                   untuk melihat data SDM polri <i class="bx bxs-quote-alt-right quote-icon-right"></i><br><br><a href="https://sipp.polri.go.id/"><button class="btn btn-primary">Klik disini</button></a>
                  
                </p>
                <img src="images/sipp.png" style="height: 90px;" class="testimonial-img" alt="">
                <h3>SIPP Polri</h3>
              </div>
            </div><!-- End testimonial item -->
          </div>
          <div class="swiper-pagination"></div>
        </div>

      </div>
    </section><!-- End Testimonials Section -->

    <section id="contact" class="contact">
      <div class="container">

        <div class="section-title">
          <h2>Pensiun</h2>
          
        </div>

        <div class="row" data-aos="fade-in">

          <div class="col-lg-5 d-flex align-items-stretch">
            <div class="info">
             <div class="email">
                <i class="bi bi-envelope"></i>
                <h4>Tanggal Lahir</h4>
                <p><?= date('d F Y', strtotime($tanggallahir)); ?></p>
              </div>
              <div class="email">
                <i class="bi bi-envelope"></i>
                <h4>TMT Pensiun</h4>
                <p>01-<?= $tmtpensiun; ?></p>
              </div>
              <div class="email">
                <i class="bi bi-envelope"></i>
                <h4>Aktif Berdinas</h4>
                <p><?= $jarak->y?> Tahun <?= $jarak->m ?> Bulan <?= $jarak->d ?> Hari
                </p>
              </div>
            </div>

          </div>

          <div class="col-lg-7 mt-5 mt-lg-0 d-flex align-items-stretch">
            <form action="forms/contact.php" method="post" role="form" class="php-email-form">
             <!-- <div class="row">-->
             <!--   <div class="form-group col-md-6">-->
             <!--     <label for="name"><b>Persyaratan</b></label>-->
             <!--     <input type="text" name="name" class="form-control" id="name" readonly="">-->
             <!--   </div>-->
             <!--   <div class="form-group col-md-6">-->
             <!--     <label for="name">&nbsp;</label>-->
             <!--     <input type="email" class="form-control" name="email" id="email" readonly="">-->
             <!--   </div>-->
             <!-- </div>-->
             <!-- <div class="form-group">-->
             <!--   <label for="name">&nbsp;</label>-->
             <!--   <input type="text" class="form-control" name="subject" id="subject" readonly="">-->
             <!-- </div>-->
             <!-- <div class="form-group">-->
             <!--   <label for="name">&nbsp;</label>-->
             <!--   <textarea class="form-control" name="message" rows="10" readonly=""></textarea>-->
             <!-- </div>-->
             <!--  <div class="my-3">
             <!--   <div class="loading">Loading</div>-->
             <!--   <div class="error-message"></div>-->
             <!--   <div class="sent-message">Your message has been sent. Thank you!</div>-->
             <!-- </div>-->
             <!-- <div class="text-center"><button type="submit">Send Message</button></div> -->
             <?php
                if($_SESSION['status']=='Polri'){
                    ?>
              <h4 class="resume-title">Syarat Pensiun</h4>
             <div class="resume-item pb-0">
              <ul>
                <li>Daftar Riwayat Hidup</li>
                <li>Fotocopy Pengangkatan Pertama (Kep Pertama)</li>
                <li>Fotocopy Keputusan Dan Gaji Terakhir</li>
                <li>Fotocopy Gaji Berkala Terakhir</li>
                <li>Fotocopy Surat Nikah Dan Kartu Penunjukan Istri(Kpi)</li>
                <li>Fotocopy Kartu Tanda Peserta Asabri </li>
                <li>Fotocopy Nomor Pokok Wajib Pajak (Npwp)</li>
                <li>Fotocopy Ktp Ybs & Ktp Suami</li>
                <li>5 Lembar Pas Foto Berwarna Pakaian Pdh Tanpa Pet Dan Kacamata Ukuran 4x6 Latar Merah</li>
                <li>5 Lembar Pas Foto Berwarna Suami Ukuran 4x6 Latar Merah</li>
                <li>Fotocopy Tanda Kehormatan Bintang Nararya</li>
                <li>Fotocopy Kartu Keluarga (Kk)</li>
                <li>Fotocopy Akte / Keterangan Kuliah Anak Yang Masuk Dalam Tanggungan ( Untuk Anak Yang Masih Bersekolah Dan Berusia Di Bawah 21 Tahun Dilampirkan Akte , Untuk Anak Sudah Kuliah Diatas 21 Tahun Dilampirkan Keterangan Kuliah Dari Kampus Ybs)</li>
                <li>Surat Keterangan Kematian/Akte Kematian</li>
                <li>Surat Keterangan Janda (Warakawuri)</li>
                <li>Surat Keterangan Ahli Waris</li>
              </ul>
            </div>
            <?php }
            else{
                ?>
            <h4 class="resume-title">Syarat Pensiun</h4>
            <div class="resume-item pb-0">
              <ul>
                <li>Asli Surat Permohonan Dari Ybs</li>
                <li>Daftar Perorangan Calon Penerima Pensiun (Dpcp)</li>
                <li>Foto Copy Pengangkatan Sebagai Tenaga Honorer</li>
                <li>Foto Copy Keputusan Capeg, Pns Dan Pangkat Terakhir</li>
                <li>Foto Copy Kenaikan Gaji Berkala Terakhir</li>
                <li>Foto Copy Surat Nikah</li>
                <li>Foto copy kartu tanda peserta ASABRI</li>
                <li>Foto Copy Nomor Pokok Wajib Pajak (NPWP)</li>
                <li>Foto copy KTP</li>
                <li>Daftar Susunan Keluarga</li>
                <li>Daftar Susunan Keluarga Dengan Penjelasan Tanggal Lahir (Kk)</li>
                <li>Surat Pernyataan Telah Mengembalikan Barang Milik Negara.</li>
                <li>Surat Keterangan Tidak Pernah Dijatuhi Hukuman Berat Maupun Ringan</li>
                <li>Surat pernyataan alamat terakhir yang bersangkutan</li>
                <li>Daftar Penilaian Pelaksanaan Pekerjaan (Dp-3) Dan Sasaran Kinerja Pegawai (Skp)</li>
                <li>Pas Photo Berwarna Ukuran 4 X 6 Cm Sebanyak 5 Lembar (Suami Dan Istri Masing-Masing 5 Lembar Tanpa Kacamata)</li>
                <li>Akte / Keterangan Kuliah Anak Yang Masuk Dalam Tanggungan. ( Untuk Anak Masih Bersekolah Dan Berusia Dibawah 21 Dilampirkan Akte , Untuk Anak Sudah Kuliah Diatas 21 Tahun Dilampirkan Keterangan Kuliah Dari Kampus 
Ybs</li>
              </ul>
            </div>
            <?php } ?>
            </form>
          </div>

        </div>

      </div>
    </section>
  <!-- ======= Footer ======= -->
  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

  <!-- Vendor JS Files -->
  <script src="assets/vendor/purecounter/purecounter.js"></script>
  <script src="assets/vendor/aos/aos.js"></script>
  <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="assets/vendor/glightbox/js/glightbox.min.js"></script>
  <script src="assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
  <script src="assets/vendor/swiper/swiper-bundle.min.js"></script>
  <script src="assets/vendor/typed.js/typed.min.js"></script>
  <script src="assets/vendor/waypoints/noframework.waypoints.js"></script>
  <script src="assets/vendor/php-email-form/validate.js"></script>

  <!-- Template Main JS File -->
  <script src="assets/js/main.js"></script>
  <?php
    function hitung_umur($tanggal_lahir){
      $birthDate = new DateTime($tanggal_lahir);
      $today = new DateTime("today");
      if ($birthDate > $today) { 
          exit("0 tahun 0 bulan 0 hari");
      }
      $y = $today->diff($birthDate)->y;
      $m = $today->diff($birthDate)->m;
      $d = $today->diff($birthDate)->d;
      return $y." tahun ".$m." bulan ".$d." hari";
    }
   
    ?>
</body>

</html>