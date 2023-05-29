-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 29, 2023 at 03:59 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_tk`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(5) NOT NULL,
  `nm_user` varchar(40) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `level` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `nm_user`, `username`, `password`, `level`) VALUES
(1, 'Taruna Karya 1', 'admin', 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `agenda`
--

CREATE TABLE `agenda` (
  `id` int(5) NOT NULL,
  `judul` varchar(50) NOT NULL,
  `detail` text NOT NULL,
  `tentang` varchar(50) NOT NULL,
  `tgl` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `agenda`
--

INSERT INTO `agenda` (`id`, `judul`, `detail`, `tentang`, `tgl`) VALUES
(1, 'Jumat Bersih', 'Jumat berish bersih sekolah', 'Jumsih', '2023-05-05'),
(2, 'Pramuka', 'Menjalankan Eskul Pramuka', 'Pramuka', '2023-05-04'),
(3, 'Mapala', 'Mendaki gunung bersama pelatih', 'Naik Gunung', '2023-05-06');

-- --------------------------------------------------------

--
-- Table structure for table `galeri`
--

CREATE TABLE `galeri` (
  `id` int(5) NOT NULL,
  `ket` varchar(30) NOT NULL,
  `foto` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `galeri`
--

INSERT INTO `galeri` (`id`, `ket`, `foto`) VALUES
(15, 'Ulangtahun', 'WhatsApp Image 2023-05-29 at 20.34.52.jpeg'),
(16, 'Ulangtahun', 'WhatsApp Image 2023-05-29 at 20.34.51 (1).jpeg'),
(17, 'Ulangtahun', 'WhatsApp Image 2023-05-29 at 20.34.51 (1).jpeg'),
(18, 'Ulangtahun', 'WhatsApp Image 2023-05-29 at 20.34.52.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `galeri_jurusan`
--

CREATE TABLE `galeri_jurusan` (
  `id` int(100) NOT NULL,
  `ket_jur` varchar(100) NOT NULL,
  `foto_jur` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `galeri_jurusan`
--

INSERT INTO `galeri_jurusan` (`id`, `ket_jur`, `foto_jur`) VALUES
(1, 'Ulangtahun', 'WhatsApp Image 2023-05-29 at 20.34.51.jpeg'),
(2, 'Ulangtahun', 'WhatsApp Image 2023-05-29 at 20.34.51.jpeg'),
(3, 'Ulangtahun', 'WhatsApp Image 2023-05-29 at 20.34.51.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `guru`
--

CREATE TABLE `guru` (
  `id` int(5) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `mapel` varchar(100) NOT NULL,
  `jabatan` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `foto` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `guru`
--

INSERT INTO `guru` (`id`, `nama`, `mapel`, `jabatan`, `email`, `foto`) VALUES
(9, 'Fabiano Milan Almufqi', 'Simulasi Digital', 'Guru', 'Cvhhxxertt466532@gmail.com', 'Formal Ukuran 4x6.jpeg'),
(16, 'Daffa Widoseno Ardras', 'Dasar Desain Grafika', 'Guru', 'daffa@gmail.com', 'Formal Ukuran 4x6.jpeg'),
(17, 'Aryl Alfath Muhammad Iqbal', 'Bahasa Indonesia', 'Guru', 'aryl@gmail.com', 'Formal Ukuran 4x6.jpeg'),
(18, 'Bambang Bastomi Saad', 'Bahasa Inggris', 'Guru', 'bambang@gmail.com', 'Formal Ukuran 4x6.jpeg'),
(19, 'Aditya Nugroho Putra', 'Matematika', 'Guru', 'adit@gmail.com', 'Formal Ukuran 4x6.jpeg'),
(21, 'Endah Sulistyo Ningrum', 'Susun Huruf Komputer', 'Guru', 'endah@gmail.com', 'Formal Ukuran 4x6.jpeg'),
(22, 'Anis Sulistyowati', 'Matematika', 'Guru', 'anis@gmail.com', 'Formal 4x6.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `info`
--

CREATE TABLE `info` (
  `id` int(5) NOT NULL,
  `jadwal` text NOT NULL,
  `syarat` text NOT NULL,
  `tempat` text NOT NULL,
  `biaya` varchar(100) NOT NULL,
  `kontak` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `info`
--

INSERT INTO `info` (`id`, `jadwal`, `syarat`, `tempat`, `biaya`, `kontak`) VALUES
(1, 'Pendaftaran 20 November 2022 (Gelombang 1) </br>\r\nPendaftaran 1 Januari 2023 (Gelombang 2) </br>\r\nPendaftaran 1 Maret 2023 (Gelombang 3) </br>\r\nPendaftaran 1 Mei 2023 (Gelombang 4) </br>', 'Foto Copy KK (Kartu Keluarga)</br>\r\nFoto Copy KIP (Kartu Indonesia Pintar)</br>\r\nFoto 4x6 Background Merah (2 Pcs)</br>\r\nFoto Copy Akta </br>\r\nFoto Copy Transkrip Nilai Legalisir (2 Pcs)</br>\r\nFoto Copy Ijazah Legalisir (2 Pcs)</br>', 'Jl. Pangkal Perjuangan Blok STM TK No.21, RT.3/RW.27, Tanjungpura, Kec. Karawang Barat, Kab. Karawang, 41316', '300.0000', '<b>0857-7502-0604</b>');

-- --------------------------------------------------------

--
-- Table structure for table `moto`
--

CREATE TABLE `moto` (
  `id` int(4) NOT NULL,
  `moto` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `moto`
--

INSERT INTO `moto` (`id`, `moto`) VALUES
(1, 'Terampil dan Siap Bekerja');

-- --------------------------------------------------------

--
-- Table structure for table `ppdb`
--

CREATE TABLE `ppdb` (
  `id` int(255) NOT NULL,
  `nama_siswa` varchar(255) NOT NULL,
  `tempat` varchar(255) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `jenis_kel` enum('Pria','Wanita') NOT NULL,
  `agama` enum('Islam','Kristen','Hindu','Konghuch','Budha') NOT NULL,
  `nm_ayah` varchar(255) NOT NULL,
  `nm_ibu` varchar(255) NOT NULL,
  `job_ayah` varchar(255) NOT NULL,
  `kampung` varchar(255) NOT NULL,
  `rtrw` varchar(255) NOT NULL,
  `desa` varchar(255) NOT NULL,
  `kecamatan` varchar(255) NOT NULL,
  `kabupaten` varchar(255) NOT NULL,
  `asal_sklh` varchar(255) NOT NULL,
  `jurusan` enum('Teknik Mesin','Teknik Pengelasan','Desain Grafis') NOT NULL,
  `no_siswa` varchar(255) NOT NULL,
  `no_ortu` varchar(255) NOT NULL,
  `tau_smk` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ppdb`
