<?php require_once("../controller/galeri.php");
$_SESSION["project_wisata_kuliner_khas_bajawa"]["name_page"] = "Galeri";
require_once("../templates/views_top.php"); ?>

<!-- Begin Page Content -->
<div class="container-fluid">

  <!-- Page Heading -->
  <div class="d-sm-flex align-items-center justify-content-between mb-4">
    <h1 class="h3 mb-0 text-gray-800"><?= $_SESSION["project_wisata_kuliner_khas_bajawa"]["name_page"] ?></h1>
  </div>

  <div class="row">
    <div class="col-lg-4">
      <div class="card shadow">
        <div class="card-header">
          Upload Gambar
        </div>
        <div class="card-body" id="drop-area">
          <form action="" method="post" enctype="multipart/form-data">
            <div class="form-group">
              <label for="id_tipe_fitur">Tipe Fitur</label>
              <select name="id_tipe_fitur" id="id_tipe_fitur" class="form-select form-control" required>
                <option value="" selected>Pilih Tipe Fitur</option>
                <option value="1">Wisata Kuliner</option>
                <option value="2">Tempat Wisata</option>
              </select>
            </div>
            <div class="form-group" id="kuliner_form" style="display:none;">
              <label for="id_kuliner">Pilih Wisata Kuliner</label>
              <select name="id_kuliner" id="id_kuliner" class="form-select form-control" required>
                <?php foreach ($view_kuliner as $data_k) : ?>
                  <option value="<?= $data_k['id_kuliner'] ?>"><?= $data_k['nama_kuliner'] ?></option>
                <?php endforeach; ?>
              </select>
            </div>
            <div class="form-group" id="wisata_form" style="display:none;">
              <label for="id_tempat_wisata">Pilih Tempat Wisata</label>
              <select name="id_tempat_wisata" id="id_tempat_wisata" class="form-select form-control" required>
                <?php foreach ($view_tempat_wisata as $data_tw) : ?>
                  <option value="<?= $data_tw['id_tempat_wisata'] ?>"><?= $data_tw['nama_wisata'] ?></option>
                <?php endforeach; ?>
              </select>
            </div>
            <div class="form-group">
              <label for="images">Drag and Drop here:</label>
              <input type="file" class="form-control-file" id="images" name="images[]" accept="image/jpeg, image/png" multiple required>
            </div>
            <div class="form-group shadow mb-5 bg-dark text-white p-3" style="height: 200px;">
              <div id="fileList"></div>
            </div>
            <button name="add_galeri" class="btn btn-primary">Upload</button>
          </form>
        </div>
      </div>
    </div>
    <div class="col-lg-8">
      <div class="card shadow">
        <div class="card-body p-0">
          <div class="d-flex flex-wrap justify-content-start p-2">
            <?php if (mysqli_num_rows($view_galeri) > 0) {
              while ($row = mysqli_fetch_assoc($view_galeri)) { ?>
                <form action="" method="post">
                  <img src="../assets/img/galeri/<?= $row['image_galeri'] ?>" class="img-thumbnail m-3" style="width: 210px; height: 200px; object-fit: cover;" alt="">
                  <input type="hidden" name="id_galeri" value="<?= $row['id_galeri'] ?>">
                  <input type="hidden" name="image_galeri" value="<?= $row['image_galeri'] ?>">
                  <button type="submit" name="delete_galeri" class="btn btn-danger btn-sm" style="margin-left: -53px;border-top-right-radius: 0px;border-bottom-right-radius: 0px;"><i class="bi bi-trash3"></i></button>
                </form>
            <?php }
            } ?>
          </div>
        </div>
      </div>
    </div>
  </div>

</div>
<!-- /.container-fluid -->

<script>
  document.addEventListener('DOMContentLoaded', function() {
    const tipeFiturSelect = document.getElementById('id_tipe_fitur');
    const kulinerForm = document.getElementById('kuliner_form');
    const wisataForm = document.getElementById('wisata_form');

    function toggleForms() {
      const selectedValue = tipeFiturSelect.value;
      if (selectedValue == "1") {
        kulinerForm.style.display = 'block';
        wisataForm.style.display = 'none';
      } else if (selectedValue == "2") {
        kulinerForm.style.display = 'none';
        wisataForm.style.display = 'block';
      } else {
        kulinerForm.style.display = 'none';
        wisataForm.style.display = 'none';
      }
    }

    // Initial call to set the correct form visibility based on the default selection
    toggleForms();

    // Event listener for change in dropdown
    tipeFiturSelect.addEventListener('change', toggleForms);
  });
</script>
<script>
  const dropArea = document.querySelector("#drop-area");
  const input = document.querySelector("#images");

  dropArea.addEventListener("dragover", function(e) {
    e.preventDefault();
  });

  dropArea.addEventListener("drop", function(e) {
    e.preventDefault();
    input.files = e.dataTransfer.files;

    var files = input.files,
      filesLength = files.length;
    for (var i = 0; i < filesLength; i++) {
      var file = files[i];
      var fileName = file.name;
      var list = document.createElement("li");
      list.innerHTML = fileName;
      document.querySelector("#fileList").appendChild(list);
    }
  });

  input.addEventListener("change", function(e) {
    var files = e.target.files,
      filesLength = files.length;
    for (var i = 0; i < filesLength; i++) {
      var file = files[i];
      var fileName = file.name;
      var list = document.createElement("li");
      list.innerHTML = fileName;
      document.querySelector("#fileList").appendChild(list);
    }
  });
</script>
<?php require_once("../templates/views_bottom.php") ?>