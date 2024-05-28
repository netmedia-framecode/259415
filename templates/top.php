<!doctype html>
<html class="no-js" lang="zxx">

<head>
  <?php require_once("sections/head.php"); ?>
</head>

<body>
  <?php foreach ($messageTypes as $type) {
    if (isset($_SESSION["project_wisata_kuliner_khas_bajawa"]["message_$type"])) {
      echo "<div class='message-$type' data-message-$type='{$_SESSION["project_wisata_kuliner_khas_bajawa"]["message_$type"]}'></div>";
    }
  } ?>
  <div class="body-wrapper">

    <!-- HEADER AREA START (header-5) -->
    <?php require_once("sections/nav.php"); ?>
    <!-- HEADER AREA END -->

    <div class="ltn__utilize-overlay"></div>