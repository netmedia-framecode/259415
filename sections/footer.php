<!-- FOOTER AREA START -->
<footer class="ltn__footer-area mt-5">
  <div class="ltn__copyright-area ltn__copyright-2 section-bg-2  ltn__border-top-2--- plr--5">
    <div class="container-fluid">
      <div class="row">
        <div class="col-md-6 col-12">
          <div class="ltn__copyright-design clearfix">
            <p>Copyright &copy; <a href="https://wasd.netmedia-framecode.com" class="text-decoration-none">WASD Netmedia Framecode</a> <?= date('Y') ?></p>
          </div>
        </div>
        <div class="col-md-6 col-12 align-self-center">
          <div class="ltn__copyright-menu text-end">
            <p>Develop by Anastasia Constantia Lobo</p>
          </div>
        </div>
      </div>
    </div>
  </div>
</footer>
<!-- FOOTER AREA END -->

</div>
<!-- Body main wrapper end -->

<!-- preloader area start -->
<div class="preloader d-none" id="preloader">
  <div class="preloader-inner">
    <div class="spinner">
      <div class="dot1"></div>
      <div class="dot2"></div>
    </div>
  </div>
</div>
<!-- preloader area end -->

<!-- All JS Plugins -->
<script src="<?= $baseURL ?>assets/js/plugins.js"></script>
<!-- Main JS -->
<script src="<?= $baseURL ?>assets/js/main.js"></script>

<script>
  const showMessage = (type, title, message) => {
    if (message) {
      Swal.fire({
        icon: type,
        title: title,
        text: message,
      });
    }
  };

  showMessage("success", "Berhasil Terkirim", $(".message-success").data("message-success"));
  showMessage("info", "For your information", $(".message-info").data("message-info"));
  showMessage("warning", "Peringatan!!", $(".message-warning").data("message-warning"));
  showMessage("error", "Kesalahan", $(".message-danger").data("message-danger"));
</script>