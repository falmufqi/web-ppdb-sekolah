<?php
include('admin/config/koneksi.php');
$data_pendaftar   = mysqli_query($conn, "SELECT * FROM ppdb");
$nomor = 1;
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.datatables.net/1.11.3/css/jquery.dataTables.min.css">
</head>

<body>
    <section id="content" class="single-wrapper">

        <div class="our-features grey-background">
            <div class="container">
                <div class="heading-block wow fadeIn">
                    <h2>Pendaftar</h2>
                    <h4 class="tagline">Berikut adalah data pendaftar</h4>
                </div>

                <table id="tabel-data">
                    <thead>
                        <tr>
                            <th><b>No</b></th>
                            <th><b>Nama Siswa</b></th>
                            <th><b>Jenis Kelamin</b></th>
                            <th><b>Agama</b></th>
                            <th><b>Jurusan</b></th>
                            <th><b>Tanggal Lahir</b></th>
                            <th class="no-print"><b>Action</b></th>
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
                                <td><?php echo $data['agama']; ?></td>
                                <td><?php echo $data['jurusan']; ?></td>
                                <td><?php echo $data['tgl_lahir']; ?></td>
                                <td class="no-print">
                                    <a href="update_reguler.php?nisn=<?php echo $data['id'] ?>" class="btn btn-success no-print">Update</a>
                                    <a href="delete_reguler.php?nisn=<?php echo $data['id'] ?>" class="btn btn-danger no-print">Delete</a>
                                </td>
                            </tr>

                        <?php
                        }
                        ?>
                    </tbody>
                </table>
            </div>
            <!-- ===================== 
            START SCIRPT-->
            <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" class="no-print"></script>
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" class="no-print"></script>
            <script src="https://code.jquery.com/jquery-1.11.0.min.js" class="no-print"></script>
            <script src="http://cdn.datatables.net/1.11.3/js/jquery.dataTables.min.js" class="no-print"></script>
            <script src=""></script>
            <script>
                $(document).ready(function() {
                    $('#tabel-data').DataTable();
                });
            </script>
</body>

</html>