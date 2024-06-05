-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 05 Jun 2024 pada 02.40
-- Versi server: 8.0.30
-- Versi PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wisata_kuliner_khas_bajawa`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth`
--

CREATE TABLE `auth` (
  `id` int NOT NULL,
  `image` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `bg` varchar(35) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `auth`
--

INSERT INTO `auth` (`id`, `image`, `bg`) VALUES
(1, 'auth.jpg', '#514edf');

-- --------------------------------------------------------

--
-- Struktur dari tabel `galeri`
--

CREATE TABLE `galeri` (
  `id_galeri` int NOT NULL,
  `id_tipe_fitur` int NOT NULL,
  `id_fitur` int DEFAULT NULL,
  `image_galeri` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `galeri`
--

INSERT INTO `galeri` (`id_galeri`, `id_tipe_fitur`, `id_fitur`, `image_galeri`, `created_at`, `updated_at`) VALUES
(5, 1, 9, '2553248616.jpg', '2024-05-30 02:11:18', '2024-05-30 02:11:18');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jenis_kuliner`
--

CREATE TABLE `jenis_kuliner` (
  `id_jenis_kuliner` int NOT NULL,
  `jenis_kuliner` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `jenis_kuliner`
--

INSERT INTO `jenis_kuliner` (`id_jenis_kuliner`, `jenis_kuliner`, `created_at`, `updated_at`) VALUES
(1, 'Food', '2024-05-27 16:35:51', '2024-05-27 16:35:51'),
(2, 'Drink', '2024-05-27 16:36:25', '2024-05-27 16:36:25');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kontak`
--

CREATE TABLE `kontak` (
  `id_kontak` int NOT NULL,
  `username` varchar(75) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `phone` char(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `pesan` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `kontak`
--

INSERT INTO `kontak` (`id_kontak`, `username`, `email`, `phone`, `pesan`, `created_at`, `updated_at`) VALUES
(1, 'tes', 'tes@gmail.com', '08138', 'tes', '2024-05-28 07:16:46', '2024-05-28 07:16:46'),
(2, 'tes', 'tes@gmail.com', '08138', 'tes', '2024-05-28 07:18:13', '2024-05-28 07:18:13'),
(3, 'redi', 'tantilobo0@gmail.com', '082374594589', 'hai kamu', '2024-05-30 02:03:00', '2024-05-30 02:03:00'),
(4, 'emi', 'tantilobo0@gmail.com', '082374594589', 'kamu punya', '2024-05-30 02:03:42', '2024-05-30 02:03:42');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kuliner`
--

CREATE TABLE `kuliner` (
  `id_kuliner` int NOT NULL,
  `image_kuliner` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `nama_kuliner` varchar(75) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `id_jenis_kuliner` int DEFAULT NULL,
  `deskripsi` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `author` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `pembaca` int DEFAULT '0',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `kuliner`
--

INSERT INTO `kuliner` (`id_kuliner`, `image_kuliner`, `nama_kuliner`, `id_jenis_kuliner`, `deskripsi`, `author`, `pembaca`, `created_at`, `updated_at`) VALUES
(2, '2452457385.jpg', 'MAKANAN KHAS BAJAWA RA\\\\\\&#039;A RETE', 1, '<p>Masakan ini merupakan jenis masakan daging yang dibumbui bersama parutan kelapa. Bumbu-bumbunya sederhana dan cara memasaknya pun tidak rumit.</p>\r\n', 'develoepr', 20, '2024-05-28 02:06:01', '2024-05-29 20:30:09'),
(3, '778705521.jpg', 'URAP DAUN SINGKONG', 1, '<p><big><em>Urap daun singkong</em>&nbsp;merupakan salah satu masakan yang terbuat dari&nbsp;<em>daun singkong</em>&nbsp;yang direbus lalu dicampur dengan parutan kelapa berbumbu pedas.</big></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2>Bahan-bahan</h2>\r\n\r\n<ol>\r\n	<li>1 ikat&nbsp;<a href=\"https://cookpad.com/id/cari/daun%20singkong\">daun singkong</a></li>\r\n	<li>secukupnya&nbsp;<a href=\"https://cookpad.com/id/cari/Kelapa%20parut\">Kelapa parut</a>&nbsp;(pilih&nbsp;<a href=\"https://cookpad.com/id/cari/kelapa\">kelapa</a>&nbsp;yang muda ya)</li>\r\n	<li>Bumbu halus</li>\r\n	<li>3 buah&nbsp;<a href=\"https://cookpad.com/id/cari/bawang%20merah\">bawang merah</a></li>\r\n	<li>2 siung&nbsp;<a href=\"https://cookpad.com/id/cari/bawang%20putih\">bawang putih</a></li>\r\n	<li>1 buah&nbsp;<a href=\"https://cookpad.com/id/cari/cabe%20merah\">cabe merah</a></li>\r\n	<li>3 buah&nbsp;<a href=\"https://cookpad.com/id/cari/cabe%20rawit\">cabe rawit</a>&nbsp;(sesuai selera)</li>\r\n	<li>1/2 sdt&nbsp;<a href=\"https://cookpad.com/id/cari/terasi\">terasi</a>&nbsp;bakar</li>\r\n	<li>1 cm&nbsp;<a href=\"https://cookpad.com/id/cari/kencur\">kencur</a></li>\r\n	<li>2 lembar&nbsp;daun&nbsp;<a href=\"https://cookpad.com/id/cari/jeruk%20purut\">jeruk purut</a></li>\r\n	<li>secukupnya&nbsp;Garam gula</li>\r\n</ol>\r\n', 'admin', 1, '2024-05-29 13:17:31', '2024-05-29 18:14:38'),
(4, '2035021141.jpg', 'UTA TABHA', 1, '<p>Uta tabha merupakan makan khas orang bajawa yang biasa dicampur dengan sayuran.</p>\r\n\r\n<p>Bahan-bahan:</p>\r\n\r\n<ol>\r\n	<li>Jagung (jagung yang sudah digiling)</li>\r\n	<li>Daun Pepaya</li>\r\n	<li>kacang tanah</li>\r\n	<li>santan kelapa</li>\r\n	<li>kacang merah</li>\r\n	<li>Labu</li>\r\n	<li>Talas</li>\r\n</ol>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', 'admin', 0, '2024-05-29 13:35:57', '2024-05-29 13:36:30'),
(5, '2259816112.jpg', 'NASI JAGUNG', 1, '<p>Sesuai namanya, nasi jagung terbuat dari biji jagung tua yang dipipil dari tongkolnya.</p>\r\n\r\n<p>Nah, biji jagung itu kemudian dikeringkan dan dihancurkan lalu dimasak seperti menanak beras pada umumnya.&nbsp;</p>\r\n\r\n<p>Bahan-bahan:</p>\r\n\r\n<ol>\r\n	<li>Jagung</li>\r\n	<li>beras</li>\r\n</ol>\r\n', 'admin', 0, '2024-05-29 13:47:07', '2024-05-29 13:47:07'),
(6, '885165348.jpg', 'Hui wu\\\\\\&#039;u', 1, '<p>Membuat hui wu&#39;u merupakan salah satu bentuk keterampilan para nenek moyang zaman dulu untuk mengawetkan daging babi menggunakan tepung jagung dan garam yang diawetkan di dalam bambu (tuku).&nbsp;Pembuatan hui wu&#39;u masih dipertahankan dan dilestarikan oleh sejumlah keluarga di Bajawa, Kabupaten Ngada. Hui wu&#39;u sendiri biasanya dicampur dengan daun pepaya untuk menghilangkan rasa pahit.</p>\r\n\r\n<p>Bahan-bahan:</p>\r\n\r\n<ol>\r\n	<li>Daging babi</li>\r\n	<li>Tepung jagung</li>\r\n	<li>Garam</li>\r\n	<li>bambu <em>(tuku)</em></li>\r\n</ol>\r\n', 'admin', 1, '2024-05-29 14:21:50', '2024-05-29 14:23:43'),
(7, '1567247779.jpg', 'PO\\&#039;O', 1, '<p>po&rsquo;o sendiri yaitu beras yang dimasak<br />\r\ndalam dalam batang bambu yang dicampur dengan beberapa bumbu dan<br />\r\nminyak kelapa. Acara pedhe po&rsquo;o ini biasa dilaksanakan 1 tahun sekali pada&nbsp;bulan oktober sesudah panen.</p>\r\n\r\n<p>Bahan-bahan:</p>\r\n\r\n<ol>\r\n	<li>Beras</li>\r\n	<li>Minyak kelapa</li>\r\n	<li>Bawang putih ( 3 siung)</li>\r\n	<li>Bawang merah ( 4 siung)</li>\r\n	<li>Jahe 2 ruas</li>\r\n</ol>\r\n', 'admin', 1, '2024-05-29 14:50:10', '2024-05-29 18:15:36'),
(8, '1797939205.jpg', 'NASI KACANG HITAM', 1, '<p>Nasi kacang hitam merupakan campuran nasi yang dimasak dengan kacang merah.</p>\r\n\r\n<p>Bahan-bahan:</p>\r\n\r\n<ol>\r\n	<li>Beras</li>\r\n	<li>Kacang hitam</li>\r\n</ol>\r\n', 'admin', 4, '2024-05-29 15:00:35', '2024-05-30 01:50:00'),
(9, '2553248616.jpg', 'Tumis Pucuk Daun Labu Siam', 1, '<p>Pucuk Labu Siam dalam bahasa bajawa biasa disebut dengan <em>uta timu</em> selain buahnya dijadikan sayur, daunnya pun kaya akan manfaat bagi kesehatan. Daun labu siam mengandung : vitamin A, vitamin C, kalsium, kaya serat dan rendah kalori.</p>\r\n\r\n<p>Baha-bahan:</p>\r\n\r\n<ol>\r\n	<li>Pucuk labu siam</li>\r\n</ol>\r\n\r\n<p>Bumbu Tumis:</p>\r\n\r\n<ol>\r\n	<li>5 siung bawang merah</li>\r\n	<li>3 siung bawah putih</li>\r\n	<li>3 buah cabe (sesuai selera)</li>\r\n</ol>\r\n', 'admin', 15, '2024-05-29 15:30:30', '2024-05-30 02:16:10');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tempat_wisata`
--

CREATE TABLE `tempat_wisata` (
  `id_tempat_wisata` int NOT NULL,
  `image_wisata` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `nama_wisata` varchar(75) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `deskripsi` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `author` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `pembaca` int DEFAULT '0',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tempat_wisata`
--

INSERT INTO `tempat_wisata` (`id_tempat_wisata`, `image_wisata`, `nama_wisata`, `deskripsi`, `author`, `pembaca`, `created_at`, `updated_at`) VALUES
(1, '3726351952.jpg', 'RUMAH ADAT BENA', '<p>Kampung Adat Bena merupakan salah satu kampung yang masih mempertahankan kebudayaan dan adat dari lelulur yang telah berlangsung puluhan abad silam. Memiliki 45 rumah adat dengan arsitektur yang unik dan indah Kampong Adat Bena hampir setiap harinya dikunjungi wisatawan.</p>\r\n\r\n<p>Kampung Adat Bena merupakan sebuah perkampungan megalitikum di Pulau Flores, tepatnya di Desa Tiwuriwu, Kecamatan Aimere 19 KM arah selatan kota Bajawa. Dengan menggunakan moda transportasi roda empat maupun roda dua wisatawan dapat mengunjungi kampung adat Bena yang berada tepat di bawah kaki gunung Inerie yang menjulang tinggi dan sering bermahkotakan awan indah. Setiap pengunjung yang datang ke kampung Bena akan disambut&nbsp;&nbsp;dengan keramahtamahan khas masyarakat pedesaan yang penuh kehangatan serta rasa persaudaraan yang tinggi. Udara sejuk serta barisan perumahan adat yang alami menjadi pemandangan yang indah dan menggoda pengunjung untuk melangkakan kaki di sepanjang jalan setapak demi melihat kehidupan warga yang sederhana dengan pajangan hasil tenunan yang kaya akan motif dan filosofi gambaran kearifan budaya leluhur.</p>\r\n', 'develoepr', 10, '2024-05-28 02:52:53', '2024-06-02 23:24:00'),
(3, '4183099549.jpg', 'AIR TERJUN OGI', '<p>Air Terjun Ogi Bajawa merupakan salah satu objek wisata alam yang terletak di daerah Bajawa Kabupaten Ngada, Flores Nusa Tenggara Timur, Indonesia. Air terjun Ogi ini terkenal karena keindahan alamnya yang masih alami terjaga dan menakjubkan. Air Terjun Ogi memiliki ketinggian kurang lebih sekitar 35 meter dan dikelilingi oleh hutan tropis yang hijau.</p>\r\n\r\n<p>Untuk mencapai Air Terjun Ogi, para wisatawan perlu melakukan perjalanan sekitar 30 kilometer dari pusat kota Bajawa, atau kalau di tempuh dari kota Labuan Bajo perjalanan kurang lebih sekitar 7 jam. Rute perjalanan biasanya dengan jalur darat dengan kendaraan pribadi atau sewa, karena transportasi umum belum tersedia setiap waktu untuk langsung menuju ke air terjun Ogi ini.</p>\r\n\r\n<p>Ketika tiba di Air Terjun Ogi, para wisatawan pengunjung akan disambut dengan pemandangan yang menakjubkan. Pengunjung dapat menikmati keindahan air terjun yang jatuh dengan deras ke area bawah yang membentuk seperti telaga kolam alami. Serta area sekitar air terjun ini yang masih di kelilingi rerimbunan pepohonan yang menambah kesan asri.</p>\r\n', 'admin', 1, '2024-05-28 23:07:14', '2024-05-28 23:07:52'),
(4, '281277098.jpg', 'BUKIT AVATAR', '<p>Bukit&nbsp;<a href=\"https://flores.tribunnews.com/tag/bukit-avatar-watunariwowo\">Watunariwowo</a>&nbsp;di Bajawa sering disebut bukit avatar. Topografi perbukitan terjalnya mirip perbukitan dalam animasi Avatar The Legende of Aang.</p>\r\n\r\n<p><a href=\"https://flores.tribunnews.com/tag/bukit-avatar-watunariwowo\">Bukit</a>&nbsp;Watunariwowo ini terletak di Desa Beja, Kecamatan Langa, Kabupaten Ngada, Pulau Flores, Nusa Tenggara Timur. Topografinya menantang, bukit ini salah satu tempat wisata alam andalan di Bajawa.</p>\r\n\r\n<p>Bukit avatar<a href=\"https://flores.tribunnews.com/tag/bukit-avatar-watunariwowo\">&nbsp;Bajawa</a>&nbsp;ini sangat terjal hingga ke puncaknya. Vegetasi tumbuhan di puncik bukit ini sebagian besar tanaman savana seperti rumput. Beberapa pohon tumbuh tak jauh dari puncak bukit.</p>\r\n\r\n<p><br />\r\n<br />\r\nArtikel ini telah tayang di&nbsp;<a href=\"https:\">Tribunflores.com</a>&nbsp;dengan judul Wisata Flores, Bukit Watunariwowo &quot;Bukit Avatar&quot; di Bajawa Ngada,&nbsp;<a href=\"https://flores.tribunnews.com/2024/01/24/wisata-flores-bukit-watunariwowo-bukit-avatar-di-bajawa-ngada\">https://flores.tribunnews.com/2024/01/24/wisata-flores-bukit-watunariwowo-bukit-avatar-di-bajawa-ngada</a>.<br />\r\nPenulis: Cristin Adal | Editor: Cristin Adal</p>\r\n', 'admin', 3, '2024-05-28 23:14:03', '2024-06-02 16:52:36'),
(5, '3310097196.jpg', 'PUNCAK WOLOBOBO', '<p>RADAR JOGJA -&nbsp;Bukit Wolobobo terletak di Desa Turekisa, Kecamatan Golewa Barat,&nbsp;<a href=\"https://radarjogja.jawapos.com/tag/kabupaten-ngada\">Kabupaten Ngada</a>,&nbsp;<a href=\"https://radarjogja.jawapos.com/tag/flores\">Flores</a>&nbsp;Nusa Tenggara Timur.</p>\r\n\r\n<p>Karena Bukit ini diselimuti awan,orang-orang menyebutnya dengan julukan&nbsp;<a href=\"https://radarjogja.jawapos.com/tag/negeri-di-atas-awan\">negeri di atas awan</a>.<br />\r\n&nbsp;</p>\r\n\r\n<p>Untuk pergi ke&nbsp;<a href=\"https://radarjogja.jawapos.com/tag/puncak-wolobobo\">Puncak Wolobobo</a>, pengunjung tidak perlu risau pada akses jalan.</p>\r\n\r\n<p>Dari Kota Bajawa, hanya dibutuhkan waktu kurang dari 10 menit saja. Kondisi jalannya pun sangat baik.</p>\r\n', 'admin', 4, '2024-05-28 23:18:12', '2024-06-02 16:52:10');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tentang`
--

CREATE TABLE `tentang` (
  `id_tentang` int NOT NULL,
  `deskripsi` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tentang`
--

INSERT INTO `tentang` (`id_tentang`, `deskripsi`, `created_at`, `updated_at`) VALUES
(1, '<p>Bajawa adalah kecamatan yang juga menjadi ibu kota dari Kabupaten Ngada, Provinsi Nusa Tenggara Timur. Bajawa ini terletak di pulau Flores dengan luas wilayahnya sekitar 137, 36 km2.&nbsp;Karena ketinggiannya Bajawa memiliki iklim yang relatif sejak dan udara yang segar.&nbsp;Daerah ini juga dikenal dengan keindahan pegunungannya.&nbsp;Keanekaragaman budaya disini tercermin dalam tradisi adat, bahasa, dan seni budaya. Kaya akan berbagai kuliner dan teknik pengawetan makanan dan acara adat seperti seperti hui wu&rsquo;u, uta tabha, ra&rsquo;a rete, po&rsquo;o, nasi kacang, ikan lawar, rompe rampe,tumis pucuk labu, nasi jagung dan acara adat reba.&nbsp;</p>\r\n', '2024-05-28 03:19:55', '2024-06-03 03:34:28');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id_user` int NOT NULL,
  `id_role` int DEFAULT NULL,
  `id_active` int DEFAULT '2',
  `en_user` varchar(75) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `token` char(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `image` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT 'default.svg',
  `email` varchar(75) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `password` varchar(75) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id_user`, `id_role`, `id_active`, `en_user`, `token`, `name`, `image`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL, 'developer', 'default.svg', 'developer@gmail.com', '$2y$10$//KMATh3ibPoI3nHFp7x/u7vnAbo2WyUgmI4x0CVVrH8ajFhMvbjG', '2024-05-15 00:41:18', '2024-05-15 00:41:18'),
(2, 2, 2, NULL, NULL, 'admin', 'default.svg', 'admin@gmail.com', '$2y$10$//KMATh3ibPoI3nHFp7x/u7vnAbo2WyUgmI4x0CVVrH8ajFhMvbjG', '2024-05-15 00:41:18', '2024-05-15 00:41:18');

--
-- Trigger `users`
--
DELIMITER $$
CREATE TRIGGER `insert_users` BEFORE INSERT ON `users` FOR EACH ROW BEGIN
    SET NEW.id_role = (
        SELECT id_role
        FROM `user_role`
        ORDER BY id_role DESC
        LIMIT 1
    );
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_access_menu`
--

CREATE TABLE `user_access_menu` (
  `id_access_menu` int NOT NULL,
  `id_role` int DEFAULT NULL,
  `id_menu` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `user_access_menu`
--

INSERT INTO `user_access_menu` (`id_access_menu`, `id_role`, `id_menu`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 1, 4),
(5, 2, 3),
(6, 2, 4);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_access_sub_menu`
--

CREATE TABLE `user_access_sub_menu` (
  `id_access_sub_menu` int NOT NULL,
  `id_role` int DEFAULT NULL,
  `id_sub_menu` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `user_access_sub_menu`
--

INSERT INTO `user_access_sub_menu` (`id_access_sub_menu`, `id_role`, `id_sub_menu`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 1, 4),
(5, 1, 5),
(6, 1, 6),
(7, 1, 10),
(8, 1, 7),
(9, 1, 8),
(10, 1, 9),
(11, 1, 11),
(12, 1, 12),
(13, 1, 13),
(14, 2, 7),
(15, 2, 8),
(16, 2, 9),
(17, 2, 10),
(18, 2, 13),
(19, 2, 11),
(20, 2, 12);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_menu`
--

CREATE TABLE `user_menu` (
  `id_menu` int NOT NULL,
  `menu` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `user_menu`
--

INSERT INTO `user_menu` (`id_menu`, `menu`) VALUES
(1, 'User Management'),
(2, 'Menu Management'),
(3, 'Kuliner &amp; Wisata'),
(4, 'Lainnya');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_role`
--

CREATE TABLE `user_role` (
  `id_role` int NOT NULL,
  `role` varchar(35) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `user_role`
--

INSERT INTO `user_role` (`id_role`, `role`) VALUES
(1, 'Developer'),
(2, 'Administrator'),
(3, 'Owner');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_status`
--

CREATE TABLE `user_status` (
  `id_status` int NOT NULL,
  `status` varchar(35) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `user_status`
--

INSERT INTO `user_status` (`id_status`, `status`) VALUES
(1, 'Active'),
(2, 'No Active');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_sub_menu`
--

CREATE TABLE `user_sub_menu` (
  `id_sub_menu` int NOT NULL,
  `id_menu` int DEFAULT NULL,
  `id_active` int DEFAULT '2',
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `url` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `icon` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `user_sub_menu`
--

INSERT INTO `user_sub_menu` (`id_sub_menu`, `id_menu`, `id_active`, `title`, `url`, `icon`) VALUES
(1, 1, 1, 'Users', 'users', 'fas fa-users'),
(2, 1, 1, 'Role', 'role', 'fas fa-user-cog'),
(3, 2, 1, 'Menu', 'menu', 'fas fa-fw fa-folder'),
(4, 2, 1, 'Sub Menu', 'sub-menu', 'fas fa-fw fa-folder-open'),
(5, 2, 1, 'Menu Access', 'menu-access', 'fas fa-user-lock'),
(6, 2, 1, 'Sub Menu Access', 'sub-menu-access', 'fas fa-user-lock'),
(7, 3, 1, 'List Kuliner', 'list-kuliner', 'fas fa-utensils'),
(8, 3, 1, 'Video', 'video', 'fas fa-video'),
(9, 3, 1, 'Galeri', 'galeri', 'fas fa-images'),
(10, 3, 1, 'Jenis Kuliner', 'jenis-kuliner', 'fas fa-list'),
(11, 4, 1, 'Tentang', 'tentang', 'fas fa-list'),
(12, 4, 1, 'Kontak', 'kontak', 'fas fa-comment-dots'),
(13, 3, 1, 'Tempat Wisata', 'tempat-wisata', 'fas fa-torii-gate');

-- --------------------------------------------------------

--
-- Struktur dari tabel `video`
--

CREATE TABLE `video` (
  `id_video` int NOT NULL,
  `thumbnail` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `link_video` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `nama_video` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `deskripsi` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `author` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `penonton` int DEFAULT '0',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `video`
--

INSERT INTO `video` (`id_video`, `thumbnail`, `link_video`, `nama_video`, `deskripsi`, `author`, `penonton`, `created_at`, `updated_at`) VALUES
(5, '2553248616.jpg', 'https://www.youtube.com/embed/04jp8nQ1Pbk', 'Resep Ra\\\\\\&#039;a Rete Ngana || Makanan Khas Bajawa - Ngada - NTT', '', 'admin', 2, '2024-05-28 22:21:22', '2024-06-02 20:27:00'),
(13, '672289354.jpg', 'https://www.youtube.com/embed/W2w5xvAE23c', 'MENIKMATI INDAHNYA PESONA WISATA ALAM AIR TERJUN OGI - BAJAWA', '', 'admin', 4, '2024-06-02 19:38:10', '2024-06-02 19:40:25'),
(14, '3088673147.jpg', 'https://www.youtube.com/embed/tw-EU_EvAE4', 'Hui Wu\\&#039;u', '', 'admin', 1, '2024-06-02 19:45:59', '2024-06-02 19:46:32'),
(15, '3991695924.jpg', 'https://www.youtube.com/embed/64WxARF6l8o', 'Pesona Bukit Avatar, Langa-Bajawa', '', 'admin', 4, '2024-06-02 19:52:03', '2024-06-04 20:27:41'),
(16, '3206268564.jpg', 'https://www.youtube.com/embed/8TXDXGFrDf8', 'Puncak Bukit Wolobobo', '', 'admin', 1, '2024-06-02 20:34:17', '2024-06-03 01:25:21'),
(17, '993016177.jpeg', 'https://www.youtube.com/embed/pXH0pxdN0Ew', 'PESTA ADAT REBA KAMPUNG BOBOU 10-02-2022, BAJAWA KAB.NGADA NTT', '', 'admin', 1, '2024-06-02 22:07:51', '2024-06-02 22:11:15'),
(18, '1952159524.jpg', 'https://www.youtube.com/embed/X7Oj3P_DVk4&amp;t=400s', 'UTA TABHA - Saksi Sejarah Dunia Pangan Tradisional', '', 'admin', 1, '2024-06-02 22:42:41', '2024-06-03 01:34:46'),
(19, '1797939205.jpg', 'https://www.youtube.com/embed/D7X1V9l5fio', 'MAKANAN KHAS BAJAWA||NASI KACANG HITAM', '', 'admin', 2, '2024-06-03 01:17:53', '2024-06-03 01:22:07'),
(20, '3582948022.jpg', 'https://www.youtube.com/embed/Hn97sOmqt8Y', 'RW DAGING ANJING||KHAS BAJAWA', '', 'admin', 2, '2024-06-03 03:29:55', '2024-06-05 10:27:52');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `auth`
--
ALTER TABLE `auth`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `galeri`
--
ALTER TABLE `galeri`
  ADD PRIMARY KEY (`id_galeri`);

--
-- Indeks untuk tabel `jenis_kuliner`
--
ALTER TABLE `jenis_kuliner`
  ADD PRIMARY KEY (`id_jenis_kuliner`);

--
-- Indeks untuk tabel `kontak`
--
ALTER TABLE `kontak`
  ADD PRIMARY KEY (`id_kontak`);

--
-- Indeks untuk tabel `kuliner`
--
ALTER TABLE `kuliner`
  ADD PRIMARY KEY (`id_kuliner`),
  ADD KEY `id_jenis_kuliner` (`id_jenis_kuliner`);

--
-- Indeks untuk tabel `tempat_wisata`
--
ALTER TABLE `tempat_wisata`
  ADD PRIMARY KEY (`id_tempat_wisata`);

--
-- Indeks untuk tabel `tentang`
--
ALTER TABLE `tentang`
  ADD PRIMARY KEY (`id_tentang`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`),
  ADD KEY `id_role` (`id_role`),
  ADD KEY `id_active` (`id_active`);

--
-- Indeks untuk tabel `user_access_menu`
--
ALTER TABLE `user_access_menu`
  ADD PRIMARY KEY (`id_access_menu`),
  ADD KEY `id_role` (`id_role`),
  ADD KEY `id_menu` (`id_menu`);

--
-- Indeks untuk tabel `user_access_sub_menu`
--
ALTER TABLE `user_access_sub_menu`
  ADD PRIMARY KEY (`id_access_sub_menu`),
  ADD KEY `id_role` (`id_role`),
  ADD KEY `id_sub_menu` (`id_sub_menu`);

--
-- Indeks untuk tabel `user_menu`
--
ALTER TABLE `user_menu`
  ADD PRIMARY KEY (`id_menu`);

--
-- Indeks untuk tabel `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`id_role`);

--
-- Indeks untuk tabel `user_status`
--
ALTER TABLE `user_status`
  ADD PRIMARY KEY (`id_status`);

--
-- Indeks untuk tabel `user_sub_menu`
--
ALTER TABLE `user_sub_menu`
  ADD PRIMARY KEY (`id_sub_menu`),
  ADD KEY `id_menu` (`id_menu`),
  ADD KEY `id_active` (`id_active`);

--
-- Indeks untuk tabel `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`id_video`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `auth`
--
ALTER TABLE `auth`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `galeri`
--
ALTER TABLE `galeri`
  MODIFY `id_galeri` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `jenis_kuliner`
--
ALTER TABLE `jenis_kuliner`
  MODIFY `id_jenis_kuliner` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `kontak`
--
ALTER TABLE `kontak`
  MODIFY `id_kontak` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `kuliner`
--
ALTER TABLE `kuliner`
  MODIFY `id_kuliner` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `tempat_wisata`
--
ALTER TABLE `tempat_wisata`
  MODIFY `id_tempat_wisata` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `tentang`
--
ALTER TABLE `tentang`
  MODIFY `id_tentang` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `user_access_menu`
--
ALTER TABLE `user_access_menu`
  MODIFY `id_access_menu` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `user_access_sub_menu`
--
ALTER TABLE `user_access_sub_menu`
  MODIFY `id_access_sub_menu` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `user_menu`
--
ALTER TABLE `user_menu`
  MODIFY `id_menu` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `user_role`
--
ALTER TABLE `user_role`
  MODIFY `id_role` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `user_status`
--
ALTER TABLE `user_status`
  MODIFY `id_status` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `user_sub_menu`
--
ALTER TABLE `user_sub_menu`
  MODIFY `id_sub_menu` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `video`
--
ALTER TABLE `video`
  MODIFY `id_video` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `kuliner`
--
ALTER TABLE `kuliner`
  ADD CONSTRAINT `kuliner_ibfk_1` FOREIGN KEY (`id_jenis_kuliner`) REFERENCES `jenis_kuliner` (`id_jenis_kuliner`);

--
-- Ketidakleluasaan untuk tabel `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`id_role`) REFERENCES `user_role` (`id_role`),
  ADD CONSTRAINT `users_ibfk_2` FOREIGN KEY (`id_active`) REFERENCES `user_status` (`id_status`);

--
-- Ketidakleluasaan untuk tabel `user_access_menu`
--
ALTER TABLE `user_access_menu`
  ADD CONSTRAINT `user_access_menu_ibfk_1` FOREIGN KEY (`id_role`) REFERENCES `user_role` (`id_role`),
  ADD CONSTRAINT `user_access_menu_ibfk_2` FOREIGN KEY (`id_menu`) REFERENCES `user_menu` (`id_menu`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `user_access_sub_menu`
--
ALTER TABLE `user_access_sub_menu`
  ADD CONSTRAINT `user_access_sub_menu_ibfk_1` FOREIGN KEY (`id_role`) REFERENCES `user_role` (`id_role`),
  ADD CONSTRAINT `user_access_sub_menu_ibfk_2` FOREIGN KEY (`id_sub_menu`) REFERENCES `user_sub_menu` (`id_sub_menu`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `user_sub_menu`
--
ALTER TABLE `user_sub_menu`
  ADD CONSTRAINT `user_sub_menu_ibfk_1` FOREIGN KEY (`id_menu`) REFERENCES `user_menu` (`id_menu`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_sub_menu_ibfk_2` FOREIGN KEY (`id_active`) REFERENCES `user_status` (`id_status`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
