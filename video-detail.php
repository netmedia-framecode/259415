<?php require_once("controller/visitor.php");
$_SESSION["project_wisata_kuliner_khas_bajawa"]["name_page"] = "Beranda";
require_once("templates/top.php");
if (!isset($_GET['post'])) {
  header("Location: video");
  exit;
} else {
  $id_video = valid($conn, $_GET['post']);
  $video_detail = "SELECT * FROM video WHERE id_video='$id_video'";
  $view_video_detail = mysqli_query($conn, $video_detail);
  $data = mysqli_fetch_assoc($view_video_detail);
  $sql = "UPDATE video SET penonton = penonton + 1 WHERE id_video = '$id_video'";
  mysqli_query($conn, $sql);
?>

  <div class="ltn__breadcrumb-area ltn__breadcrumb-area-2 ltn__breadcrumb-color-white bg-overlay-theme-black-90 bg-image" data-bg="assets/img/heading.jpg">
    <div class="container">
      <div class="row">
        <div class="col-lg-12">
          <div class="ltn__breadcrumb-inner ltn__breadcrumb-inner-2 justify-content-between">
            <div class="section-title-area ltn__section-title-2">
              <h1 class="section-title white-color">Video <?= $data['nama_video'] ?></h1>
            </div>
            <div class="ltn__breadcrumb-list">
              <ul>
                <li><a href="./">Beranda</a></li>
                <li><a href="video">Video</a></li>
                <li>Video <?= $data['nama_video'] ?></li>
              </ul>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>

  <div class="ltn__page-details-area ltn__portfolio-details-area mb-105">
    <div class="container">
      <div class="row">
        <div class="col-lg-8">
          <div class="ltn__page-details-inner ltn__portfolio-details-inner">
            <div class="ltn__blog-img">
              <iframe style="width: 100%;" height="450" src="<?= $data['link_video'] ?>" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>
            </div>
            <h4><?= $data['nama_video'] ?></h4>
            Diupload oleh : <?= $data['author'] ?> | <?php $date = date_create($data["created_at"]);
                                                      echo date_format($date, "d M Y - h:i a"); ?>
            <?= $data['deskripsi'] ?>
          </div>
        </div>
        <div class="col-lg-4">
          <aside class="sidebar-area ltn__right-sidebar">

            <div class="container">
              <div class="ltn__gallery-active row ltn__gallery-style-2 ltn__gallery-info-hide---">
                <div class="ltn__gallery-sizer col-1"></div>
                <?php
                $video = "SELECT * FROM video WHERE id_video!='$data[id_video]' ORDER BY id_video DESC LIMIT 50";
                $view_video = mysqli_query($conn, $video);
                foreach ($view_video as $data) { ?>
                  <div class="ltn__gallery-item filter_category_3 col-md-12 col-sm-6 col-12">
                    <div class="ltn__gallery-item-inner">
                      <div class="ltn__gallery-item-img">
                        <a href="<?= $data['link_video'] ?>" data-rel="lightcase:myCollection">
                          <img src="assets/img/thumbnail/<?= $data['thumbnail'] ?>" style="width: 100%; height: 200px; object-fit: cover;" alt="Image">
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

          </aside>
        </div>
      </div>
    </div>
  </div>

<?php
}
require_once("templates/bottom.php"); ?>