--

INSERT INTO `ppdb` (`id`, `nama_siswa`, `tempat`, `tgl_lahir`, `jenis_kel`, `agama`, `nm_ayah`, `nm_ibu`, `job_ayah`, `kampung`, `rtrw`, `desa`, `kecamatan`, `kabupaten`, `asal_sklh`, `jurusan`, `no_siswa`, `no_ortu`, `tau_smk`) VALUES
(1, 'Fabiano Milan Almufqi', 'Karawang', '2001-02-18', 'Pria', 'Islam', 'Bambang Bastomi Saad', 'Sri Meilani', 'Guru', 'Gading Elok', '01/30', 'Karawang Wetan', 'Karawang Timur', 'Karawang', 'SMAIT Harapan Umat', 'Desain Grafis', '085888323761', '081388671983', 'Instagram'),
(3, 'Aryl Alfath Muhammad Iqbal', 'Karawang', '1996-06-17', 'Pria', 'Islam', 'Bambang Bastomi Saad', 'Sri Meilani', 'Guru', 'Gading Elok', '01/30', 'Karawang Wetan', 'Karawang Timur', 'Karawang', 'SMAIT Harapan Umat', 'Teknik Pengelasan', '085888323761', '081388671983', 'Brosusr'),
(4, 'Daffa Widoseno Ardras', 'Karawang', '2001-02-18', 'Pria', 'Islam', 'Bambang', 'Sri', 'Guru', 'Perumnas', '12/10', 'Karawang Barat', 'Karawang Timur', 'Karawang', 'SMP Harum', 'Teknik Mesin', '081294329345', '0812289898239', 'Sosialisasi'),
(5, 'Endah Sulistyo Ningrum', 'Makasar', '2000-03-25', 'Wanita', 'Islam', 'Jono', 'Kartini', 'Damkar', 'Cibade', '18/12', 'Cibade', 'Makasar Barat', 'Kalimantan', 'SMP Perkebunan', 'Teknik Mesin', '082363451287', '089632143214', 'Instagram'),
(6, 'Btari Prabaningrum', 'Jakarta', '2000-09-18', 'Wanita', 'Islam', 'Pa mail', 'Bu mail', 'Tentara', 'Bendungan', '10/03', 'Printer', 'VGA', 'Liquid', 'SMA 69 Jakarta', 'Teknik Pengelasan', '01265478', '021569879', 'Tiktok'),
(9, 'Sri Meilani', 'Jakarta', '2007-05-03', 'Wanita', 'Islam', 'Latief', 'Erni', 'Ketua RW', 'Perum Karawang Indah', '10/13', 'Karawang Kulon', 'Karawang Barat', 'Karawang', 'SMP 1 Karawang', 'Desain Grafis', '081388671983', '081294329345', 'Instagram'),
(10, 'Farel Azizan Gandara', 'Karawang', '2007-02-10', 'Pria', 'Islam', 'Eka', 'Sintia', 'Wiraswasta', 'kcp', '01/01', 'Karawang Kulon', 'Karawang Barat', 'Karawang', 'SMP 1 Karawang', 'Teknik Mesin', '089878486464', '001265987845', 'Brosur'),
(11, 'Arletha Azizah Gandara', 'Karawang', '2009-06-10', 'Wanita', 'Islam', 'Eka', 'Sintia', 'Wiraswasta', 'Bendungan', '10/13', 'Printer', 'Karawang Barat', 'Karawang', 'SMP 1 Karawang', 'Teknik Pengelasan', '09878948789', '0547895412', 'Brosur'),
(12, 'Gebby  Dwi Puteri', 'Karawang', '2000-05-31', 'Wanita', 'Islam', 'Pono', 'Ina', 'Polisi', 'Cikampak', '01/09', 'Cikampek', 'Cikampek', 'Karawang', 'SMA 2 Cikampek', 'Teknik Pengelasan', '087898687841', '087745879863', 'Instagram'),
(13, 'Antonly', 'Jakarta', '2006-08-07', 'Pria', 'Kristen', 'Jono', 'Andini', 'Dokter', 'KCP', '01/09', 'Ramayana', 'Karawang', 'Karawang', 'Techno', 'Teknik Mesin', '98763634511', '087898998546', 'Jono'),
(14, 'Rizky Gusti Ananda', 'Karawang', '1996-03-06', 'Pria', 'Islam', 'Gunasah', 'Susilawati', 'Kantor', 'Guro 3', '17/12', 'Guro 3', 'Karawang Barat', 'Karawang', 'SMP 1 Karawang', 'Teknik Mesin', '087898687898', '081298684578', 'Instagram'),
(15, 'Alnyta Yuniar', 'Bandung', '1998-01-24', 'Wanita', 'Islam', 'Pono', 'Ina', 'Polisi', 'Cikampak', '01/01', 'Ramayana', 'Karawang', 'Karawang', 'SMP 1 Karawang', 'Desain Grafis', '087898684512', '087898451232', 'Brosur'),
(16, 'Alnyta Yuniar', 'Bandung', '1998-01-24', 'Wanita', 'Islam', 'Pono', 'Ina', 'Polisi', 'Cikampak', '01/01', 'Ramayana', 'Karawang', 'Karawang', 'SMP 1 Karawang', 'Desain Grafis', '087898684512', '087898451232', 'Brosur'),
(17, 'China Man', 'Gorontalo', '2000-12-14', 'Pria', 'Budha', 'Pa mail', 'Sintia', 'Ketua RW', 'Bendungan', '10/13', 'Karawang Kulon', 'Cikampek', 'Karawang', 'SMA 2 Cikampek', 'Teknik Pengelasan', '021232124565', '081245651265', 'Tiktok'),
(18, 'Tino', 'Semarang', '2012-12-12', 'Pria', 'Hindu', 'Koni', 'Tini', 'Serabutan', 'Cikupa', '12/01', 'Pratama', 'Dadan', 'Bogor', 'SMP Jono1', 'Teknik Pengelasan', '021536984125', '012345657898', 'Instagram'),
(19, 'Lukman Nulhakim', 'Karawang', '2001-08-27', 'Pria', 'Islam', 'Gamal', 'Rina', 'Buruh Pabrik', 'Kaum 1', '01/01', 'Karawang Kulon', 'Karawang Barat', 'Karawang', 'SMP 1 Karawang', 'Teknik Mesin', '087845123265', '089812457865', 'Instagram'),
(20, 'Nopka Immanadi', 'Karawang', '1991-11-08', 'Pria', 'Islam', 'Eka', 'Bu mail', 'Polisi', 'Cikampak', '01/09', 'Cikampek', 'Cikampek', 'Karawang', 'SMP 1 Karawang', 'Teknik Mesin', '087898684812', '087898681232', 'Tiktok'),
(21, 'Maryam', 'Bandung', '2000-02-14', 'Wanita', 'Islam', 'Eka', 'Sintia', 'Tentara', 'kcp', '01/09', 'Ramayana', 'Cikampek', 'Karawang', 'Techno', 'Teknik Pengelasan', '087898687845', '124565451232', 'Instagram'),
(22, 'Dani', 'Bekasi', '2000-04-04', 'Pria', 'Kristen', 'Pa imron', 'Bu Neni', 'PNS', 'Perum Karawang Indah', '10/03', 'Printer', 'VGA', 'Liquid', 'SMA 2 Cikampek', 'Teknik Mesin', '08787987987', '5778415264', 'Tono'),
(23, 'Tono', 'Padang', '2012-12-12', 'Pria', 'Islam', 'pa jana', 'bu emi', 'kantoran', 'Bendungan', '01/01', 'Printer', 'VGA', 'Liquid', 'SMA 69 Jakarta', 'Teknik Pengelasan', '087898681232', '087845122146', 'Brosur'),
(24, 'Alnyta Yuniar', 'Gorontalo', '2012-12-12', 'Pria', 'Islam', 'Latief', 'Erni', 'Tentara', 'Perum Karawang Indah', '10/03', 'Cikampek', 'Cikampek', 'Liquid', 'SMA 2 Cikampek', 'Teknik Pengelasan', '087898641232', '078532114545', 's');

