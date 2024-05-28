<?php

require_once("../config/Base.php");
require_once("../config/Auth.php");
require_once("../config/Alert.php");

$jenis_kuliner = "SELECT * FROM jenis_kuliner ORDER BY id_jenis_kuliner DESC LIMIT 50";
$view_jenis_kuliner = mysqli_query($conn, $jenis_kuliner);
if (isset($_POST["add_jenis_kuliner"])) {
  $validated_post = array_map(function ($value) use ($conn) {
    return valid($conn, $value);
  }, $_POST);
  if (jenis_kuliner($conn, $validated_post, $action = 'insert') > 0) {
    $message = "Jenis kuliner baru berhasil ditambahkan.";
    $message_type = "success";
    alert($message, $message_type);
    header("Location: jenis-kuliner");
    exit();
  }
}
if (isset($_POST["edit_jenis_kuliner"])) {
  $validated_post = array_map(function ($value) use ($conn) {
    return valid($conn, $value);
  }, $_POST);
  if (jenis_kuliner($conn, $validated_post, $action = 'update') > 0) {
    $message = "Jenis kuliner " . $_POST['jenis_kulinerOld'] . " berhasil diubah.";
    $message_type = "success";
    alert($message, $message_type);
    header("Location: jenis-kuliner");
    exit();
  }
}
if (isset($_POST["delete_jenis_kuliner"])) {
  $validated_post = array_map(function ($value) use ($conn) {
    return valid($conn, $value);
  }, $_POST);
  if (jenis_kuliner($conn, $validated_post, $action = 'delete') > 0) {
    $message = "Jenis kuliner " . $_POST['jenis_kuliner'] . " berhasil dihapus.";
    $message_type = "success";
    alert($message, $message_type);
    header("Location: jenis-kuliner");
    exit();
  }
}
