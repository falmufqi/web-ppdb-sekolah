<?php

include "pondasi/kepala.php";
include "pondasi/kiri.php";


?>
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
        <div class="d-flex align-items-center">
            <div class="mr-auto">
                <h3 class="page-title">Edit Data Pendaftar</h3>
                <div class="d-inline-block align-items-center">
                    <nav>

                    </nav>
                </div>
            </div>

        </div>
    </div>


    <!-- Main content -->
    <section class="content">




        <div class="row">
            <div class="col-lg-6 col-12">
                <div class="box">
                    <div class="box-header with-border">
                        <h4 class="box-title">Form Edit Pendaftar </h4>
                        <ul class="box-controls pull-right">
                            <li><a class="box-btn-close" href="#"></a></li>
                            <li><a class="box-btn-slide" href="#"></a></li>
                            <li><a class="box-btn-fullscreen" href="#"></a></li>
                        </ul>
                    </div>
                    <!-- /.box-header -->
                    <?php
                    $id = $_GET['id'];
                    $sql = mysqli_query($conn, "SELECT * FROM ppdb where id='$id'");
                    while ($b = mysqli_fetch_assoc($sql)) {

                    ?>

                        <form class="form" action="pendaftar-act-edit.php" method="post">
                            <div class="box-body">

                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <label>Nama Siswa</label>
                                            <input type="hidden" name="id" value="<?php echo $b['id'] ?>" class="form-control">
                                            <input type="text" name="nama_siswa" value="<?php echo $b['nama_siswa'] ?>" class="form-control" required>
                                        </div>
                                        <div class="form-group">
                                            <label>Tempat</label>
                                            <input type="text" name="tempat" value="<?php echo $b['tempat'] ?>" class="form-control" required>

                                        </div>
                                        <div class="form-group">
                                            <label>Tanggal Lahir</label>
                                            <input type="text" name="tgl_lahir" value="<?php echo $b['tgl_lahir'] ?>" class="form-control" required>

                                        </div>
                                        <div class="form-group">
                                            <label>Jenis Kelamin</label>
                                            <input type="text" name="jenis_kel" value="<?php echo $b['jenis_kel'] ?>" class="form-control" required>

                                        </div>
                                        <div class="form-group">
                                            <label>Agama</label>
                                            <input type="text" name="agama" value="<?php echo $b['agama'] ?>" class="form-control" required>

                                        </div>
                                        <div class="form-group">
                                            <label>Nama Ayah</label>
                                            <input type="text" name="nm_ayah" value="<?php echo $b['nm_ayah'] ?>" class="form-control" required>

                                        </div>
                                        <div class="form-group">
                                            <label>Nama Ibu</label>
                                            <input type="text" name="nm_ibu" value="<?php echo $b['nm_ibu'] ?>" class="form-control" required>

                                        </div>
                                        <div class="form-group">
                                            <label>Pekerjaan Ayah</label>
                                            <input type="text" name="job_ayah" value="<?php echo $b['job_ayah'] ?>" class="form-control" required>

                                        </div>
                                        <div class="form-group">
                                            <label>Dusun/Kampung</label>
                                            <input type="text" name="kampung" value="<?php echo $b['kampung'] ?>" class="form-control" required>

                                        </div>
                                        <div class="form-group">
                                            <label>RT/RW</label>
                                            <input type="text" name="rtrw" value="<?php echo $b['rtrw'] ?>" class="form-control" required>

                                        </div>
                                        <div class="form-group">
                                            <label>Desa</label>
                                            <input type="text" name="desa" value="<?php echo $b['desa'] ?>" class="form-control" required>

                                        </div>
                                        <div class="form-group">
                                            <label>Kecamatan</label>
                                            <input type="text" name="kecamatan" value="<?php echo $b['kecamatan'] ?>" class="form-control" required>

                                        </div>
                                        <div class="form-group">
                                            <label>Kabupaten</label>
                                            <input type="text" name="kabupaten" value="<?php echo $b['kabupaten'] ?>" class="form-control" required>

                                        </div>
                                        <div class="form-group">
                                            <label>Asal Sekolah</label>
                                            <input type="text" name="asal_sklh" value="<?php echo $b['asal_sklh'] ?>" class="form-control" required>

                                        </div>
                                        <div class="form-group">
                                            <label>Jurusan</label>
                                            <input type="text" name="jurusan" value="<?php echo $b['jurusan'] ?>" class="form-control" required>

                                        </div>
                                        <div class="form-group">
                                            <label>Nomor Telepon Siswa</label>
                                            <input type="text" name="no_siswa" value="<?php echo $b['no_siswa'] ?>" class="form-control" required>

                                        </div>
                                        <div class="form-group">
                                            <label>Nomor Telepon Orangtua</label>
                                            <input type="text" name="no_ortu" value="<?php echo $b['no_ortu'] ?>" class="form-control" required>

                                        </div>
                                        <div class="form-group">
                                            <label>Tau SMK Taruna Karya Dari Mana ?</label>
                                            <input type="text" name="tau_smk" value="<?php echo $b['tau_smk'] ?>" class="form-control" required>

                                        </div>
                                    </div>

                                </div>

                            </div> <?php } ?>
                        <!-- /.box-body -->
                        <div class="box-footer">
                            <button type="button" class="btn btn-danger btn-outline">
                                <a href="pendaftaran.php"> <i class="ti-arrow-alt"></i> Batal
                                </a></button>
                            &nbsp;&nbsp;
                            <button type="submit" class="btn btn-primary btn-outline">
                                <i class="ti-save-alt"></i> Simpan
                            </button>
                        </div>
                        </form>
                </div>
                <!-- /.box -->
            </div>




        </div>

    </section>
    <!-- /.content -->
</div>
<?php


include "pondasi/kaki.php";


?>