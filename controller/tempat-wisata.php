<?php

require_once("../config/Base.php");
require_once("../config/Auth.php");
require_once("../config/Alert.php");

$tempat_wisata = "SELECT * FROM tempat_wisata ORDER BY id_tempat_wisata DESC LIMIT 50";
$view_tempat_wisata = mysqli_query($conn, $tempat_wisata);
if (isset($_POST["add_tempat_wisata"])) {
  $validated_post = array_map(function ($value) use ($conn) {
    return valid($conn, $value);
  }, $_POST);
  if (tempat_wisata($conn, $validated_post, $action = 'insert', $deskripsi = $_POST['deskripsi']) > 0) {
    $message = "Tempat wisata baru berhasil ditambahkan.";
    $message_type = "success";
    alert($message, $message_type);
    header("Location: tempat-wisata");
    exit();
  }
}
if (isset($_POST["edit_tempat_wisata"])) {
  $validated_post = array_map(function ($value) use ($conn) {
    return valid($conn, $value);
  }, $_POST);
  if (tempat_wisata($conn, $validated_post, $action = 'update', $deskripsi = $_POST['deskripsi']) > 0) {
    $message = "Tempat wisata " . $_POST['nama_wisataOld'] . " berhasil diubah.";
    $message_type = "success";
    alert($message, $message_type);
    header("Location: tempat-wisata");
    exit();
  }
}
if (isset($_POST["delete_tempat_wisata"])) {
  $validated_post = array_map(function ($value) use ($conn) {
    return valid($conn, $value);
  }, $_POST);
  if (tempat_wisata($conn, $validated_post, $action = 'delete', $deskripsi = null) > 0) {
    $message = "Tempat wisata " . $_POST['nama_wisata'] . " berhasil dihapus.";
    $message_type = "success";
    alert($message, $message_type);
    header("Location: tempat-wisata");
    exit();
  }
}
