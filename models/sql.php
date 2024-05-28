<?php

if (!isset($_SESSION["project_wisata_kuliner_khas_bajawa"]["users"])) {
  function alert($message, $message_type)
  {
    $_SESSION["project_wisata_kuliner_khas_bajawa"] = [
      "message_$message_type" => $message,
      "time_message" => time()
    ];

    return true;
  }
}

if (isset($_SESSION["project_wisata_kuliner_khas_bajawa"]["users"])) {
  function alert($message, $message_type)
  {
    global $conn;
    $id_user = valid($conn, $_SESSION["project_wisata_kuliner_khas_bajawa"]["users"]["id"]);
    $id_role = valid($conn, $_SESSION["project_wisata_kuliner_khas_bajawa"]["users"]["id_role"]);
    $role = valid($conn, $_SESSION["project_wisata_kuliner_khas_bajawa"]["users"]["role"]);
    $email = valid($conn, $_SESSION["project_wisata_kuliner_khas_bajawa"]["users"]["email"]);
    $name = valid($conn, $_SESSION["project_wisata_kuliner_khas_bajawa"]["users"]["name"]);
    $image = valid($conn, $_SESSION["project_wisata_kuliner_khas_bajawa"]["users"]["image"]);

    $_SESSION["project_wisata_kuliner_khas_bajawa"]["users"] = [
      "id" => $id_user,
      "id_role" => $id_role,
      "role" => $role,
      "email" => $email,
      "name" => $name,
      "image" => $image,
      "message_$message_type" => $message,
      "time_message" => time()
    ];
  }
}
