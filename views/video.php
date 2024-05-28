<?php require_once("../controller/video.php");
$_SESSION["project_wisata_kuliner_khas_bajawa"]["name_page"] = "Video";
require_once("../templates/views_top.php"); ?>

<!-- Begin Page Content -->
<div class="container-fluid">

  <!-- Page Heading -->
  <div class="d-sm-flex align-items-center justify-content-between mb-4">
    <h1 class="h3 mb-0 text-gray-800"><?= $_SESSION["project_wisata_kuliner_khas_bajawa"]["name_page"] ?></h1>
    <a href="#" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm" data-toggle="modal" data-target="#tambah"><i class="bi bi-plus-lg"></i> Tambah</a>
  </div>

  <div class="card shadow mb-4 border-0">
    <div class="card-body">
      <div class="table-responsive">
        <table class="table table-bordered text-dark" id="dataTable" width="100%" cellspacing="0">
          <thead>
            <tr>
              <th class="text-center">Thumbnail</th>
              <th class="text-center">Judul Video</th>
              <th class="text-center">Deskripsi</th>
              <th class="text-center">Author</th>
              <th class="text-center">Penonton</th>
              <th class="text-center" style="width: 200px;">Aksi</th>
            </tr>
          </thead>
          <tfoot>
            <tr>
              <th class="text-center">Thumbnail</th>
              <th class="text-center">Judul Video</th>
              <th class="text-center">Deskripsi</th>
              <th class="text-center">Author</th>
              <th class="text-center">Penonton</th>
              <th class="text-center">Aksi</th>
            </tr>
          </tfoot>
          <tbody>
            <?php foreach ($view_video as $data) { ?>
              <tr>
                <td>
                  <button type="button" class="btn btn-link" data-toggle="modal" data-target="#gambar<?= $data['id_video'] ?>"><img src="../assets/img/thumbnail/<?= $data['thumbnail'] ?>" style="width: 250px;height: 150px;object-fit: cover;" alt=""></button>
                  <div class="modal fade" id="gambar<?= $data['id_video'] ?>" tabindex="-1" role="dialog" aria-labelledby="gambarModalLabel" aria-hidden="true">
                    <div class="modal-dialog modal-lg" role="document">
                      <div class="modal-content">
                        <div class="modal-header">
                          <h5 class="modal-title" id="gambarModalLabel"></h5>
                          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                          </button>
                        </div>
                        <div class="modal-body">
                          <iframe style="width: 100%;" height="450" src="<?= $data['link_video'] ?>" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>
                        </div>
                      </div>
                    </div>
                  </div>
                </td>
                <td><?= $data['nama_video'] ?></td>
                <td>
                  <button type="button" class="btn btn-link" data-toggle="modal" data-target="#deskripsi<?= $data['id_video'] ?>">Lihat</button>
                  <div class="modal fade" id="deskripsi<?= $data['id_video'] ?>" tabindex="-1" role="dialog" aria-labelledby="gambarModalLabel" aria-hidden="true">
                    <div class="modal-dialog modal-lg" role="document">
                      <div class="modal-content">
                        <div class="modal-header">
                          <h5 class="modal-title" id="gambarModalLabel"><?= $data['nama_video'] ?></h5>
                          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                          </button>
                        </div>
                        <div class="modal-body">
                          <?= $data['deskripsi'] ?>
                        </div>
                      </div>
                    </div>
                  </div>
                </td>
                <td><?= $data['author'] ?></td>
                <td><i class="far fa-eye"></i> <?= $data['penonton'] ?></td>
                <td class="text-center">
                  <button type="button" class="btn btn-warning btn-sm" data-toggle="modal" data-target="#ubah<?= $data['id_video'] ?>">
                    <i class="bi bi-pencil-square"></i> Ubah
                  </button>
                  <div class="modal fade" id="ubah<?= $data['id_video'] ?>" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                    <div class="modal-dialog">
                      <div class="modal-content">
                        <div class="modal-header border-bottom-0 shadow">
                          <h5 class="modal-title" id="exampleModalLabel">Ubah <?= $data['nama_video'] ?></h5>
                          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                          </button>
                        </div>
                        <form action="" method="post" enctype="multipart/form-data">
                          <input type="hidden" name="id_video" value="<?= $data['id_video'] ?>">
                          <input type="hidden" name="thumbnailOld" value="<?= $data['thumbnail'] ?>">
                          <input type="hidden" name="nama_videoOld" value="<?= $data['nama_video'] ?>">
                          <div class="modal-body">
                            <div class="custom-file">
                              <input name="thumbnail" type="file" class="custom-file-input" id="thumbnail">
                              <label class="custom-file-label" for="thumbnail">Pilih Gambar</label>
                            </div>
                            <div class="form-group">
                              <label for="nama_video">Judul Video</label>
                              <input type="text" name="nama_video" value="<?= $data['nama_video'] ?>" class="form-control" id="nama_video" required>
                            </div>
                            <div class="form-group">
                              <label for="link_video">Link Video</label>
                              <input type="url" name="link_video" value="<?= $data['link_video'] ?>" class="form-control" id="link_video" required>
                            </div>
                            <div class="form-group">
                              <label for="edit-deskripsi<?= $data['id_video'] ?>">Deskripsi</label>
                              <textarea name="deskripsi" class="form-control" id="edit-deskripsi<?= $data['id_video'] ?>" rows="3"><?= $data['deskripsi'] ?></textarea>
                              <script>
                                CKEDITOR.replace('edit-deskripsi<?= $data['id_video'] ?>');
                              </script>
                            </div>
                          </div>
                          <div class="modal-footer justify-content-center border-top-0">
                            <button type="button" class="btn btn-secondary btn-sm" data-dismiss="modal">Batal</button>
                            <button type="submit" name="edit_video" class="btn btn-warning btn-sm">Ubah</button>
                          </div>
                        </form>
                      </div>
                    </div>
                  </div>
                  <button type="button" class="btn btn-danger btn-sm" data-toggle="modal" data-target="#hapus<?= $data['id_video'] ?>">
                    <i class="bi bi-trash3"></i> Hapus
                  </button>
                  <div class="modal fade" id="hapus<?= $data['id_video'] ?>" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                    <div class="modal-dialog">
                      <div class="modal-content">
                        <div class="modal-header border-bottom-0 shadow">
                          <h5 class="modal-title" id="exampleModalLabel">Hapus <?= $data['nama_video'] ?></h5>
                          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                          </button>
                        </div>
                        <form action="" method="post">
                          <input type="hidden" name="id_video" value="<?= $data['id_video'] ?>">
                          <input type="hidden" name="thumbnail" value="<?= $data['thumbnail'] ?>">
                          <input type="hidden" name="nama_video" value="<?= $data['nama_video'] ?>">
                          <div class="modal-body">
                            <p>Jika anda yakin ingin menghapus data ini, klik Hapus!</p>
                          </div>
                          <div class="modal-footer justify-content-center border-top-0">
                            <button type="button" class="btn btn-secondary btn-sm" data-dismiss="modal">Batal</button>
                            <button type="submit" name="delete_video" class="btn btn-danger btn-sm">hapus</button>
                          </div>
                        </form>
                      </div>
                    </div>
                  </div>
                </td>
              </tr>
            <?php } ?>
          </tbody>
        </table>
      </div>
    </div>
  </div>

  <div class="modal fade" id="tambah" tabindex="-1" aria-labelledby="tambahLabel" aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header border-bottom-0 shadow">
          <h5 class="modal-title" id="tambahLabel">Tambah Video</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <form action="" method="post" enctype="multipart/form-data">
          <input type="hidden" name="author" value="<?= $name ?>">
          <div class="modal-body">
            <div class="custom-file">
              <input name="thumbnail" type="file" class="custom-file-input" id="thumbnail" required>
              <label class="custom-file-label" for="thumbnail">Pilih Gambar</label>
            </div>
            <div class="form-group">
              <label for="nama_video">Judul Video</label>
              <input type="text" name="nama_video" class="form-control" id="nama_video" required>
            </div>
            <div class="form-group">
              <label for="link_video">Link Video</label>
              <input type="url" name="link_video" class="form-control" id="link_video" required>
            </div>
            <div class="form-group">
              <label for="deskripsi">Deskripsi</label>
              <textarea name="deskripsi" class="form-control" id="deskripsi" rows="3"></textarea>
            </div>
          </div>
          <div class="modal-footer justify-content-center border-top-0">
            <button type="button" class="btn btn-secondary btn-sm" data-dismiss="modal">Batal</button>
            <button type="submit" name="add_video" class="btn btn-primary btn-sm">Tambah</button>
          </div>
        </form>
      </div>
    </div>
  </div>

</div>
<!-- /.container-fluid -->

<?php require_once("../templates/views_bottom.php") ?>