-- --------------------------------------------------------

--
-- Table structure for table `prestasi`
--

CREATE TABLE `prestasi` (
  `id` int(5) NOT NULL,
  `prestasi` text NOT NULL,
  `detail` varchar(100) NOT NULL,
  `tgl` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prestasi`
--

INSERT INTO `prestasi` (`id`, `prestasi`, `detail`, `tgl`) VALUES
(1, 'Juara Volly', 'Menjadi juara Volly Se-Kabupaten Karawang', '2023-05-01'),
(2, 'Juara Futsal', 'Menjadi Juara Futsal Se-Kabupaten Karawang', '2023-05-02'),
(3, 'Juara Cerdas Cermat', 'Menjadi Juara Cerdas Cermat Se-Provinsi Jawa Barat', '2023-05-03');

-- --------------------------------------------------------

--
-- Table structure for table `profil`
--

CREATE TABLE `profil` (
  `id` int(5) NOT NULL,
  `profil` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `profil`
--

INSERT INTO `profil` (`id`, `profil`) VALUES
(1, 'SMK Taruna Karya 1merupakan SMK Pertama di Kabupaten Karawang yang mendapatkan Akreditasi â€œAâ€ Unggul pada tahun 2019. Kami memiliki perlengkpan dan sarana yang tergolong lengkap untuk tiga program keahlian yaitu :</br>\r\n\r\n1. Teknik Mesin Industri </br>\r\n2. Teknik Grafika </br>\r\n3. Teknik Pengelasan </br>\r\nSMK Swasta yang belokasi di Jl. Pangkal Perjuangan No. 76 By Pass Kabupaten Karawang Provinsi Jawa Barat.</br>\r\n\r\nSekolah ini didirikan pada tahun 1976 oleh Yayasan Pendidikan Taruna Karya Karawang dengan tujuan membantu pemerintah dalam mencerdaskan kehidupan bangsa. SMK Taruna Karya dengan sarana yang memadai telah meluluskan lebih dari 10.000 lulusan yang diserap oleh industri di Jawa Barat, terutama kawansan di Karawang dan Bekasi. Dengan kemampuan penggunaan mesin CNC, Mesin Bubut, Pengelasa, Desain Grafis, Desain Enginering, para lulusan dapat bersaing dalam dunia industri dan dunia usaha.</br>\r\n\r\nSiswa Taruna Karya 1 juga beberapa kali mempersembahkan Trophy kejuaraan dalam bidang PASKIBRA, Bola Voly, Seni Bela diri dan beberapa Ekstrakurikuler lainnya yang cukup membanggakan bahkan di tingkat Nasional.');

-- --------------------------------------------------------

--
-- Table structure for table `proli`
--

CREATE TABLE `proli` (
  `id` int(5) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `detail` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `proli`
--

INSERT INTO `proli` (`id`, `nama`, `detail`) VALUES
(1, 'Teknik Mekanik Industri', 'Teknik Mekanik Industri adalah jurusan yang mengarahkan siswa untuk bekerja di perindustrian'),
(2, 'Teknik Pengelasan', 'Teknik Pengelasan adalah jurusan yang mengarahkan siswa untuk lebih mendalami tentang pengelasan'),
(3, 'Desain Grafis', 'Desain Grafis adalah Jurusan yang mengarahkan anak untuk terbaisa mendesain menggunakan komputer');

-- --------------------------------------------------------

--
-- Table structure for table `strategi`
--

CREATE TABLE `strategi` (
  `id` int(5) NOT NULL,
  `strategi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `strategi`
--

INSERT INTO `strategi` (`id`, `strategi`) VALUES
(1, 'Mendidik anak menjadi teladan yang baik'),
(2, 'Mendidik sesuai perkembangan anak'),
(3, 'Mendidik yang tidak monoton');

-- --------------------------------------------------------

--
-- Table structure for table `testi`
--

CREATE TABLE `testi` (
  `id` int(5) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `testi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `testi`
--

INSERT INTO `testi` (`id`, `nama`, `testi`) VALUES
(1, 'Fabiano Milan Almufqi', 'Sekolahnya bagus dan akan berkembang !'),
(2, 'Neng Hera Nuraeni', 'Sekolah yang berkembang pesat !'),
(3, 'Anis Sulistyowati', 'Pengajarnya yang handal !'),
(4, 'Nopka Immanadi', 'Alat Praktik Yang Lengkap !');

-- --------------------------------------------------------

--
-- Table structure for table `tujuan`
--

CREATE TABLE `tujuan` (
  `id` int(5) NOT NULL,
  `tujuan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tujuan`
--

INSERT INTO `tujuan` (`id`, `tujuan`) VALUES
(1, 'Menjadi sekolah Go International'),
(2, 'Menjadikan Sekolah Terbaik Se-Karawang'),
(3, 'Membuat lulusan yang siap bekerja');

-- --------------------------------------------------------

--
-- Table structure for table `visimisi`
--

CREATE TABLE `visimisi` (
  `id` int(5) NOT NULL,
  `visi` text NOT NULL,
  `misi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `visimisi`
--

INSERT INTO `visimisi` (`id`, `visi`, `misi`) VALUES
(1, 'Menjadi siswa yang memiliki akhlak mulia dan bekerja sepenuh hati.', 'Membuat siswa dan siswa menjadi lebih mandiri dan kuat.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `agenda`
--
ALTER TABLE `agenda`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `galeri`
--
ALTER TABLE `galeri`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `galeri_jurusan`
--
ALTER TABLE `galeri_jurusan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `guru`
--
ALTER TABLE `guru`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `info`
--
ALTER TABLE `info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `moto`
--
ALTER TABLE `moto`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ppdb`
--
ALTER TABLE `ppdb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `prestasi`
--
ALTER TABLE `prestasi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profil`
--
ALTER TABLE `profil`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `proli`
--
ALTER TABLE `proli`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `strategi`
--
ALTER TABLE `strategi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testi`
--
ALTER TABLE `testi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tujuan`
--
ALTER TABLE `tujuan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `visimisi`
--
ALTER TABLE `visimisi`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `agenda`
--
ALTER TABLE `agenda`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `galeri`
--
ALTER TABLE `galeri`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `galeri_jurusan`
--
ALTER TABLE `galeri_jurusan`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `guru`
--
ALTER TABLE `guru`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `info`
--
ALTER TABLE `info`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `moto`
--
ALTER TABLE `moto`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ppdb`
--
ALTER TABLE `ppdb`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `prestasi`
--
ALTER TABLE `prestasi`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `profil`
--
ALTER TABLE `profil`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `proli`
--
ALTER TABLE `proli`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `strategi`
--
ALTER TABLE `strategi`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `testi`
--
ALTER TABLE `testi`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tujuan`
--
ALTER TABLE `tujuan`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `visimisi`
--
ALTER TABLE `visimisi`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
