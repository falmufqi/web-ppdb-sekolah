<?php
include "pondasi/kepala.php";
include("admin/config/koneksi.php");
$data_pendaftar = mysqli_query($conn, "SELECT * FROM ppdb");
$nomor = 1;
?>

<head>
    <link rel="stylesheet" href="https://cdn.datatables.net/1.11.3/css/jquery.dataTables.min.css">
</head>

<body>

    <!-- MAIN WRAPPER START
        ============================================= -->
    <!-- HEADER END -->

    <!-- CONTENT START
            ============================================= -->
    <section id="content" class="single-wrapper">

        <div class="our-features grey-background">
            <div class="container">
                <div class="heading-block wow fadeIn">
                    <h2>Pendaftar</h2>
                    <h4 class="tagline">Berikut adalah data pendaftar</h4>
                </div>
                <h3 class="tagline">Silahkan klik download kartu, untuk mendownload kartu pendaftaran</h3>
                <table id="tabel-data">
                    <thead>
                        <tr>
                            <th style="background-color: #219ebc;"><b>No</b></th>
                            <th style="background-color: #219ebc;"><b>Nama Siswa</b></th>
                            <th style="background-color: #219ebc;"><b>Jenis Kelamin</b></th>
                            <th style="background-color: #219ebc;"><b>Asal Sekolah</b></th>
                            <th style="background-color: #219ebc;"><b>Jurusan</b></th>
                            <th style="background-color: #219ebc;"><b>Tanggal Lahir</b></th>
                            <th style="background-color: #219ebc;"><b>Agama</b></th>
                            <th style="background-color: #219ebc;"><b>Kecamatan</b></th>
                            <!--<th style="background-color: #219ebc;"><b>Download Kartu</b></th>-->
                        </tr>
                    </thead>
                    <tbody>
                        <?php
                        while ($data = mysqli_fetch_array($data_pendaftar)) {
                        ?>
                            <tr>
                                <td><?php echo $nomor++; ?></td>
                                <td><?php echo $data['nama_siswa']; ?></td>
                                <td><?php echo $data['jenis_kel']; ?></td>
                                <td><?php echo $data['asal_sklh']; ?></td>
                                <td><?php echo $data['jurusan']; ?></td>
                                <td><?php echo $data['tgl_lahir']; ?></td>
                                <td><?php echo $data['agama']; ?></td>
                                <td><?php echo $data['kecamatan']; ?></td>
                                <!--<td><a href="kartu_daftar.php?id_pendaftar=<?= $data['id_pendaftar'] ?>">Download</a></td>-->
                            </tr>

                        <?php
                        }
                        ?>
                    </tbody>
                </table>
            </div>
            <!-- FEATURES SECTION END -->

            <!-- CLASS AND COURSE SECTION START
    
     
      
      

    
                ============================================= -->

            <!-- PRICING TABLE SECTION END -->

    </section>
    <!-- CONTENT END -->

    <!-- FOOTER START
            ============================================= -->
    <footer id="footer">

        <div class="container">
            <div class="row">
                <div class="col-md-8 pull-left wow fadeInUp">
                    <h3>Ayo Daftar Sekarang !</h3>
                </div>

                <div class="col-md-4 wow fadeInUp">
                    <div class="button-normal white pull-right">
                        <a href="pendaftaran.php" class="no-margin">Daftar Sekarang!</a>
                    </div>
                </div>
            </div>
        </div>

    </footer>
    <!-- FOOTER END -->

    <!-- COPYRIGHT START
            ============================================= -->

    <?php
    include "pondasi/kaki.php";
    ?>
    <!-- COPYRIGHT END -->

    </div>
    <!-- MAIN WRAPPER END -->

    <!-- Footer Scripts
        ============================================= -->
    <!-- External -->
    <script type="text/javascript" src="js/plugin.js"></script>
    <script type="text/javascript" src="js/main.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" class="no-print"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" class="no-print"></script>
    <script src="https://code.jquery.com/jquery-1.11.0.min.js" class="no-print"></script>
    <script src="http://cdn.datatables.net/1.11.3/js/jquery.dataTables.min.js" class="no-print"></script>
    <script>
        $(document).ready(function() {
            $('#tabel-data').DataTable();
        });
    </script>

</body>

</html>