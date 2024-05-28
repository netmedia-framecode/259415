<?php

require_once("../config/Base.php");
require_once("../config/Auth.php");
require_once("../config/Alert.php");

$video = "SELECT * FROM video ORDER BY id_video DESC LIMIT 50";
$view_video = mysqli_query($conn, $video);
if (isset($_POST["add_video"])) {
  $validated_post = array_map(function ($value) use ($conn) {
    return valid($conn, $value);
  }, $_POST);
  if (video($conn, $validated_post, $action = 'insert', $deskripsi = $_POST['deskripsi']) > 0) {
    $message = "Video baru berhasil ditambahkan.";
    $message_type = "success";
    alert($message, $message_type);
    header("Location: video");
    exit();
  }
}
if (isset($_POST["edit_video"])) {
  $validated_post = array_map(function ($value) use ($conn) {
    return valid($conn, $value);
  }, $_POST);
  if (video($conn, $validated_post, $action = 'update', $deskripsi = $_POST['deskripsi']) > 0) {
    $message = "Video " . $_POST['nama_videoOld'] . " berhasil diubah.";
    $message_type = "success";
    alert($message, $message_type);
    header("Location: video");
    exit();
  }
}
if (isset($_POST["delete_video"])) {
  $validated_post = array_map(function ($value) use ($conn) {
    return valid($conn, $value);
  }, $_POST);
  if (video($conn, $validated_post, $action = 'delete', $deskripsi = null) > 0) {
    $message = "Video " . $_POST['nama_video'] . " berhasil dihapus.";
    $message_type = "success";
    alert($message, $message_type);
    header("Location: video");
    exit();
  }
}
