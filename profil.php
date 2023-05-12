<?php
include "pondasi/kepala.php";
include "admin/config/koneksi.php";
$sql = mysqli_query($conn, "SELECT * FROM profil");
$b = mysqli_fetch_assoc($sql);

?>

<body>

    <!-- MAIN WRAPPER START
        ============================================= -->
    <!-- HEADER END -->

    <!-- CONTENT START
            ============================================= -->
    <section id="content" class="single-wrapper">
        <!-- Page Title -->
        <div class="grey-background wow fadeIn">
            <div class="container">
                <div class="heading-block page-title wow fadeInUp">
                    <h1>Profil Sekolah</h1>
                </div>
            </div>
        </div>

        <!-- SINGLE CLASS START
                ============================================= -->
        <div class="single-classes clearfix">
            <div class="container">
                <div class="row">
                    <!-- Class Gallery Start -->
                    <div class="class-gallery wow fadeIn col-md-6 clearfix">
                        <div class="class-flexslider">
                            <ul class="slides">
                                <li data-thumb="image/Picture1.jpeg">
                                    <img src="image/Picture1.jpeg" alt="" width="auto" height="auto" />
                                </li>
                                <li data-thumb="image/Foto2.jpg">
                                    <img src="image/Foto2.jpg" alt="" width="auto" height="auto" />
                                </li>
                                <li data-thumb="image/Picture3.jpeg">
                                    <img src="image/Picture3.jpeg" alt="" />
                                </li>
                                <li data-thumb="image/Foto4.jpeg">
                                    <img src="image/Foto4.jpeg" alt="" />
                                </li>

                            </ul>
                        </div>
                    </div>
                    <!-- Class Gallery End -->

                    <!-- Class Content Start -->
                    <div class="class-content wow fadeIn col-md-6 clearfix">
                        <p align="justify" style="font-family: Arial, Helvetica, sans-serif;"><?php echo $b['profil'] ?></p>


                    </div>
                    <!-- Class Content End -->

                </div>
            </div>
        </div>

        <div class="grey-background wow fadeIn">
            <div class="container">
                <div class="heading-block page-title wow fadeInUp">
                    <h1>Strategi Sekolah</h1>
                </div>
            </div>
        </div>
        <div class="class-feature grey-background clearfix">
            <div class="container">
                <div class="row">


                    <?php
                    include "admin/config/koneksi.php";
                    $sql = mysqli_query($conn, "SELECT * FROM strategi");
                    while ($b = mysqli_fetch_assoc($sql)) {

                    ?>
                        <div class="feature-item col-md-4 wow fadeInUp">
                            <div class="feature-with-bg" style="background-color: #59bec9;">
                                <div class="feature-icon">
                                    <div class="icon icon-map-1"></div>
                                </div>
                                <div class="feature-desc">

                                    <p><?php echo $b['strategi'] ?>.</p>
                                    <br /> <br /> <br />
                                    <p></p>
                                </div>
                            </div>
                        </div><?php } ?>
                </div>
            </div>
        </div>
        <!-- CLASS FEATURE END -->
        <div class="grey-background wow fadeIn">
            <div class="container">
                <div class="heading-block page-title wow fadeInUp">
                    <h1>Tujuan Sekolah</h1>
                </div>
            </div>
        </div>
        <div class="class-feature grey-background clearfix">
            <div class="container">
                <div class="row">


                    <?php
                    include "admin/config/koneksi.php";
                    $sql = mysqli_query($conn, "SELECT * FROM tujuan");
                    while ($b = mysqli_fetch_assoc($sql)) {

                    ?>
                        <div class="feature-item col-md-4 wow fadeInUp">
                            <div class="feature-with-bg" style="background-color: #e57978;">
                                <div class="feature-icon">
                                    <div class="icon icon-thumbs26"></div>
                                </div>
                                <div class="feature-desc">

                                    <p><?php echo $b['tujuan'] ?></p>
                                    <br /> <br /> <br /> <br />
                                </div>
                            </div>
                        </div><?php } ?>
                </div>
            </div>
        </div>

        <!-- DATA GURU -->
        <!--<div class="grey-background wow fadeIn">
            <div class="container">
                <div class="heading-block page-title wow fadeInUp">
                    <h1>Data Guru</h1>
                </div>
            </div>
        </div>
        <div class="class-course">
            <div class="container">
                <div class="row">-->
        <!-- Nav Tabs -->
        <!--<div class="teacher-nav wow fadeInUp" role="tablist" id="planTabs">
                        <ul class="no-margin no-padding">
                            <?php
                            include "admin/config/koneksi.php";
                            $sql = mysqli_query($conn, "SELECT * FROM guru");
                            while ($b = mysqli_fetch_assoc($sql)) {

                            ?>
                                <li role="presentation" class="col-md-3 active">
                                    <a href="#stelarobson" aria-controls="stelarobson" role="tab" data-toggle="tab">
                                        <img src="admin/foto/guru/<?php echo $b['foto'] ?>" alt="" />

                                    </a> <a class="btn btn-primary"><i class="fa fa-user"></i> <?php echo $b['nama'] ?></a>
                                </li>
                            <?php } ?>

                        </ul>
                    </div>-->
        <!-- Nav Tabs End -->
        </div>

        <!-- Tab panes -->



        <!-- Tab Panes End -->

        </div>
        </div>
        <script type="text/javascript">
            jQuery(window).load(function() {
                var classDetailsHeight = jQuery('.class-item img').height();
                jQuery(".class-details").css("height", classDetailsHeight);
            });
        </script>
        <!-- RELATED CLASSES SCRIPT END -->

    </section>
    <!-- CONTENT END -->

    <!-- FOOTER START
            ============================================= -->
    <footer id="footer">
        <div class="container">

            <div class="container">
                <div class="row">
                    <div class="col-md-8 pull-left wow fadeInUp">
                        <h3>Ayo Daftar Sekarang Juga !</h3>
                    </div>

                    <div class="col-md-4 wow fadeInUp">
                        <div class="button-normal white pull-right">
                            <a href="pendaftaran.php" class="no-margin">Daftar Sekarang!</a>
                        </div>
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

</body>

</html>