<?php
include "pondasi/kepala.php";
?>
<html>

<head>

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
                    <h2><strong>Pendaftaran Siswa Baru</strong></h2>
                    <h4 class="tagline">Form Pendaftaran Sekolah</h4>
                </div>

                <div class="row">
                    <div class="features">
                    </div>


                    <!-- <center>-->
                    <form action="proses_daftar.php" method="post">
                        <div class="box-body">
                            <div class="form-group">
                                <label>Nama Lengkap</label>
                                <input type="text" name="nama_siswa" class="form-control" placeholder="Input Nama" style="width: 500px;" required>
                            </div>
                            <div class="form-group">
                                <label>Tempat Lahir</label>
                                <input type="text" name="tempat" class="form-control" placeholder="Input Tempat Lahir" style="width: 500px;" required>
                            </div>
                            <div class="form-group">
                                <label>Tanggal Lahir</label>
                                <input type="date" name="tgl_lahir" class="form-control" placeholder="Input Tempat Lahir" style="width: 500px;" required>
                            </div>
                            <div class="form-group">
                                <label>Jenis Kelamin</label></br>
                                <select name="jenis_kel" class="form-control" style="width: 500px;" required>
                                    <option>--Pilih Jenis Kelamin--</option>
                                    <option value="Pria">Pria</option>
                                    <option value="Wanita">Wanita</option>
                                </select>
                            </div>
                            <label>Agama</label></br>
                            <select name="agama" class="form-control" style="width: 500px;" required>
                                <option>--Pilih Agama--</option>
                                <option value="Islam">Islam</option>
                                <option value="Kristen">Kristen</option>
                                <option value="Hindu">Hindu</option>
                                <option value="Konghuch">Konghuch</option>
                                <option value="Budha">Budha</option>
                            </select>

                            <div class="form-group"></br>
                                <label>Nama Ayah</label>
                                <input type="text" name="nm_ayah" class="form-control" placeholder="Input Nama Ayah" style="width: 500px;" required>
                            </div>
                            <div class="form-group">
                                <label>Nama Ibu</label>
                                <input type="text" name="nm_ibu" class="form-control" placeholder="Input Nama Ibu" style="width: 500px;" required>
                            </div>
                            <div class="form-group">
                                <label>Pekerjaan Ayah</label>
                                <input type="text" name="job_ayah" class="form-control" placeholder="Input Pekerjaan Ayah" style="width: 500px;" required>
                            </div>
                            <div class="form-group">
                                <label>Dusun/Kampung</label>
                                <input type="text" name="kampung" class="form-control" placeholder="Input Nama Kampung" style="width: 500px;" required>
                            </div>
                            <div class="form-group">
                                <label>RT/RW</label>
                                <input type="text" name="rtrw" class="form-control" placeholder="Input No RT/RW" style="width: 500px;" required>
                            </div>

                            <div class="form-group">
                                <label>Desa/Kelurahan</label>
                                <input type="text" name="desa" class="form-control" placeholder="Input Nama Kelurahan" style="width: 500px;" required>
                            </div>

                            <div class="form-group">
                                <label>Kecamatan</label>
                                <input type="text" name="kecamatan" class="form-control" placeholder="Input Nama Kecamatan" style="width: 500px;" required>
                            </div>

                            <div class="form-group">
                                <label>Kabupaten</label>
                                <input type="text" name="kabupaten" class="form-control" placeholder="Input Nama Kabupaten" style="width: 500px;" required>
                            </div>
                            <div class="form-group">
                                <label>Asal Sekolah</label>
                                <input type="text" name="asal_sklh" class="form-control" placeholder="Input Nama Asal Sekolah" style="width: 500px;" required>
                            </div>

                            <label>Jurusan</label></br>
                            <select name="jurusan" class="form-control" style="width: 500px;" required>
                                <option>--Pilih Jurusan--</option>
                                <option value="Teknik Mesin">Teknik Mesin</option>
                                <option value="Teknik Pengelasan">Teknik Pengelasan</option>
                                <option value="Desain Grafis">Teknik Desain Grafis</option>
                            </select>

                            <div class="form-group">
                                <br><label>Nomor Telepon Siswa</label>
                                <input type="number" name="no_siswa" class="form-control" placeholder="Input Nomor Telepon" style="width: 500px;">
                            </div>

                            <div class="form-group">
                                <label>Nomor Telepon Orangtua</label></br>
                                <input type="number" name="no_ortu" class="form-control" placeholder="Input Nomor Telepon" style="width: 500px;">
                            </div>
                            <div class="form-group">
                                <label>Tahu SMK Taruna Karya 1 Dari mana ?</label></br>
                                <input type="text" name="tau_smk" class="form-control" placeholder="Contoh : Brosur, Instagram. (Jika dari alumni tulis nama alumni tersebut)" style="width: 500px;" required>
                            </div>
                            <div class="form-group">
                                <label>Kendaraan</label></br>
                                <input type="text" name="tau_smk" class="form-control" placeholder="Masukan Nama Kendaraan" style="width: 500px;" required>
                            </div>
                            <p>
                            <div class="box-footer">
                                <button type="button" class="btn btn-danger">
                                    <a href="index.php"> <strong>Batal</strong>
                                    </a></button>
                                &nbsp;&nbsp;
                                <button type="submit" class="btn btn-success">
                                    <strong>Simpan</strong>
                                </button>
                            </div>
                            </p>
                        </div>
                        <!--</center>-->
                </div>
                </form>

    </section>

    <!-- FOOTER START
            ============================================= -->
    <footer id="footer">
        <div class="container">
            <div class="row">

                <div class="container">
                    <div class="row">
                        <div class="col-md-15 pull-left wow fadeInUp">
                            <h2>Terimakasih Sudah Mendaftar di SMK Taruna Karya 1 Karawang !</h2>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        </div>

    </footer>

    <!-- COPYRIGHT START
            ============================================= -->
    <?php
    include "pondasi/kaki.php";
    ?>
</body>

</html>