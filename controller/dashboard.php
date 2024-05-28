<?php

require_once("../config/Base.php");
require_once("../config/Auth.php");
require_once("../config/Alert.php");

$kuliner = "SELECT * FROM kuliner JOIN jenis_kuliner ON kuliner.id_jenis_kuliner=jenis_kuliner.id_jenis_kuliner ORDER BY kuliner.id_kuliner DESC";
$count_kuliner = mysqli_query($conn, $kuliner);
$tempat_wisata = "SELECT * FROM tempat_wisata ORDER BY id_tempat_wisata DESC";
$count_tempat_wisata = mysqli_query($conn, $tempat_wisata);
$video = "SELECT * FROM video ORDER BY id_video DESC";
$count_video = mysqli_query($conn, $video);
$kontak = "SELECT * FROM kontak ORDER BY id_kontak DESC";
$count_kontak = mysqli_query($conn, $kontak);
