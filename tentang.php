<?php require_once("controller/visitor.php");
$_SESSION["project_wisata_kuliner_khas_bajawa"]["name_page"] = "Beranda";
require_once("templates/top.php"); ?>

<div class="ltn__breadcrumb-area ltn__breadcrumb-area-2 ltn__breadcrumb-color-white bg-overlay-theme-black-90 bg-image" data-bg="assets/img/tentang.jpg">
  <div class="container">
    <div class="row">
      <div class="col-lg-12">
        <div class="ltn__breadcrumb-inner ltn__breadcrumb-inner-2 justify-content-between">
          <div class="section-title-area ltn__section-title-2">
            <h1 class="section-title white-color">Tentang</h1>
          </div>
          <div class="ltn__breadcrumb-list">
            <ul>
              <li><a href="./">Beranda</a></li>
              <li>Tentang</li>
            </ul>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>

<div class="ltn__about-us-area pt-120--- pb-120">
  <div class="container">
    <div class="row">
      <div class="col-lg-6 align-self-center">
        <div class="about-us-img-wrap about-img-left">
          <img src="assets/img/tentang.jpg" style="width: 90%; height: 500px; object-fit: cover;" alt="About Us Image">
        </div>
      </div>
      <div class="col-lg-6 align-self-center">
        <div class="about-us-info-wrap">
          <div class="section-title-area ltn__section-title-2">
            <h1 class="section-title" style="font-size: 40px;">Wisata Kuliner & Obyek Wisata Bajawa</h1>
            <?php foreach ($views_tentang as $data) {
              echo $data['deskripsi'];
            } ?>
          </div>
          <div class="about-author-info d-flex">
            <div class="author-name-designation  align-self-center">
              <h4 class="mb-0">Anastasia Constantia Lobo</h4>
              <small>/ Author</small>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>

<?php require_once("templates/bottom.php"); ?>