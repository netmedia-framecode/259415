<?php

require_once("../config/Base.php");
require_once("../config/Auth.php");
require_once("../config/Alert.php");

$jenis_kuliner = "SELECT * FROM jenis_kuliner ORDER BY id_jenis_kuliner DESC LIMIT 50";
$view_jenis_kuliner = mysqli_query($conn, $jenis_kuliner);
$kuliner = "SELECT * FROM kuliner JOIN jenis_kuliner ON kuliner.id_jenis_kuliner=jenis_kuliner.id_jenis_kuliner ORDER BY kuliner.id_kuliner DESC LIMIT 50";
$view_kuliner = mysqli_query($conn, $kuliner);
if (isset($_POST["add_kuliner"])) {
  $validated_post = array_map(function ($value) use ($conn) {
    return valid($conn, $value);
  }, $_POST);
  if (kuliner($conn, $validated_post, $action = 'insert', $deskripsi = $_POST['deskripsi']) > 0) {
    $message = "Kuliner baru berhasil ditambahkan.";
    $message_type = "success";
    alert($message, $message_type);
    header("Location: list-kuliner");
    exit();
  }
}
if (isset($_POST["edit_kuliner"])) {
  $validated_post = array_map(function ($value) use ($conn) {
    return valid($conn, $value);
  }, $_POST);
  if (kuliner($conn, $validated_post, $action = 'update', $deskripsi = $_POST['deskripsi']) > 0) {
    $message = "Kuliner " . $_POST['kulinerOld'] . " berhasil diubah.";
    $message_type = "success";
    alert($message, $message_type);
    header("Location: list-kuliner");
    exit();
  }
}
if (isset($_POST["delete_kuliner"])) {
  $validated_post = array_map(function ($value) use ($conn) {
    return valid($conn, $value);
  }, $_POST);
  if (kuliner($conn, $validated_post, $action = 'delete', $deskripsi = null) > 0) {
    $message = "Kuliner " . $_POST['kuliner'] . " berhasil dihapus.";
    $message_type = "success";
    alert($message, $message_type);
    header("Location: list-kuliner");
    exit();
  }
}
