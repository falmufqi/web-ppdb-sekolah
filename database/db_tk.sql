-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 08, 2023 at 04:24 AM
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
(1, 'hafiz', 'admin', 'admin', 'admin'),
(2, 'Fabiano Milan Almufqi', 'fabian', 'fabian', 'admin');

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
(1, 'Latihan Upacara Bendera', 'Mengajarkan anak untuk disiplin anak', 'Kepedulian ', '2022-10-24'),
(3, 'Jumsih', 'Dalam rangka membersihkan fasilitas sekolah di hari Jumat', 'Bersih-bersih', '2022-11-25'),
(4, 'Pramuka', 'Siswa melakukan latihan pramuka', 'PBB', '2023-12-21'),
(5, 'Ujian Tengah Semester', 'Ujian Tengah Semester Genap yang dilakukan secara online menggunakan Google Form.', 'Ujian Tengah Semester', '2023-03-06');

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
(2, 'hotel jatra', 'jelang-pemilukada-masyarakat-harapkan-pemimpin-yang-mampu-majukan-kabupaten-tanggamus-01.png'),
(3, 'Seminar', '1412379p.jpg'),
(4, 'adDD', 'ByJAPqZCYAEpJ07.jpg'),
(7, 'Homevisit', 'WhatsApp Image 2023-03-22 at 10.37.45.jpeg'),
(8, 'Homevisit', 'Formal 4x6.jpg');

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
(2, 'Mengelas', 'Foto Urangg.jpeg');

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
(21, 'Endah Sulistyo Ningrum', 'Susun Huruf Komputer', 'Guru', 'endah@gmail.com', 'Formal Ukuran 4x6.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `info`
--

CREATE TABLE `info` (
  `id` int(5) NOT NULL,
  `jadwal` text NOT NULL,
  `syarat` text NOT NULL,
  `tempat` varchar(100) NOT NULL,
  `biaya` varchar(100) NOT NULL,
  `kontak` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `info`
--

INSERT INTO `info` (`id`, `jadwal`, `syarat`, `tempat`, `biaya`, `kontak`) VALUES
(1, 'Pendafataran Mulai 20 November 2022', 'Foto Kopi KK </br>\r\nFoto Kopi Kartu Indonesia Pintar </br>\r\nFoto 4x6 (Background Merah) </br>\r\n', 'Jl. Pangkal Perjuangan Bypass No.76, Kec. Karawang Barat, Kab. Karawang', '300.0000', '<b>0812-9342-9345<b>');

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
(5, 'Endah Sulistyo Ningrum', 'Makasar', '2000-03-25', 'Wanita', 'Islam', 'Jono', 'Kartini', 'Damkar', 'Cibade', '18/12', 'Cibade', 'Makasar Barat', 'Kalimantan', 'SMP Perkebunan', 'Teknik Mesin', '082363451287', '089632143214', 'Instagram');

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
(1, 'Juara Paskibraka', 'Juara Paskibra Se-Kabupaten', '2023-03-08'),
(2, 'Juara Matematika', 'Juara Matematika Se-Indonesia', '2023-03-11'),
(3, 'Juara Volly', 'Juara bermain volly Se-Indonesia', '2023-03-02');

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
(1, 'Meningkatkan Jumlah Siswa hingga 3 Rombel masing-masing jurusan'),
(4, 'Menciptakan suasana kerja yang handal'),
(5, 'Menjadi Siswa Berilmu dan Beriman');

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
(1, 'Fabiano Milan Almufqi', 'Sekolahnya bagus, mendidik anak menjadi lebih siap dan terampil dalam dunia kerja'),
(3, 'Daffa Widoseno Ardras', 'Sangat Berkualitas dan membuat anak menjadi lebih baik'),
(4, 'Aryl Alfath Muhammad Iqbal', 'Sekolah yang sangat bagus dan menarik');

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
(1, 'Mendidik siswa menjadi anak teladan'),
(2, 'Menguasai Dunia'),
(3, 'Menjadi sekolah Go International');

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
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `agenda`
--
ALTER TABLE `agenda`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `galeri`
--
ALTER TABLE `galeri`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `galeri_jurusan`
--
ALTER TABLE `galeri_jurusan`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `guru`
--
ALTER TABLE `guru`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

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
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

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
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

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
