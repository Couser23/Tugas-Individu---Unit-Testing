-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 29, 2026 at 07:39 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wisata-nganjuk`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `email`, `password`) VALUES
(1, 'admin@gmail.com', '202cb962ac59075b964b07152d234b70');

-- --------------------------------------------------------

--
-- Table structure for table `alumni`
--

CREATE TABLE `alumni` (
  `id` int NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `no_hp` varchar(20) DEFAULT NULL,
  `linkedin` varchar(150) DEFAULT NULL,
  `instagram` varchar(150) DEFAULT NULL,
  `facebook` varchar(150) DEFAULT NULL,
  `tiktok` varchar(150) DEFAULT NULL,
  `tempat_kerja` varchar(150) DEFAULT NULL,
  `alamat_kerja` text,
  `posisi` varchar(100) DEFAULT NULL,
  `status` enum('PNS','Swasta','Wirausaha') DEFAULT NULL,
  `sosmed_perusahaan` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE `event` (
  `id` int NOT NULL,
  `judul` varchar(255) DEFAULT NULL,
  `deskripsi` text,
  `tanggal` date DEFAULT NULL,
  `lokasi` varchar(255) DEFAULT NULL,
  `gambar` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`id`, `judul`, `deskripsi`, `tanggal`, `lokasi`, `gambar`) VALUES
(1, 'Symphony Budaya Religi & Ngaji Bareng Gus Iqdam', 'Pemerintah Kabupaten Nganjuk mematangkan persiapan kegiatan Symphony Budaya Religi bersama Gus Iqdam.\r\n\r\nAgenda ini akan digelar pada hari Rabu, 22 April 2026 jam 18.00 WIB di halaman GOR Bung Karno Nganjuk.\r\nAgenda ini merupakan bagian dari peringatan hari jadi ke-1089 Kabupaten Nganjuk dengan mengusung tema “Harmoni Bumi Anjuk Ladang, Melesat, dan Sejahtera”.', '2026-04-22', 'Halaman GOR Bung Karno. Menampilkan musik religi dan Gus Iqdam.', '1777436619_FotoJet-53-1137886000.webp'),
(2, 'NGAJI BARENG GUS KAUTSAR ', 'Dalam rangka memeriahkan Hari Jadi Nganjuk ke-1089, mari bersama-sama kita hadir dalam majelis ilmu dan shalawat bersama Gus Kautsar.\r\nMari kita raih keberkahan, mempererat tali silaturahmi, dan berdoa demi terwujudnya Harmoni Bumi Anjuk Ladang yang Melesat dan Sejahtera.', '2026-04-28', 'Masjid Nurul Huda, Tanjunganom – Nganjuk', '1777440126_hq720 (1).jpg'),
(3, 'Festival Pu Tajum Mengawal Sejarah Berdirinya Bumi Anjuk Ladang', 'Sebuah festival budaya untuk mengenang sejarah, melestarikan tradisi, serta mengangkat potensi seni dan UMKM lokal.', '2026-04-23', 'Halaman Kantor Kecamatan Ngetos', '1777440246_e333f2452736a89aad0df3b058af8b11.jpg'),
(4, 'TASYAKURAN MASSAL 1088 TUMPENG Dalam rangka memperingati Hari Jadi Nganjuk ke-1088,', ' yuk ramaikan dan meriahkan momen penuh syukur ini bersama-sama!', '2026-04-27', 'Sepanjang Jl. A. Yani Utara – sekitaran Alun-alun Nganjuk', '1777440427_J1JKoXW4b2dAePfwdth0NQWTL5kIW4fRlD7iGw9D.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `favorit`
--

CREATE TABLE `favorit` (
  `id` int NOT NULL,
  `user_id` int DEFAULT NULL,
  `wisata_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kuliner`
--

CREATE TABLE `kuliner` (
  `id` int NOT NULL,
  `nama_kuliner` varchar(100) DEFAULT NULL,
  `lokasi` varchar(255) DEFAULT NULL,
  `gambar` varchar(255) DEFAULT NULL,
  `deskripsi` text,
  `jam_buka` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `kuliner`
--

INSERT INTO `kuliner` (`id`, `nama_kuliner`, `lokasi`, `gambar`, `deskripsi`, `jam_buka`) VALUES
(3, 'Nasi Becek dan Sate Kambing Khas Nganjuk', 'Jl. DR. Soetomo No.5, Bogo Kidul, Bogo, Kec. Nganjuk, Kabupaten Nganjuk', '1777437662_47558f6d-bb7f-4575-8eb1-0888949ce951-3433108699.jpeg', 'Nasi becek adalah salah satu kuliner khas Nganjuk. Nasi becek terdiri dari nasi putih yang disiram kuah gule kambing dan diberi setusuk kambing. Tak lupa ditambahkan irisan kubis biar makin nikmat. Salah satu penjual kuliner khas yang legend yaitu warung Nasi Becek dan Sate Kambing Khas Nganjuk yang sudah berjualan sejak tahun 1950. Warung ini jadi langganan semua wisatawan dan bahkan tokoh nasional saat mampir ke Nganjuk.', ' Senin-Minggu 09.00-21.00 WIB'),
(4, 'Tumpang Pecel Barokah', 'Jl. Kertosono - Lengkong No.27, Banaran, Kec. Kertosono, Kabupaten Nganjuk', '1777439355_05193149-76d0-4d82-839f-ffda3c4a58a0_Go-Biz_20230626_124614.jpeg', 'Kalau sudah di Nganjuk gak boleh skip sama kuliner satu ini. Pecel emang enak disantap pakai apa saja, tapi kalau sudah ditambahkan sambal tumpang, kenikmatan itu jadi mutlak. Nah kalau ke Nganjuk, salah satu tempat makan pecel yang terkenal dengan sambal tumpangnya adalah warung Barokah. Tempatnya luas dan pilihan lauknya melimpah. Mulai tempe, telor sampai sate-satean ada.', 'Senin-Minggu 17.00-01.00 WIB'),
(5, 'Soto Pak Yon', 'Jalan Ahmad Yani, Nganjuk', '1777439446_Pakyon-3447316750.webp', 'Salah satu kuliner legend di Nganjuk yaitu Soto Pak Yon yang sudah ada sejak tahun 1985. Soto Pak Yon terkenal karena memadukan cita rasa soto dan kare. Kuahnya kuning kental bersantan hampir mirip kare. Perpaduan antara soto dan kare ini yang mungkin tidak akan bisa kamu temukan di tempat lain. Ada beberapa varian menu di sini yaitu soto ayam, soto daging dan nasi pecel. Kalau pesan soto, kamu bisa tambah lauk ceker, sayap atau kepala ayam. Kalau masih kurang tersedia telor puyuh, usus dan ampela ayam yang bisa kamu tambahkan ke mangkok.', 'Senin-Minggu 08.30 WIB-habis'),
(6, ' Kerupuk Pecel Bu Penik', 'Jl. Merapi, RT.01/RW.01, Besuk, Sukorejo, Kec. Loceret, Kabupaten Nganjuk', '1777439547_55602a130423bddb5b8b4567.jpeg', 'Cuma di Nganjuk, ada olahan kuliner unik yaitu krupuk yang disajikan bersama pecel sebagai pengganti nasi atau lontong. Krucel, kependekan dari kerupuk pecel, disajikan bersama tambahan sayur-sayuran dan gorengan. Tak lupa ditambah siraman bumbu pecel di atasnya. Jangan lupa pesan es rujak buat hidangan penutup setelah makan kerupuk pecel. Harganya murah meriah cuma Rp6.000 aja per porsi. Kalau tambah gorengan, harganya mulai Rp1.000', 'Senin-Minggu 08.30-14.30 WIB'),
(7, ' Nasi Banting Warung Dipo', 'Jl. Ahmad Yani No.123, Payaman, Kec. Nganjuk, Kabupaten Nganjuk', '1777439673_hq720.jpg', 'Kalau pingin makan yang ringan buat sarapan, kamu bisa cobain nasi banting khas Nganjuk. Sejatinya nasi banting adalah nasi bungkus yang di dalamnya berisi aneka lauk. Umumnya sebungkus nasi banting berisi nasi, mie goreng dan olahan tempe. Tak lupa sebagai teman makan ada aneka gorengan yang siap menemani. Kalau di Nganjuk kamu bisa beli nasi banting di Warung Dipo yang legendary.', 'Senin-Minggu 04.00-15.00 WIB'),
(8, 'Warung Mie Pak Tomie', 'Jl. Jenderal Gatot Subroto No.7, Kauman, Kec. Nganjuk, Kabupaten Nganjuk', '1777439751_59ebcede0fc33-warung-mie-pak-tomie_1265_711.webp', 'Konon katanya warung mie Pak Tomie ini udah ada sejak tahun 1980. Penyajian makanan di sini masih tradisional menggunakan arang yang menambah cita rasa masakan. Soal menu, di sini kamu bisa pilih mie goreng, mie godok, mie nyemek dan nasi mawut serta nasi goreng. Biar makin nikmat, makanan yang kamu pesan bakal ditambahkan taburan bawang goreng dan acar. Auto kangen kampung halaman.', 'Senin-Minggu 10.00-01.00 WIB.');

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `id` int NOT NULL,
  `user_id` int DEFAULT NULL,
  `wisata_id` int DEFAULT NULL,
  `rating` int DEFAULT NULL,
  `komentar` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `nama`, `email`, `password`) VALUES
(1, 'Rizky', 'user@gmail.com', '202cb962ac59075b964b07152d234b70'),
(2, 'jawa', 'jawa@gmail.com', '$2y$10$xznIz3ZMfXTthqWZLktrAOBb9.uyW4ZGU.sp6hVYIN/qNph1QFn9W');

-- --------------------------------------------------------

--
-- Table structure for table `wisata`
--

CREATE TABLE `wisata` (
  `id` int NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `deskripsi` text,
  `lokasi` varchar(100) DEFAULT NULL,
  `kategori` varchar(50) DEFAULT NULL,
  `gambar` varchar(100) DEFAULT NULL,
  `latitude` varchar(50) DEFAULT NULL,
  `longitude` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `wisata`
--

INSERT INTO `wisata` (`id`, `nama`, `deskripsi`, `lokasi`, `kategori`, `gambar`, `latitude`, `longitude`) VALUES
(5, 'Wisata Nganjuk Jolotundo Glamping & Edu Park', 'cocok untuk nongkrong dan berbincang bincang dengan keluarga', 'Jalan Raya Bajulan Loceret, Plakat, Bajulan, Kec. Loceret, Kabupaten Nganjuk, Jawa Timur 64471', 'alam', '1777353582_Jolotundo.jpeg', '-7.5930', '111.8492'),
(6, 'Air Terjun Roro Kuning', 'Air Terjun Roro Kuning-Indonesia adalah air terjun yang berada sekitar 27–30 km selatan Kota Nganjuk, di ketinggian 600 m dpl dan memiliki tinggi antara 10–15 m. Air terjun ini mengalir dari tiga sumber di sekitar Gunung Wilis yang mengalir merambat di sela-sela bebatuan padas di bawah pepohonan hutan pinus. Kemudian menjadi air terjun yang membentuk trisula. Dan karena proses mengalirnya itulah maka masyarakat Desa Bajulan menamakan air terjun merambat.', 'Unnamed Rd, Nglarangan, Bajulan, Kec. Loceret, Kabupaten Nganjuk, Jawa Timur 64471', 'alam', 'image-22-1024x681.png', '7.779646', '111.843955'),
(7, 'Air Terjun Sedudo', 'Obyek wisata air terjun di Nganjuk yang satu ini adalah salah satu air terjun yang fantastis di Indonesia. Ketinggiannya mencapai 105 Meter, berada di ketinggian dataran sekitar 1.438 Mdpl jadi udaranya dingin khas pegunungan ya gaes.\r\n\r\nLokasinya berada di Desa Ngliman yang ada di Kec Sawahan Kota Nganjuk Jawa Timur. Di tempat wisata alamdi Nganjuk ini anda akan mendapatkan pesona keindahan alam yang menakjubkan. Anda bisa sampai ke obyek wisata ini dengan mudah karena akses jalan. Dan transportasi yang baik juga sudah bisa anda nikmati untuk bisa sampai ke obyek wisata murah di Nganjuk ini. Air terjun ini juga di keramatkan oleh penduduk sekitar karena konon ada energi supranatural dari air terjun ini. Jadi tetap menjaga kesopanan ya gaes.', 'Jl. Sedudo, Hutan, Sawahan, Kec. Sawahan, Kabupaten Nganjuk, Jawa Timur 64475', 'alam', 'sepasangcarrier 1.jpg', '-7.781032', '111.757512'),
(8, 'Air Terjun Singokromo', 'Obyek wisata air terjun yang satu ini memang sangat indah. Ketinggian air terjun ini hanya 20 meter.\r\n\r\nTetapi pemandangan yang menawan bisa anda nikmati di tempat rekreasi di Nganjuk ini. Jadi sayang sekali jika liburan anda di kota Nganjuk tanpa mengunjungi obyek wisata yang satu ini.\r\n\r\nLokasi air terjun Singokromo ini berada di Desa Ngliman. Desa yang satu ini terletak di Kecamatan Sawahan, Kab Nganjuk Jawa Timur.\r\n\r\nObyek wisata di Nganjuk yang murah ini masih alami. Sehingga akses jalannya belum baik dan sedikit menyulitkan perjalanan anda menuju air terjun Singokromo ini.\r\nJarak lokasi air terjun ini dari Kota Nganjuk hanya berjarak sekitar 3 Km saja, jadi lumayan dekat gaes. Lokasinya pun berdekatan dengan lokasi air terjun Sedudo yang terkenal itu, jadi anda harus menyambanginya ya', 'Hutan, Ngliman, Kec. Sawahan, Kabupaten Nganjuk, Jawa Timur 64475', 'alam', 'images.jpeg', '-7.777658', '111.766675'),
(9, 'Goa Margo Tresno', 'Lokasi Goa ini ada di Desa Sugih Waras, Kecamatan Ngluyu, Kabupaten Nganjuk, tepatnya di Dusun Cabean. Goa dengan suasana mistis dan magis bisa anda jumpai di goa Margo ini. Di dalam goa ini belum ada fasilitas penerangan sehingga suasananya masih gelap dan di huni ribuan hewan malam yaitu kelelawar. Lokasi wisata goa di Nganjuk ini ada didalam hutan jati yang berada di kawasan Pegunungan Kendeng. Di kawasan goa ini anda juga bisa mandi di kolam yang ada di depan Goa. Menikmati airnya yang segar dan bersih pastinya akan mengobati lelahnya perjalanan anda menuju goa Margo ini. Jadi sangat menarik untuk anda kunjungi bukan?', 'HW3P+H5V, Hutan, Ngluyu, Kec. Ngluyu, Kabupaten Nganjuk, Jawa Timur 64452', 'alam', 'Margo_Tresno_Cave_9.jpg', '-7.445850', '111.935468'),
(10, 'Taman Anjuk Ladang', 'Tempat wisata keluarga di Nganjuk ini ada di dekat Stadion Anjuk Ladang Nganjuk. Dari pusat kota berjarak sekitar 2 km ke selatan. jadi sangat dekat bukan? Di tempat piknik di nganjuk ini anda bisa jogging karena ada jogging track. Serta ada camping area yang bisa di gunakan untuk berkemah. Ada beberapa hewan koleksi di taman ini yang bisa anda lihat seperti burung, rusa, kera dan yang lainnya. Sangat cocok untuk destinasi liburan anda dan keluarga.', 'Jl. Anjuk Ladang Lapak No.12, Ploso, Kec. Nganjuk, Kabupaten Nganjuk, Jawa Timur', 'buatan', '2671722200.webp', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `alumni`
--
ALTER TABLE `alumni`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `favorit`
--
ALTER TABLE `favorit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kuliner`
--
ALTER TABLE `kuliner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wisata`
--
ALTER TABLE `wisata`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `alumni`
--
ALTER TABLE `alumni`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `event`
--
ALTER TABLE `event`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `favorit`
--
ALTER TABLE `favorit`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kuliner`
--
ALTER TABLE `kuliner`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `review`
--
ALTER TABLE `review`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wisata`
--
ALTER TABLE `wisata`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
