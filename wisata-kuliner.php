<?php require_once("controller/visitor.php");
$_SESSION["project_wisata_kuliner_khas_bajawa"]["name_page"] = "Beranda";
require_once("templates/top.php"); ?>

<div class="ltn__breadcrumb-area ltn__breadcrumb-area-2 ltn__breadcrumb-color-white bg-overlay-theme-black-90 bg-image" data-bg="assets/img/heading.jpg">
  <div class="container">
    <div class="row">
      <div class="col-lg-12">
        <div class="ltn__breadcrumb-inner ltn__breadcrumb-inner-2 justify-content-between">
          <div class="section-title-area ltn__section-title-2">
            <h1 class="section-title white-color">Wisata Kuliner</h1>
          </div>
          <div class="ltn__breadcrumb-list">
            <ul>
              <li><a href="./">Beranda</a></li>
              <li>Wisata Kuliner</li>
            </ul>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>

<div class="ltn__blog-area ltn__blog-item-3-normal mb-120">
  <div class="container">
    <div class="row">
      <?php foreach ($view_kuliner as $data) { ?>
        <div class="col-lg-4 col-sm-6 col-12">
          <div class="ltn__blog-item ltn__blog-item-3">
            <div class="ltn__blog-img">
              <a href="wisata-kuliner-detail?post=<?= $data['id_kuliner'] ?>"><img src="assets/img/kuliner/<?= $data['image_kuliner'] ?>" style="width: 100%; height: 300px; object-fit: cover;" alt="#"></a>
            </div>
            <div class="ltn__blog-brief">
              <div class="ltn__blog-meta">
                <ul>
                  <li class="ltn__blog-author">
                    <a href="#"><i class="far fa-user"></i>by: <?= $data['author'] ?></a>
                  </li>
                </ul>
              </div>
              <h3 class="ltn__blog-title"><a href="wisata-kuliner-detail?post=<?= $data['id_kuliner'] ?>"><?= $data['nama_kuliner'] ?></a></h3>
              <div class="ltn__blog-meta-btn">
                <div class="ltn__blog-meta">
                  <ul>
                    <li class="ltn__blog-date"><i class="far fa-calendar-alt"></i><?php $date = date_create($data["created_at"]);
                                                                                  echo date_format($date, "l, d M Y"); ?></li>
                  </ul>
                </div>
                <div class="ltn__blog-btn">
                  <a href="wisata-kuliner-detail?post=<?= $data['id_kuliner'] ?>">Lihat Lebih</a>
                </div>
              </div>
            </div>
          </div>
        </div>
      <?php } ?>
    </div>
  </div>
</div>

<?php require_once("templates/bottom.php"); ?>