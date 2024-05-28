<?php require_once("controller/visitor.php");
$_SESSION["project_wisata_kuliner_khas_bajawa"]["name_page"] = "Beranda";
require_once("templates/top.php"); ?>

<div class="ltn__slider-area ltn__slider-3  section-bg-1">
  <div class="ltn__slide-one-active slick-slide-arrow-1 slick-slide-dots-1">
    <div class="ltn__slide-item ltn__slide-item-2 ltn__slide-item-3">
      <div class="ltn__slide-item-inner">
        <div class="container">
          <div class="row">
            <div class="col-lg-12 align-self-center">
              <div class="slide-item-info">
                <div class="slide-item-info-inner ltn__slide-animation">
                  <div class="slide-video mb-50 d-none">
                    <a class="ltn__video-icon-2 ltn__video-icon-2-border" href="https://www.youtube.com/embed/ATI7vfCgwXE?autoplay=1&amp;showinfo=0" data-rel="lightcase:myCollection">
                      <i class="fa fa-play"></i>
                    </a>
                  </div>
                  <h1 class="slide-title animated ">Wisata Kuliner & Obyek Wisata Bajawa</h1>
                  <div class="slide-brief animated">
                    <p>Keanekaragaman budaya disini tercermin dalam tradisi adat, bahasa, dan seni budaya. Kaya akan berbagai kuliner dan teknik pengawetan makanan dan acara adat</p>
                  </div>
                  <div class="btn-wrapper animated">
                    <a href="tentang" class="theme-btn-1 btn btn-effect-1 text-uppercase">Tentang Bajawa</a>
                  </div>
                </div>
              </div>
              <div class="slide-item-img">
                <img src="assets/img/heading.jpg" alt="#">
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>

<div class="ltn__banner-area mt-120">
  <div class="container">
    <div class="row ltn__custom-gutter--- justify-content-center">
      <div class="col-lg-6 col-md-6">
        <div class="ltn__banner-item">
          <div class="ltn__banner-img">
            <a href="video">
              <video src="assets/video/video.mp4" style="width: 100%; height: 730px; object-fit: cover;" alt="Banner Video" autoplay muted loop></video>
            </a>
          </div>
        </div>
      </div>
      <div class="col-lg-6 col-md-6">
        <div class="row">
          <div class="col-lg-12">
            <div class="ltn__banner-item">
              <div class="ltn__banner-img">
                <a href="tempat-wisata"><img src="assets/img/wisata.jpg" style="width: 100%; height: 350px; object-fit: cover;" alt="Banner Image"></a>
              </div>
            </div>
          </div>
          <div class="col-lg-12">
            <div class="ltn__banner-item">
              <div class="ltn__banner-img">
                <a href="wisata-kuliner"><img src="assets/img/kuliner.jpg" style="width: 100%; height: 350px; object-fit: cover;" alt="Banner Image"></a>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>

<div class="ltn__blog-area pt-115 pb-70">
  <div class="container">
    <div class="row">
      <div class="col-lg-12">
        <div class="section-title-area ltn__section-title-2 text-center">
          <h1 class="section-title white-color---">Wisata Kuliner</h1>
        </div>
      </div>
    </div>
    <div class="row  ltn__blog-slider-one-active slick-arrow-1 ltn__blog-item-3-normal">
      <?php foreach ($view_kuliner as $data) { ?>
        <div class="col-lg-12">
          <div class="ltn__blog-item ltn__blog-item-3">
            <div class="ltn__blog-img">
              <a href="wisata-kuliner-detail?post=<?= $data['id_kuliner'] ?>"><img src="assets/img/kuliner/<?= $data['image_kuliner'] ?>" alt="#"></a>
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

<div class="ltn__blog-area pt-115 pb-70">
  <div class="container">
    <div class="row">
      <div class="col-lg-12">
        <div class="section-title-area ltn__section-title-2 text-center">
          <h1 class="section-title white-color---">Tempat Wisata</h1>
        </div>
      </div>
    </div>
    <div class="row  ltn__blog-slider-one-active slick-arrow-1 ltn__blog-item-3-normal">
      <?php foreach ($view_tempat_wisata as $data) { ?>
        <div class="col-lg-12">
          <div class="ltn__blog-item ltn__blog-item-3">
            <div class="ltn__blog-img">
              <a href="tempat-wisata-detail?post=<?= $data['id_tempat_wisata'] ?>"><img src="assets/img/wisata/<?= $data['image_wisata'] ?>" alt="#"></a>
            </div>
            <div class="ltn__blog-brief">
              <div class="ltn__blog-meta">
                <ul>
                  <li class="ltn__blog-author">
                    <a href="#"><i class="far fa-user"></i>by: <?= $data['author'] ?></a>
                  </li>
                </ul>
              </div>
              <h3 class="ltn__blog-title"><a href="tempat-wisata-detail?post=<?= $data['id_tempat_wisata'] ?>"><?= $data['nama_wisata'] ?></a></h3>
              <div class="ltn__blog-meta-btn">
                <div class="ltn__blog-meta">
                  <ul>
                    <li class="ltn__blog-date"><i class="far fa-calendar-alt"></i><?php $date = date_create($data["created_at"]);
                                                                                  echo date_format($date, "l, d M Y"); ?></li>
                  </ul>
                </div>
                <div class="ltn__blog-btn">
                  <a href="tempat-wisata-detail?post=<?= $data['id_tempat_wisata'] ?>">Lihat Lebih</a>
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