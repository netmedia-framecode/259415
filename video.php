<?php require_once("controller/visitor.php");
$_SESSION["project_wisata_kuliner_khas_bajawa"]["name_page"] = "Beranda";
require_once("templates/top.php"); ?>

<div class="ltn__breadcrumb-area ltn__breadcrumb-area-2 ltn__breadcrumb-color-white bg-overlay-theme-black-90 bg-image" data-bg="assets/img/heading.jpg">
  <div class="container">
    <div class="row">
      <div class="col-lg-12">
        <div class="ltn__breadcrumb-inner ltn__breadcrumb-inner-2 justify-content-between">
          <div class="section-title-area ltn__section-title-2">
            <h1 class="section-title white-color">Video</h1>
          </div>
          <div class="ltn__breadcrumb-list">
            <ul>
              <li><a href="./">Beranda</a></li>
              <li>Video</li>
            </ul>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>

<div class="ltn__gallery-area mb-120">
  <div class="container">
    <div class="ltn__gallery-active row ltn__gallery-style-2 ltn__gallery-info-hide---">
      <div class="ltn__gallery-sizer col-1"></div>
      <?php foreach ($view_video as $data) { ?>
        <div class="ltn__gallery-item filter_category_3 col-md-4 col-sm-6 col-12">
          <div class="ltn__gallery-item-inner">
            <div class="ltn__gallery-item-img">
              <a href="<?= $data['link_video'] ?>" data-rel="lightcase:myCollection">
                <img src="assets/img/thumbnail/<?= $data['thumbnail'] ?>" style="width: 100%; height: 300px; object-fit: cover;" alt="Image">
                <span class="ltn__gallery-action-icon">
                  <i class="fas fa-search"></i>
                </span>
              </a>
            </div>
            <div class="ltn__gallery-item-info">
              <h4><a href="video-detail?post=<?= $data['id_video'] ?>"><?= $data['nama_video'] ?></a></h4>
            </div>
          </div>
        </div>
      <?php } ?>
    </div>
  </div>
</div>

<?php require_once("templates/bottom.php"); ?>