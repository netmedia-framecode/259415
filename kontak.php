<?php require_once("controller/visitor.php");
$_SESSION["project_wisata_kuliner_khas_bajawa"]["name_page"] = "Beranda";
require_once("templates/top.php"); ?>

<div class="ltn__breadcrumb-area ltn__breadcrumb-area-2 ltn__breadcrumb-color-white bg-overlay-theme-black-90 bg-image" data-bg="assets/img/heading.jpg">
  <div class="container">
    <div class="row">
      <div class="col-lg-12">
        <div class="ltn__breadcrumb-inner ltn__breadcrumb-inner-2 justify-content-between">
          <div class="section-title-area ltn__section-title-2">
            <h1 class="section-title white-color">Kontak</h1>
          </div>
          <div class="ltn__breadcrumb-list">
            <ul>
              <li><a href="./">Beranda</a></li>
              <li>Kontak</li>
            </ul>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>

<div class="ltn__contact-message-area mb-120 mb--100" style="margin-bottom: 100px;">
  <div class="container">
    <div class="row">
      <div class="col-lg-12">
        <div class="ltn__form-box contact-form-box box-shadow white-bg">
          <h4 class="title-2">Berikan kami saran</h4>
          <form id="contact-form" method="post">
            <div class="row">
              <div class="col-md-12">
                <div class="input-item input-item-name ltn__custom-icon">
                  <input type="text" name="username" placeholder="Nama" required>
                </div>
              </div>
              <div class="col-md-6">
                <div class="input-item input-item-email ltn__custom-icon">
                  <input type="email" name="email" placeholder="Email" required>
                </div>
              </div>
              <div class="col-md-6">
                <div class="input-item input-item-phone ltn__custom-icon">
                  <input type="text" name="phone" placeholder="No. Handphone" required>
                </div>
              </div>
            </div>
            <div class="input-item input-item-textarea ltn__custom-icon">
              <textarea name="pesan" placeholder="Pesan" required></textarea>
            </div>
            <div class="btn-wrapper mt-0">
              <button class="btn theme-btn-1 btn-effect-1 text-uppercase" type="submit" name="add_kontak">Kirim</button>
            </div>
          </form>
        </div>
      </div>
    </div>
  </div>
</div>

<?php require_once("templates/bottom.php"); ?>