<?php require_once("../controller/list-kuliner.php");
$_SESSION["project_wisata_kuliner_khas_bajawa"]["name_page"] = "List Kuliner";
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
              <th class="text-center">Gambar</th>
              <th class="text-center">Nama Kuliner</th>
              <th class="text-center">Jenis Kuliner</th>
              <th class="text-center">Deskripsi</th>
              <th class="text-center">Author</th>
              <th class="text-center">Pembaca</th>
              <th class="text-center" style="width: 200px;">Aksi</th>
            </tr>
          </thead>
          <tfoot>
            <tr>
              <th class="text-center">Gambar</th>
              <th class="text-center">Nama Kuliner</th>
              <th class="text-center">Jenis Kuliner</th>
              <th class="text-center">Deskripsi</th>
              <th class="text-center">Author</th>
              <th class="text-center">Pembaca</th>
              <th class="text-center">Aksi</th>
            </tr>
          </tfoot>
          <tbody>
            <?php foreach ($view_kuliner as $data) { ?>
              <tr>
                <td>
                  <button type="button" class="btn btn-link" data-toggle="modal" data-target="#gambar<?= $data['id_kuliner'] ?>"><img src="../assets/img/kuliner/<?= $data['image_kuliner'] ?>" style="width: 250px;height: 150px;object-fit: cover;" alt=""></button>
                  <div class="modal fade" id="gambar<?= $data['id_kuliner'] ?>" tabindex="-1" role="dialog" aria-labelledby="gambarModalLabel" aria-hidden="true">
                    <div class="modal-dialog modal-lg" role="document">
                      <div class="modal-content">
                        <div class="modal-header">
                          <h5 class="modal-title" id="gambarModalLabel"></h5>
                          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                          </button>
                        </div>
                        <div class="modal-body">
                          <img src="../assets/img/kuliner/<?= $data['image_kuliner'] ?>" class="img-fluid w-100 h-100" alt="">
                        </div>
                      </div>
                    </div>
                  </div>
                </td>
                <td><?= $data['nama_kuliner'] ?></td>
                <td><?= $data['jenis_kuliner'] ?></td>
                <td>
                  <button type="button" class="btn btn-link" data-toggle="modal" data-target="#deskripsi<?= $data['id_kuliner'] ?>">Lihat</button>
                  <div class="modal fade" id="deskripsi<?= $data['id_kuliner'] ?>" tabindex="-1" role="dialog" aria-labelledby="gambarModalLabel" aria-hidden="true">
                    <div class="modal-dialog modal-lg" role="document">
                      <div class="modal-content">
                        <div class="modal-header">
                          <h5 class="modal-title" id="gambarModalLabel"><?= $data['nama_kuliner'] ?></h5>
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
                <td><i class="far fa-eye"></i> <?= $data['pembaca'] ?></td>
                <td class="text-center">
                  <button type="button" class="btn btn-warning btn-sm" data-toggle="modal" data-target="#ubah<?= $data['id_kuliner'] ?>">
                    <i class="bi bi-pencil-square"></i> Ubah
                  </button>
                  <div class="modal fade" id="ubah<?= $data['id_kuliner'] ?>" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                    <div class="modal-dialog">
                      <div class="modal-content">
                        <div class="modal-header border-bottom-0 shadow">
                          <h5 class="modal-title" id="exampleModalLabel">Ubah <?= $data['nama_kuliner'] ?></h5>
                          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                          </button>
                        </div>
                        <form action="" method="post" enctype="multipart/form-data">
                          <input type="hidden" name="id_kuliner" value="<?= $data['id_kuliner'] ?>">
                          <input type="hidden" name="image_kulinerOld" value="<?= $data['image_kuliner'] ?>">
                          <input type="hidden" name="nama_kulinerOld" value="<?= $data['nama_kuliner'] ?>">
                          <div class="modal-body">
                            <div class="form-group">
                              <label for="id_jenis_kuliner">Jenis Kuliner</label>
                              <select name="id_jenis_kuliner" class="form-control" id="id_jenis_kuliner" required>
                                <option value="" selected>Pilih Menu</option>
                                <?php $id_jenis_kuliner = $data['id_jenis_kuliner'];
                                foreach ($view_jenis_kuliner as $data_jk) {
                                  $selected = ($data_jk['id_jenis_kuliner'] == $id_jenis_kuliner) ? 'selected' : ''; ?>
                                  <option value="<?= $data_jk['id_jenis_kuliner'] ?>" <?= $selected ?>><?= $data_jk['jenis_kuliner'] ?></option>
                                <?php } ?>
                              </select>
                            </div>
                            <div class="custom-file">
                              <input name="image_kuliner" type="file" class="custom-file-input" id="customFile">
                              <label class="custom-file-label" for="customFile">Pilih Gambar</label>
                            </div>
                            <div class="form-group">
                              <label for="nama_kuliner">Nama Kuliner</label>
                              <input type="text" name="nama_kuliner" value="<?= $data['nama_kuliner'] ?>" class="form-control" id="nama_kuliner" required>
                            </div>
                            <div class="form-group">
                              <label for="edit-deskripsi<?= $data['id_kuliner'] ?>">Deskripsi</label>
                              <textarea name="deskripsi" class="form-control" id="edit-deskripsi<?= $data['id_kuliner'] ?>" rows="3"><?= $data['deskripsi'] ?></textarea>
                              <script>
                                CKEDITOR.replace('edit-deskripsi<?= $data['id_kuliner'] ?>');
                              </script>
                            </div>
                          </div>
                          <div class="modal-footer justify-content-center border-top-0">
                            <button type="button" class="btn btn-secondary btn-sm" data-dismiss="modal">Batal</button>
                            <button type="submit" name="edit_kuliner" class="btn btn-warning btn-sm">Ubah</button>
                          </div>
                        </form>
                      </div>
                    </div>
                  </div>
                  <button type="button" class="btn btn-danger btn-sm" data-toggle="modal" data-target="#hapus<?= $data['id_kuliner'] ?>">
                    <i class="bi bi-trash3"></i> Hapus
                  </button>
                  <div class="modal fade" id="hapus<?= $data['id_kuliner'] ?>" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                    <div class="modal-dialog">
                      <div class="modal-content">
                        <div class="modal-header border-bottom-0 shadow">
                          <h5 class="modal-title" id="exampleModalLabel">Hapus <?= $data['nama_kuliner'] ?></h5>
                          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                          </button>
                        </div>
                        <form action="" method="post">
                          <input type="hidden" name="id_kuliner" value="<?= $data['id_kuliner'] ?>">
                          <input type="hidden" name="image_kuliner" value="<?= $data['image_kuliner'] ?>">
                          <input type="hidden" name="nama_kuliner" value="<?= $data['nama_kuliner'] ?>">
                          <div class="modal-body">
                            <p>Jika anda yakin ingin menghapus data ini, klik Hapus!</p>
                          </div>
                          <div class="modal-footer justify-content-center border-top-0">
                            <button type="button" class="btn btn-secondary btn-sm" data-dismiss="modal">Batal</button>
                            <button type="submit" name="delete_kuliner" class="btn btn-danger btn-sm">hapus</button>
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
          <h5 class="modal-title" id="tambahLabel">Tambah Kuliner</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <form action="" method="post" enctype="multipart/form-data">
          <input type="hidden" name="author" value="<?= $name ?>">
          <div class="modal-body">
            <div class="form-group">
              <label for="id_jenis_kuliner">Jenis Kuliner</label>
              <select name="id_jenis_kuliner" class="form-control" id="id_jenis_kuliner" required>
                <option value="" selected>Pilih Jenis Kuliner</option>
                <?php foreach ($view_jenis_kuliner as $data_jk) { ?>
                  <option value="<?= $data_jk['id_jenis_kuliner'] ?>"><?= $data_jk['jenis_kuliner'] ?></option>
                <?php } ?>
              </select>
            </div>
            <div class="custom-file">
              <input name="image_kuliner" type="file" class="custom-file-input" id="customFile" required>
              <label class="custom-file-label" for="customFile">Pilih Gambar</label>
            </div>
            <div class="form-group">
              <label for="nama_kuliner">Nama Kuliner</label>
              <input type="text" name="nama_kuliner" class="form-control" id="nama_kuliner" required>
            </div>
            <div class="form-group">
              <label for="deskripsi">Deskripsi</label>
              <textarea name="deskripsi" class="form-control" id="deskripsi" rows="3"></textarea>
            </div>
          </div>
          <div class="modal-footer justify-content-center border-top-0">
            <button type="button" class="btn btn-secondary btn-sm" data-dismiss="modal">Batal</button>
            <button type="submit" name="add_kuliner" class="btn btn-primary btn-sm">Tambah</button>
          </div>
        </form>
      </div>
    </div>
  </div>

</div>
<!-- /.container-fluid -->

<?php require_once("../templates/views_bottom.php") ?>