<?php

require_once("config/Base.php");
require_once("config/Alert.php");

$kuliner = "SELECT * FROM kuliner JOIN jenis_kuliner ON kuliner.id_jenis_kuliner=jenis_kuliner.id_jenis_kuliner ORDER BY kuliner.id_kuliner DESC LIMIT 50";
$view_kuliner = mysqli_query($conn, $kuliner);
$tempat_wisata = "SELECT * FROM tempat_wisata ORDER BY id_tempat_wisata DESC LIMIT 50";
$view_tempat_wisata = mysqli_query($conn, $tempat_wisata);
$video = "SELECT * FROM video ORDER BY id_video DESC LIMIT 50";
$view_video = mysqli_query($conn, $video);
$tentang = "SELECT * FROM tentang";
$views_tentang = mysqli_query($conn, $tentang);
$galeri = "SELECT * FROM galeri ORDER BY id_galeri DESC LIMIT 50";
$view_galeri = mysqli_query($conn, $galeri);
if (isset($_POST["add_kontak"])) {
  $validated_post = array_map(function ($value) use ($conn) {
    return valid($conn, $value);
  }, $_POST);
  if (kontak($conn, $validated_post, $action = 'insert', $_POST['pesan']) > 0) {
    $message = "Pesan berhasil dikirim.";
    $message_type = "success";
    alert($message, $message_type);
    header("Location: kontak");
    exit();
  }
}
