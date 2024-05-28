-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 28 Bulan Mei 2024 pada 00.31
-- Versi server: 8.3.0
-- Versi PHP: 7.4.30

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
  `image` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `bg` varchar(35) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `auth`
--

INSERT INTO `auth` (`id`, `image`, `bg`) VALUES
(1, 'auth.jpg', '#4e73de');

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
(2, 2, 1, '481614208.jpg', '2024-05-28 03:15:59', '2024-05-28 03:15:59'),
(3, 1, 2, '556180812.jpg', '2024-05-28 03:17:57', '2024-05-28 03:17:57');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jenis_kuliner`
--

CREATE TABLE `jenis_kuliner` (
  `id_jenis_kuliner` int NOT NULL,
  `jenis_kuliner` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
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
  `username` varchar(75) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `email` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `phone` char(12) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `pesan` text COLLATE utf8mb4_general_ci,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `kontak`
--

INSERT INTO `kontak` (`id_kontak`, `username`, `email`, `phone`, `pesan`, `created_at`, `updated_at`) VALUES
(1, 'tes', 'tes@gmail.com', '08138', 'tes', '2024-05-28 07:16:46', '2024-05-28 07:16:46'),
(2, 'tes', 'tes@gmail.com', '08138', 'tes', '2024-05-28 07:18:13', '2024-05-28 07:18:13');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kuliner`
--

