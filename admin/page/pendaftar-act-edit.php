<?php
session_start();
if (!isset($_SESSION['admin'])) {
    header('location:../index.php');
} else {
    $username = $_SESSION['admin'];
}

require_once("../config/koneksi.php");
$query = mysqli_query($conn, "SELECT * FROM admin WHERE username='$username'");
$hasil = mysqli_fetch_array($query);

$que = mysqli_query($conn, "SELECT * FROM ppdb ");
$hasi = mysqli_fetch_array($que);


$id = $_POST['id'];
$a = $_POST['nama_siswa'];
$b = $_POST['tempat'];
$c = $_POST['tgl_lahir'];
$d = $_POST['jenis_kel'];
$e = $_POST['agama'];
$f = $_POST['nm_ayah'];
$g = $_POST['nm_ibu'];
$h = $_POST['job_ayah'];
$i = $_POST['kampung'];
$j = $_POST['rtrw'];
$k = $_POST['desa'];
$l = $_POST['kecamatan'];
$m = $_POST['kabupaten'];
$n = $_POST['asal_sklh'];
$o = $_POST['jurusan'];
$p = $_POST['no_siswa'];
$q = $_POST['no_ortu'];
$r = $_POST['tau_smk'];


$sql = mysqli_query($conn, "UPDATE ppdb SET nama_siswa = '$a', tempat='$b', tgl_lahir='$c', jenis_kel='$d'
, agama='$e', nm_ayah='$f', nm_ibu='$g', job_ayah='$h', kampung='$i', rtrw='$j', desa='$k', kecamatan='$l'
, kabupaten='$m', asal_sklh='$n', jurusan='$o', no_siswa='$p', no_ortu='$q', tau_smk='$r' WHERE id=$id ");
header('location:pendaftaran.php');
