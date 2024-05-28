<?php require_once("controller/visitor.php");
$_SESSION["project_wisata_kuliner_khas_bajawa"]["name_page"] = "Beranda";
require_once("templates/top.php");
if (!isset($_GET['post'])) {
  header("Location: video");
  exit;
} else {
  $id_kuliner = valid($conn, $_GET['post']);
  $kuliner_detail = "SELECT * FROM kuliner WHERE id_kuliner='$id_kuliner'";
  $view_kuliner_detail = mysqli_query($conn, $kuliner_detail);
  $data = mysqli_fetch_assoc($view_kuliner_detail);
  $sql = "UPDATE kuliner SET pembaca = pembaca + 1 WHERE id_kuliner = '$id_kuliner'";
  mysqli_query($conn, $sql);
?>

  <div class="ltn__breadcrumb-area ltn__breadcrumb-area-2 ltn__breadcrumb-color-white bg-overlay-theme-black-90 bg-image" data-bg="assets/img/heading.jpg">
    <div class="container">
      <div class="row">
        <div class="col-lg-12">
          <div class="ltn__breadcrumb-inner ltn__breadcrumb-inner-2 justify-content-between">
            <div class="section-title-area ltn__section-title-2">
              <h1 class="section-title white-color">Wisata Kuliner <?= $data['nama_kuliner'] ?></h1>
            </div>
            <div class="ltn__breadcrumb-list">
              <ul>
                <li><a href="./">Beranda</a></li>
                <li><a href="wisata-kuliner">Wisata Kuliner</a></li>
                <li>Wisata Kuliner <?= $data['nama_kuliner'] ?></li>
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
                  <img src="assets/img/kuliner/<?= $data['image_kuliner'] ?>" alt="">
                </div>
              </div>
              <h2 class="ltn__blog-title"><?= $data['nama_kuliner'] ?></h2>
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
              <h4 class="ltn__widget-title ltn__widget-title-border">Wisata Kuliner Lainnya</h4>
              <ul>
                <?php
                $kuliner = "SELECT * FROM kuliner WHERE id_kuliner!='$data[id_kuliner]' ORDER BY id_kuliner DESC LIMIT 50";
                $view_kuliner = mysqli_query($conn, $kuliner);
                foreach ($view_kuliner as $data) { ?>
                  <li>
                    <div class="popular-post-widget-item clearfix">
                      <div class="popular-post-widget-img">
                        <a href="wisata-kuliner-detail?post=<?= $data['id_kuliner'] ?>"><img src="assets/img/kuliner/<?= $data['image_kuliner'] ?>" alt="#"></a>
                      </div>
                      <div class="popular-post-widget-brief">
                        <h6><a href="wisata-kuliner-detail?post=<?= $data['id_kuliner'] ?>"><?= $data['nama_kuliner'] ?></a></h6>
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