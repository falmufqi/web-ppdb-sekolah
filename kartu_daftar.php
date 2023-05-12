<?php

include("admin/config/koneksi.php");

session_start();
$current_id = $_SESSION['current_id'];

$sql = 'SELECT id_pendaftar, nama_siswa, tempat, tgl_lahir, kampung, rtrw, desa, kecamatan, asal_sklh FROM ppdb WHERE id_pendaftar=' . $current_id;
$query    = mysqli_query($conn, $sql);
$result   = mysqli_fetch_array($query);
?>


<head>

    <!-- Stylesheets
    ============================================= -->
    <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css" />
    <link rel="stylesheet" href="css/kartu.css" type="text/css" />
    <link rel="stylesheet" href="css/print.css" type="text/css" />

    <!-- icon web addres
    ============================================= -->
    <link rel="shortcut icon" href="../tarunakarya1/image/logo_tk_hd.png">

    <!-- Document Title
    ============================================= -->
    <title>Download Kartu Pendaftaran</title>

</head>

<body>
    <div class="card" id="kartu">
        <img src="image/logo_tk_hd.png" alt="Taruna Karya 1 Karawang" style="display: block; margin-top: 10px; margin-left: 5cm;" height="150px" width="150px">
        <h1 align="center">SMK TARUNA KARYA 1</h1>
        <h2 align="center">Kartu Pendaftaran</h2>

        <p>Berikut adalah biodata siswa yang mendaftar :</p>

        <table style="font-family:'Times New Roman', Times, serif">
            <tr>
                <td style="width: 30%;">No Peserta</td>
                <td style="width: 5%;">:</td>
                <td style="width: 65%;"><?php echo $result['id_pendaftar'] ?></td>
            </tr>
            <tr>
                <td style="width: 30%;">Nama</td>
                <td style="width: 5%;">:</td>
                <td style="width: 65%;"><?php echo $result['nama_siswa'] ?></td>
            </tr>
            <tr>
                <td style="width: 30%;">Tempat, tanggal lahir</td>
                <td style="width: 5%;">:</td>
                <td style="width: 65%;"><?php echo $result['tempat'] ?>, <?php echo $result['tgl_lahir'] ?></td>
            </tr>
            <tr>
                <td style="width: 30%; vertical-align: top;">Alamat</td>
                <td style="width: 5%; vertical-align: top;">:</td>
                <td style="width: 65%;"><?= $result['kampung'] ?>, <?= $result['rtrw'] ?>, <?= $result['desa'] ?>, <?= $result['kecamatan'] ?></td>
            </tr>
            <tr>
                <td style="width: 30%; vertical-align: top;">Asal Sekolah</td>
                <td style="width: 5%; vertical-align: top;">:</td>
                <td style="width: 65%;"><?php echo $result['asal_sklh'] ?></td>
            </tr>

        </table>

        <br>

        <p align="justify" style="font-family:'Times New Roman', Times, serif">Dengan ini, kami menyatakan bahwa siswa tersebut telah resmi mendaftar di Sekolah Menengah Kejuruan (SMK) Taruna Karya 1 Karawang dan telah mengikuti prosedur pendaftaran yang ditetapkan oleh sekolah.
            Untuk memverifikasi data, <b>maka kepada calon siswa diharapkan membawa persyaratan yang dapat dilihat di halaman informasi pendaftaran
                dan cetak kartu pendaftaran ini. </b></p>
        <br>
        <div style="width: 50%; text-align: left; float: right;">Karawang, <?= date('d-M-Y'); ?></div><br>
    </div>

    <br>
    <div>
        <button class="no-print block" onclick="JavaScript:window.location.href='kartu_daftar.php?file=kartu peserta.pdf';"> Download</button><br />
    </div>
    <!-- FOOTER START
            ============================================= -->

    <!--<footer id="footer">
        <div class="container">
            <div class="row">

                <div class="container">
                    <div class="row">
                        <div class="col-md-8 pull-left wow fadeInUp">
                            <h3>Silahkan klik tombol download kartu, untuk mendownload kartu pendaftaran !</h3>
                        </div>

                        <div class="col-md-4 wow fadeInUp">
                            <div class="button-normal white pull-right">
                                <a href="pendaftaran.php" class="no-margin">Download Kartu</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </footer>-->

    <!-- FOOTER END -->
    <script>
        window.print();
    </script>
</body>

</html>