CREATE TABLE `kuliner` (
  `id_kuliner` int NOT NULL,
  `image_kuliner` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `nama_kuliner` varchar(75) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `id_jenis_kuliner` int DEFAULT NULL,
  `deskripsi` text COLLATE utf8mb4_general_ci,
  `author` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `pembaca` int DEFAULT '0',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `kuliner`
--

INSERT INTO `kuliner` (`id_kuliner`, `image_kuliner`, `nama_kuliner`, `id_jenis_kuliner`, `deskripsi`, `author`, `pembaca`, `created_at`, `updated_at`) VALUES
(2, '623374299.png', 'tes', 1, '<p><strong>Lorem ipsum</strong> dolor sit amet consectetur, adipisicing elit. Maxime ullam cupiditate veniam beatae officiis minima dolores, unde perspiciatis, ipsam repudiandae hic molestias ipsum exercitationem eius optio perferendis ad quis eligendi debitis sint. Voluptates illum placeat tempora laborum, quo non ducimus dicta maiores soluta consectetur nulla, temporibus eum doloribus optio quia accusamus quas est esse minima voluptatibus illo ea.</p>\r\n\r\n<p>Eum, quo officia repudiandae ex temporibus quas obcaecati quis at quam, dolorum omnis, sapiente reprehenderit laborum atque ab? Amet facilis quos recusandae explicabo similique ipsa accusantium accusamus reprehenderit laudantium nam eum cupiditate, dolore debitis minus voluptate quae unde, officia, error consectetur est voluptates! Vel, ut.</p>\r\n\r\n<p>Earum in, a quaerat saepe, cupiditate sapiente quis facilis incidunt quia, molestias nulla dolor at dicta eveniet distinctio soluta? Fugiat laborum iure vitae eum ullam nostrum perspiciatis beatae quo. Repudiandae praesentium, sunt magni dignissimos quo maiores amet numquam obcaecati commodi dolor, laborum quisquam consectetur maxime aspernatur. Ipsum eius obcaecati sit, laudantium ipsa ea reiciendis sed nulla tempore numquam aspernatur, dignissimos ex repudiandae facilis eligendi at cupiditate aliquam alias qui nostrum perferendis!</p>\r\n\r\n<p>Quidem quos, odit natus architecto culpa eius laborum asperiores in debitis quisquam temporibus molestias quaerat autem. Sunt, harum voluptatum! Tempore culpa voluptate ratione reiciendis distinctio commodi dolorum reprehenderit fugit officia? Quo est, commodi maxime molestiae, adipisci blanditiis fugit mollitia enim nemo minus id autem maiores? Sed pariatur nisi minus excepturi blanditiis, quia animi illo consequatur tenetur omnis vero optio voluptatem? Distinctio iure facilis assumenda omnis eligendi.</p>\r\n\r\n<p>Debitis, impedit deserunt! Beatae similique quasi sit harum sunt maxime. Repellendus molestiae consectetur odit repellat assumenda tempora nobis voluptas laboriosam, sed dolorem sapiente totam natus voluptates beatae repudiandae commodi maiores facilis nam autem! Temporibus, aspernatur possimus. Consequatur earum voluptatibus illum maiores dolore assumenda quis minima, sequi aliquam voluptate magnam quam reiciendis iste pariatur quos accusamus consectetur eius unde qui placeat incidunt labore eum ipsa animi.</p>\r\n\r\n<p>Quasi labore, optio aut molestias quos voluptatum eum doloribus minus odio modi eius corporis. Modi commodi aliquam pariatur iusto possimus aut nobis recusandae voluptatibus, quia obcaecati harum, dignissimos a dolores dolore labore, suscipit eum quo saepe corrupti libero iste? Facere autem eum reiciendis. Corrupti quidem recusandae, delectus velit atque eligendi laudantium commodi. Dignissimos similique provident delectus voluptas iste quae voluptatem autem nobis perspiciatis dicta illo ad, ipsa animi accusantium! Dolores ut deleniti autem facilis dignissimos fugiat ea beatae corporis impedit, libero aliquid tempora omnis qui delectus suscipit, officia dicta id voluptates doloribus minus optio! Cumque expedita alias recusandae vero error soluta nihil, eum est, temporibus molestiae obcaecati aliquam cupiditate nam asperiores atque accusantium unde deserunt voluptates exercitationem veritatis mollitia sint quam.</p>\r\n\r\n<p><strong>Distinctio est</strong> tenetur consectetur quam ipsum vitae voluptas aspernatur iusto? Dolores, similique assumenda? Autem, doloribus. Assumenda perferendis laboriosam tempora harum consequuntur doloremque adipisci dicta, pariatur, delectus deserunt porro non corporis odio, similique sequi esse nam ad quaerat ut reprehenderit? Pariatur illum modi ipsa obcaecati animi labore eveniet inventore cum consequuntur repellendus eligendi illo ad earum suscipit nisi tempore quaerat deleniti, accusamus recusandae! Excepturi numquam est, dolorum vel eius deleniti officia dolore tempora <em>sapiente repellendus</em>!</p>\r\n', 'develoepr', 11, '2024-05-28 02:06:01', '2024-05-28 08:15:35');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tempat_wisata`
--

CREATE TABLE `tempat_wisata` (
  `id_tempat_wisata` int NOT NULL,
  `image_wisata` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `nama_wisata` varchar(75) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `deskripsi` text COLLATE utf8mb4_general_ci,
  `author` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `pembaca` int DEFAULT '0',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tempat_wisata`
--

INSERT INTO `tempat_wisata` (`id_tempat_wisata`, `image_wisata`, `nama_wisata`, `deskripsi`, `author`, `pembaca`, `created_at`, `updated_at`) VALUES
(1, '623374299.png', 'tes', '<p><strong>Lorem ipsum</strong>&nbsp;dolor sit amet consectetur, adipisicing elit. Maxime ullam cupiditate veniam beatae officiis minima dolores, unde perspiciatis, ipsam repudiandae hic molestias ipsum exercitationem eius optio perferendis ad quis eligendi debitis sint. Voluptates illum placeat tempora laborum, quo non ducimus dicta maiores soluta consectetur nulla, temporibus eum doloribus optio quia accusamus quas est esse minima voluptatibus illo ea.</p>\r\n\r\n<p>Eum, quo officia repudiandae ex temporibus quas obcaecati quis at quam, dolorum omnis, sapiente reprehenderit laborum atque ab? Amet facilis quos recusandae explicabo similique ipsa accusantium accusamus reprehenderit laudantium nam eum cupiditate, dolore debitis minus voluptate quae unde, officia, error consectetur est voluptates! Vel, ut.</p>\r\n\r\n<p>Earum in, a quaerat saepe, cupiditate sapiente quis facilis incidunt quia, molestias nulla dolor at dicta eveniet distinctio soluta? Fugiat laborum iure vitae eum ullam nostrum perspiciatis beatae quo. Repudiandae praesentium, sunt magni dignissimos quo maiores amet numquam obcaecati commodi dolor, laborum quisquam consectetur maxime aspernatur. Ipsum eius obcaecati sit, laudantium ipsa ea reiciendis sed nulla tempore numquam aspernatur, dignissimos ex repudiandae facilis eligendi at cupiditate aliquam alias qui nostrum perferendis!</p>\r\n\r\n<p>Quidem quos, odit natus architecto culpa eius laborum asperiores in debitis quisquam temporibus molestias quaerat autem. Sunt, harum voluptatum! Tempore culpa voluptate ratione reiciendis distinctio commodi dolorum reprehenderit fugit officia? Quo est, commodi maxime molestiae, adipisci blanditiis fugit mollitia enim nemo minus id autem maiores? Sed pariatur nisi minus excepturi blanditiis, quia animi illo consequatur tenetur omnis vero optio voluptatem? Distinctio iure facilis assumenda omnis eligendi.</p>\r\n\r\n<p>Debitis, impedit deserunt! Beatae similique quasi sit harum sunt maxime. Repellendus molestiae consectetur odit repellat assumenda tempora nobis voluptas laboriosam, sed dolorem sapiente totam natus voluptates beatae repudiandae commodi maiores facilis nam autem! Temporibus, aspernatur possimus. Consequatur earum voluptatibus illum maiores dolore assumenda quis minima, sequi aliquam voluptate magnam quam reiciendis iste pariatur quos accusamus consectetur eius unde qui placeat incidunt labore eum ipsa animi.</p>\r\n\r\n<p>Quasi labore, optio aut molestias quos voluptatum eum doloribus minus odio modi eius corporis. Modi commodi aliquam pariatur iusto possimus aut nobis recusandae voluptatibus, quia obcaecati harum, dignissimos a dolores dolore labore, suscipit eum quo saepe corrupti libero iste? Facere autem eum reiciendis. Corrupti quidem recusandae, delectus velit atque eligendi laudantium commodi. Dignissimos similique provident delectus voluptas iste quae voluptatem autem nobis perspiciatis dicta illo ad, ipsa animi accusantium! Dolores ut deleniti autem facilis dignissimos fugiat ea beatae corporis impedit, libero aliquid tempora omnis qui delectus suscipit, officia dicta id voluptates doloribus minus optio! Cumque expedita alias recusandae vero error soluta nihil, eum est, temporibus molestiae obcaecati aliquam cupiditate nam asperiores atque accusantium unde deserunt voluptates exercitationem veritatis mollitia sint quam.</p>\r\n\r\n<p><strong>Distinctio est</strong>&nbsp;tenetur consectetur quam ipsum vitae voluptas aspernatur iusto? Dolores, similique assumenda? Autem, doloribus. Assumenda perferendis laboriosam tempora harum consequuntur doloremque adipisci dicta, pariatur, delectus deserunt porro non corporis odio, similique sequi esse nam ad quaerat ut reprehenderit? Pariatur illum modi ipsa obcaecati animi labore eveniet inventore cum consequuntur repellendus eligendi illo ad earum suscipit nisi tempore quaerat deleniti, accusamus recusandae! Excepturi numquam est, dolorum vel eius deleniti officia dolore tempora&nbsp;<em>sapiente repellendus</em>!</p>\r\n', 'develoepr', 8, '2024-05-28 02:52:53', '2024-05-28 08:19:13');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tentang`
--

CREATE TABLE `tentang` (
  `id_tentang` int NOT NULL,
  `deskripsi` text COLLATE utf8mb4_general_ci,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tentang`
--

INSERT INTO `tentang` (`id_tentang`, `deskripsi`, `created_at`, `updated_at`) VALUES
(1, NULL, '2024-05-28 03:19:55', '2024-05-28 03:19:55');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id_user` int NOT NULL,
  `id_role` int DEFAULT NULL,
  `id_active` int DEFAULT '2',
  `en_user` varchar(75) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `token` char(6) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `name` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `image` varchar(100) COLLATE utf8mb4_general_ci DEFAULT 'default.svg',
  `email` varchar(75) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `password` varchar(75) COLLATE utf8mb4_general_ci DEFAULT NULL,
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
  `menu` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL
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
  `role` varchar(35) COLLATE utf8mb4_general_ci DEFAULT NULL
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
  `status` varchar(35) COLLATE utf8mb4_general_ci DEFAULT NULL
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
  `title` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `url` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `icon` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL
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
  `thumbnail` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `link_video` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `nama_video` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `deskripsi` text COLLATE utf8mb4_general_ci,
  `author` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `penonton` int DEFAULT '0',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `video`
--

INSERT INTO `video` (`id_video`, `thumbnail`, `link_video`, `nama_video`, `deskripsi`, `author`, `penonton`, `created_at`, `updated_at`) VALUES
(1, '492517398.jpg', 'https://www.youtube.com/embed/F-9Pf0Hv1fs', 'Ngantuk, TAPI LECLERC MENANG!! - Akhir Kutukan Leclerc di Monako &amp; Red Bull Ambyar Lagi...', '<p>Dukung kami dengan donasi di Saweria: <a href=\"https://www.youtube.com/redirect?event=video_description&amp;redir_token=QUFFLUhqbU5zdzNFWTZ5RHhGRXkzUWxMR1ZjejRLUldud3xBQ3Jtc0trNWpGLTZ4aDdUbGpvUjRiY3UxNG5BbzM4SEw4S2xLamRyUFNxWTdjUXNMekpzaHE5NWxJa2t6SW91TVFfdkw2YmM2NHk3UXFSYmdYYkJWTWk2ZkdBaGFtaXJCVWVwTmJ1cWY1ZHlBWENGbWdpMmN3RQ&amp;q=https%3A%2F%2Fsaweria.co%2FF1SpeedIndonesia&amp;v=F-9Pf0Hv1fs\" target=\"_blank\">https://saweria.co/F1SpeedIndonesia</a> Follow sosial media kami lainnya: Instagram: <a href=\"https://www.youtube.com/redirect?event=video_description&amp;redir_token=QUFFLUhqa2QzTF92ZmxUUjBWRllJZGIxTWE0M0I3SnVrQXxBQ3Jtc0tsT1Z4RGNvMjR3NXIzSV9rV3FVME5kZlhfdkpKalJCUnhtN21lTF9HX3NqTjhVZUVJTnZqbVJkQllOMFAzTjZhMjd3eVJlWjNRR1lNTXBBMU5fU3VlcS1FWWJRVDNOSFdqYlR5emxNTndVMVJIVUtDOA&amp;q=https%3A%2F%2Fwww.instagram.com%2Ff1_speed.indonesia%2F&amp;v=F-9Pf0Hv1fs\" target=\"_blank\">&nbsp;<img alt=\"\" src=\"https://www.gstatic.com/youtube/img/watch/social_media/instagram_1x.png\" />&nbsp;/&nbsp;f1_speed.indonesia&nbsp;&nbsp;</a> Twitter: <a href=\"https://www.youtube.com/redirect?event=video_description&amp;redir_token=QUFFLUhqbS01ZzNPaWFRcmlXQWl5TVVyZTJWRW5kV0VLZ3xBQ3Jtc0tsOURBcDViMHBmZllXS2JPZXpOaXdSeVJtdS1qYjltVXltN2phN05HZFpFRjU5S2JFRDRWdTA3V1RaeUZEYkhTTlZteEcwbFJKSEtOWTZmYVFPTGRydm5ibkhiZ1B3N1ZSOGpZWjJUbmxMWWxveEdVVQ&amp;q=https%3A%2F%2Ftwitter.com%2Ff1speed_indo&amp;v=F-9Pf0Hv1fs\" target=\"_blank\">&nbsp;<img alt=\"\" src=\"https://www.gstatic.com/youtube/img/watch/social_media/twitter_1x_v2.png\" />&nbsp;/&nbsp;f1speed_indo&nbsp;&nbsp;</a></p>\r\n', 'develoepr', NULL, '2024-05-28 02:26:10', '2024-05-28 02:32:52'),
(2, '3282029717.jpg', 'https://www.youtube.com/embed/j9QmMEWmcfo', 'SSL, TLS, HTTPS Explained', '<p>To get better at system design, subscribe to our weekly newsletter: <a href=\"https://www.youtube.com/redirect?event=video_description&amp;redir_token=QUFFLUhqa3hHV0xWdS1sOFlUZTJ3TVBrR21saGtOdEJDZ3xBQ3Jtc0trUzlFaHRTMGRBMGpSRmRKdVlGM2VXMklWd3F3M0RIa25MMDk4OUFuM0FCMkNaN2h5UXJlYmgyQWNLNmNuU0NmbjRsY196c0NVYmY0MjVkQU5aZzZuenlZaUg1dUdzamFXRWNWX3Z1X1paWDJvTXNGYw&amp;q=https%3A%2F%2Fbit.ly%2F3tfAlYD&amp;v=j9QmMEWmcfo\" target=\"_blank\">https://bit.ly/3tfAlYD</a> Checkout our bestselling System Design Interview books: Volume 1: <a href=\"https://www.youtube.com/redirect?event=video_description&amp;redir_token=QUFFLUhqbm5YUjJ6bXdteVphS0ZrMmdYdjBiaXRhWVJXZ3xBQ3Jtc0tuYU1lc0F1SlI2aDY4Q0gyTEFlUFFmYjlnY2VJZzMtVFBVc1NkRlJFYnZhR0tBd1VDR1BzQ3Nfck16ZHE4anMwSldFTnRib2VScW5kWVhVR3JocEprR1NQcWFYZXhNYi1IZm5Ba01VM1NrSldUV3ZIMA&amp;q=https%3A%2F%2Famzn.to%2F3Ou7gkd&amp;v=j9QmMEWmcfo\" target=\"_blank\">https://amzn.to/3Ou7gkd</a> Volume 2: <a href=\"https://www.youtube.com/redirect?event=video_description&amp;redir_token=QUFFLUhqbC1JSDllUE9LZW9PWWZBaGdfY2REa3FVc2g0QXxBQ3Jtc0tuelNQSVdtOGpOeTdCcEM1RGtlVVFlQTdFLXJsNGhrQVNVUkRGZXQzSHo4MEM4NXAyT3piS3VPUF9yV0VUM3B5Rmx0X21LTlIwcm1NT0Jwb3NUUllqNV9EUk5tOHBBWTlkRTJUVDZJeHo1ZHdzYVJOOA&amp;q=https%3A%2F%2Famzn.to%2F3HqGozy&amp;v=j9QmMEWmcfo\" target=\"_blank\">https://amzn.to/3HqGozy</a> ABOUT US: Covering topics and trends in large-scale system design, from the authors of the best-selling System Design Interview series.</p>\r\n', 'develoepr', 6, '2024-05-28 02:51:24', '2024-05-28 07:53:49');

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
  MODIFY `id_galeri` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `jenis_kuliner`
--
ALTER TABLE `jenis_kuliner`
  MODIFY `id_jenis_kuliner` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `kontak`
--
ALTER TABLE `kontak`
  MODIFY `id_kontak` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `kuliner`
--
ALTER TABLE `kuliner`
  MODIFY `id_kuliner` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `tempat_wisata`
--
ALTER TABLE `tempat_wisata`
  MODIFY `id_tempat_wisata` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
  MODIFY `id_video` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
