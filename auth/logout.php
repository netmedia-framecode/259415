<?php if (!isset($_SESSION)) {
  session_start();
}
require_once("../controller/auth.php");
if (isset($_SESSION["project_wisata_kuliner_khas_bajawa"])) {
  unset($_SESSION["project_wisata_kuliner_khas_bajawa"]);
  header("Location: ./");
  exit();
}
