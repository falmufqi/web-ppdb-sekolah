<?php
include "pondasi/kepala.php";

include "admin/config/koneksi.php";
$sql = mysqli_query($conn, "SELECT * FROM info");
$b = mysqli_fetch_assoc($sql);

?>

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
                    <h2>INFORMASI PENDAFTARAN</h2>
                    <h4 class="tagline"></h4>
                </div>

                <div class="about-us">
                    <div class="container">
                        <div class="row">
                            <!-- Accordion Start -->
                            <div class="accordion col-md-6">
                                <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
                                    <div class="panel panel-default">
                                        <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                                            <div class="panel-heading" role="tab" id="headingOne">
                                                <h4 class="panel-title">Jadwal Pendaftaran</h4>
                                            </div>
                                        </a>
                                        <div id="collapseOne" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
                                            <div class="panel-body">
                                                <?php echo $b['jadwal'] ?>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="panel panel-default">
                                        <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="true" aria-controls="collapseTwo">
                                            <div class="panel-heading" role="tab" id="headingTwo">
                                                <h4 class="panel-title">Persyaratan Pendaftaran</h4>
                                            </div>
                                        </a>
                                        <div id="collapseTwo" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
                                            <div class="panel-body">
                                                <?php echo $b['syarat'] ?> </div>
                                        </div>
                                    </div>
                                    <div class="panel panel-default">
                                        <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="true" aria-controls="collapseThree">
                                            <div class="panel-heading" role="tab" id="headingThree">
                                                <h4 class="panel-title">Biaya Pendaftaran</h4>
                                            </div>
                                        </a>
                                        <div id="collapseThree" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree">
                                            <div class="panel-body">Rp.
                                                <?php echo $b['biaya'] ?> </div>
                                        </div>
                                    </div>

                                    <div class="panel panel-default">
                                        <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseFour" aria-expanded="true" aria-controls="collapseFour">
                                            <div class="panel-heading" role="tab" id="headingFour">
                                                <h4 class="panel-title">Alamat Sekolah</h4>
                                            </div>
                                        </a>
                                        <div id="collapseFour" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingFour">
                                            <div class="panel-body">
                                                <?php echo $b['tempat'] ?> </div>
                                        </div>
                                    </div>

                                    <div class="panel panel-default">
                                        <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseFive" aria-expanded="true" aria-controls="collapseFive">
                                            <div class="panel-heading" role="tab" id="headingFive">
                                                <h4 class="panel-title">Kontak Pendaftaran</h4>
                                            </div>
                                        </a>
                                        <div id="collapseFive" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingFive">
                                            <div class="panel-body">
                                                <?php echo $b['kontak'] ?> </div>
                                        </div>
                                    </div>

                                </div>
                            </div>
                            <!-- Accordion End -->

                            <div class="col-md-6 wow fadeIn">
                                <div class="heading-block">
                                    <h2>Informasi Lebih Lanjut</h2>
                                </div>
                                <h4> Untuk Informasi lebih lanjut silahkan hubungi kami dibawah ini</h4>
                                <h5>
                                    <li class="fa fa-whatsapp"><a href="https://api.whatsapp.com/send?text=Hai&nbsp;Kak&nbsp;Aku&nbsp;Mau&nbsp;Nanya-nanya&nbsp;Lagi&nbsp;Dong&nbsp;Masih&nbsp;Ada&nbsp;Yang&nbsp;Belum&nbsp;Dimengerti&nbsp;!&phone=6285775020604"> Hubungi Kami</a></li>
                                </h5>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- FEATURES SECTION END -->

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