<?php require_once("../controller/dashboard.php");
$_SESSION["project_wisata_kuliner_khas_bajawa"]["name_page"] = "";
require_once("../templates/views_top.php"); ?>

<!-- Begin Page Content -->
<div class="container-fluid">

  <!-- Page Heading -->
  <div class="d-sm-flex align-items-center justify-content-between mb-4">
    <h1 class="h3 mb-0 text-gray-800">Dashboard</h1>
  </div>

  <!-- Content Row -->
  <div class="row">

    <div class="col-xl-3 col-md-6 mb-4">
      <div class="card border-left-primary shadow h-100 py-2">
        <div class="card-body">
          <div class="row no-gutters align-items-center">
            <div class="col mr-2">
              <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">
                Wisata Kuliner</div>
              <div class="h5 mb-0 font-weight-bold text-gray-800"><?= mysqli_num_rows($count_kuliner); ?></div>
            </div>
            <div class="col-auto">
              <i class="fas fa-utensils fa-2x text-gray-300"></i>
            </div>
          </div>
        </div>
      </div>
    </div>

    <div class="col-xl-3 col-md-6 mb-4">
      <div class="card border-left-success shadow h-100 py-2">
        <div class="card-body">
          <div class="row no-gutters align-items-center">
            <div class="col mr-2">
              <div class="text-xs font-weight-bold text-success text-uppercase mb-1">
                Tempat Wisata</div>
              <div class="h5 mb-0 font-weight-bold text-gray-800"><?= mysqli_num_rows($count_tempat_wisata); ?></div>
            </div>
            <div class="col-auto">
              <i class="fas fa-torii-gate fa-2x text-gray-300"></i>
            </div>
          </div>
        </div>
      </div>
    </div>

    <div class="col-xl-3 col-md-6 mb-4">
      <div class="card border-left-info shadow h-100 py-2">
        <div class="card-body">
          <div class="row no-gutters align-items-center">
            <div class="col mr-2">
              <div class="text-xs font-weight-bold text-info text-uppercase mb-1">
                Video</div>
              <div class="h5 mb-0 font-weight-bold text-gray-800"><?= mysqli_num_rows($count_video); ?></div>
            </div>
            <div class="col-auto">
              <i class="fas fa-torii-gate fa-2x text-gray-300"></i>
            </div>
          </div>
        </div>
      </div>
    </div>

    <div class="col-xl-3 col-md-6 mb-4">
      <div class="card border-left-warning shadow h-100 py-2">
        <div class="card-body">
          <div class="row no-gutters align-items-center">
            <div class="col mr-2">
              <div class="text-xs font-weight-bold text-warning text-uppercase mb-1">
                Kontak</div>
              <div class="h5 mb-0 font-weight-bold text-gray-800"><?= mysqli_num_rows($count_kontak); ?></div>
            </div>
            <div class="col-auto">
              <i class="fas fa-comment-dots fa-2x text-gray-300"></i>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>

  <!-- Content Row -->

  <div class="row">

    <!-- Area Chart -->
    <div class="col-xl-12 col-lg-12">
      <div class="card shadow mb-4">
        <!-- Card Header - Dropdown -->
        <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
          <h6 class="m-0 font-weight-bold text-primary">Grafik</h6>
        </div>
        <!-- Card Body -->
        <div class="card-body">
          <div class="chart-area">
            <?php
            $currentYear = date("Y");
            $sql = "SELECT 'Wisata Kuliner' as category, MONTH(created_at) as month, SUM(pembaca) as total 
              FROM kuliner 
              WHERE YEAR(created_at) = $currentYear 
              AND MONTH(created_at) BETWEEN 1 AND 12 
              GROUP BY month

              UNION ALL

              SELECT 'Tempat Wisata' as category, MONTH(created_at) as month, SUM(pembaca) as total 
              FROM tempat_wisata 
              WHERE YEAR(created_at) = $currentYear 
              AND MONTH(created_at) BETWEEN 1 AND 12 
              GROUP BY month
            ";

            $result = $conn->query($sql);
            $dataGrafik = [];
            if ($result === false) {
              // echo "Error: " . $conn->error;
            } else {
              if ($result->num_rows > 0) {
                while ($row = $result->fetch_assoc()) {
                  $namaBulan = DateTime::createFromFormat('!m', $row['month'])->format('F');
                  $dataGrafik[] = [
                    'category' => $row['category'],
                    'total' => $row['total'],
                    'month' => $namaBulan,
                  ];
                }
              }
            }
            ?>
            <canvas id="myAreaChart"></canvas>
            <script>
              var dataGrafik = <?php echo json_encode($dataGrafik); ?>;
            </script>
          </div>
        </div>

      </div>
    </div>

  </div>

</div>
<!-- /.container-fluid -->

<?php require_once("../templates/views_bottom.php") ?>