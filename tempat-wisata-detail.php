<?php require_once("controller/visitor.php");
$_SESSION["project_wisata_kuliner_khas_bajawa"]["name_page"] = "Beranda";
require_once("templates/top.php");
if (!isset($_GET['post'])) {
  header("Location: video");
  exit;
} else {
  $id_tempat_wisata = valid($conn, $_GET['post']);
  $tempat_wisata_detail = "SELECT * FROM tempat_wisata WHERE id_tempat_wisata='$id_tempat_wisata'";
  $view_tempat_wisata_detail = mysqli_query($conn, $tempat_wisata_detail);
  $data = mysqli_fetch_assoc($view_tempat_wisata_detail);
  $sql = "UPDATE tempat_wisata SET pembaca = pembaca + 1 WHERE id_tempat_wisata = '$id_tempat_wisata'";
  mysqli_query($conn, $sql);
?>

  <div class="ltn__breadcrumb-area ltn__breadcrumb-area-2 ltn__breadcrumb-color-white bg-overlay-theme-black-90 bg-image" data-bg="assets/img/heading.jpg">
    <div class="container">
      <div class="row">
        <div class="col-lg-12">
          <div class="ltn__breadcrumb-inner ltn__breadcrumb-inner-2 justify-content-between">
            <div class="section-title-area ltn__section-title-2">
              <h1 class="section-title white-color">Tempat Wisata <?= $data['nama_wisata'] ?></h1>
            </div>
            <div class="ltn__breadcrumb-list">
              <ul>
                <li><a href="./">Beranda</a></li>
                <li><a href="tempat-wisata">Tempat Wisata</a></li>
                <li>Tempat Wisata <?= $data['nama_wisata'] ?></li>
              </ul>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>

  <div class="ltn__page-details-area ltn__blog-details-area mb-120">
    <div class="container">
      <div class="row">
        <div class="col-lg-8">
          <div class="ltn__blog-details-wrap">
            <div class="ltn__page-details-inner ltn__blog-details-inner">
              <div class="ltn__blog-meta">
                <div class="ltn__blog-img">
                  <img src="assets/img/wisata/<?= $data['image_wisata'] ?>" alt="">
                </div>
              </div>
              <h2 class="ltn__blog-title"><?= $data['nama_wisata'] ?></h2>
              <div class="ltn__blog-meta">
                <ul>
                  <li class="ltn__blog-author">
                    <a href="#">Oleh: <?= $data['author'] ?></a>
                  </li>
                  <li class="ltn__blog-date">
                    <i class="far fa-calendar-alt"></i><?php $date = date_create($data["created_at"]);
                                                        echo date_format($date, "d M Y - h:i a"); ?>
                  </li>
                </ul>
              </div>
              <?= $data['deskripsi'] ?>
            </div>
          </div>
        </div>
        <div class="col-lg-4">
          <aside class="sidebar-area blog-sidebar ltn__right-sidebar">
            <!-- Popular Post Widget -->
            <div class="widget ltn__popular-post-widget">
              <h4 class="ltn__widget-title ltn__widget-title-border">Tempat Wisata Lainnya</h4>
              <ul>
                <?php
                $tempat_wisata = "SELECT * FROM tempat_wisata WHERE id_tempat_wisata!='$data[id_tempat_wisata]' ORDER BY id_tempat_wisata DESC LIMIT 50";
                $view_tempat_wisata = mysqli_query($conn, $tempat_wisata);
                foreach ($view_tempat_wisata as $data) { ?>
                  <li>
                    <div class="popular-post-widget-item clearfix">
                      <div class="popular-post-widget-img">
                        <a href="tempat-wisata-detail?post=<?= $data['id_tempat_wisata'] ?>"><img src="assets/img/wisata/<?= $data['image_wisata'] ?>" class="rounded-0" style="width: 60px; height: 60px; object-fit: cover;" alt="#"></a>
                      </div>
                      <div class="popular-post-widget-brief">
                        <h6><a href="tempat-wisata-detail?post=<?= $data['id_tempat_wisata'] ?>"><?= $data['nama_wisata'] ?></a></h6>
                        <div class="ltn__blog-meta">
                          <ul>
                            <li class="ltn__blog-date">
                              <a href="#"><i class="far fa-calendar-alt"></i><?php $date = date_create($data["created_at"]);
                                                                              echo date_format($date, "d M Y - h:i a"); ?></a>
                            </li>
                          </ul>
                        </div>
                      </div>
                    </div>
                  </li>
                <?php } ?>
              </ul>
            </div>
          </aside>
        </div>
      </div>
    </div>
  </div>

<?php }
require_once("templates/bottom.php"); ?>