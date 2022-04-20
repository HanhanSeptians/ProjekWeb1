<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Pertamina Lubricants</title>
    <?php
        include 'header.php'
    ?>
</head>
<body class="hold-transition sidebar-mini layout-fixed">
<div class="wrapper">
  <!-- Navbar -->
  <nav class="main-header navbar navbar-expand navbar-white navbar-light">
    <!-- Left navbar links -->
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link" data-widget="pushmenu" href="#" role="button"><i class="fas fa-bars"></i></a>
      </li>
    </ul>
    <!-- Right navbar links -->
    <ul class="navbar-nav ml-auto">
      <!-- Notifications Dropdown Menu -->
      <li class="nav-item dropdown">
        <a class="nav-link" data-toggle="dropdown" href="#">
          <i class="far fa-bell"></i>
          <span class="badge badge-warning navbar-badge">15</span>
        </a>
        <div class="dropdown-menu dropdown-menu-lg dropdown-menu-right">
          <span class="dropdown-item dropdown-header">15 Notifications</span>
          <div class="dropdown-divider"></div>
          <a href="#" class="dropdown-item">
            <i class="fas fa-envelope mr-2"></i> 4 new messages
            <span class="float-right text-muted text-sm">3 mins</span>
          </a>
          <div class="dropdown-divider"></div>
          <a href="#" class="dropdown-item">
            <i class="fas fa-users mr-2"></i> 8 friend requests
            <span class="float-right text-muted text-sm">12 hours</span>
          </a>
          <div class="dropdown-divider"></div>
          <a href="#" class="dropdown-item">
            <i class="fas fa-file mr-2"></i> 3 new reports
            <span class="float-right text-muted text-sm">2 days</span>
          </a>
          <div class="dropdown-divider"></div>
          <a href="#" class="dropdown-item dropdown-footer">See All Notifications</a>
        </div>
      </li>
      <li class="nav-item">
        <a class="nav-link" data-widget="fullscreen" href="#" role="button">
          <i class="fas fa-expand-arrows-alt"></i>
        </a>
      </li>
    </ul>
  </nav>
  <!-- /.navbar -->

  <!-- Main Sidebar Container -->
  <aside class="main-sidebar control-sidebar-dark elevation-4" style="background-color: #30384f">
    <!-- Brand Logo -->
    <a href="../dashboard/dashboard.php" >
    <span>
      <img src="../../dist/img/logo.jpg" class="user-panel" style="opacity: .8">
    </span>  
    </a>

    <!-- Sidebar -->
    <div class="sidebar">
      <!-- Sidebar user panel (optional) -->
      <div class="user-panel mt-3 pb-2 mb-2 d-flex">
        <div class="info">
          <a href="#" class="d-block ml-3">NAVIGATION</a>
        </div>
      </div>
      <!-- Sidebar Menu -->
      <nav class="mt-2">
        <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
          <li class="nav-item menu-open text-white">
            <a href="../dashboard/dashboard.php" class="nav-link active">
              <i class="nav-icon fas fa-tachometer-alt text-white"></i>
              <p class="text-white">
                Dashboard
              </p>
            </a>
          </li>
          <li class="nav-item ">
            <a href="#" class="nav-link">
              <i class="nav-icon fa-solid fa-building text-white"></i>
              <p class="text-white">
                List Kantor
                <i class="fas fa-angle-left right text-white"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="../list-kantor/bandung.php" class="nav-link">
                  <i class="nav-icon fa-solid fa-location-dot ml-4 text-white"></i>
                  <p class="text-white">Bandung</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="../list-kantor/jakarta.php" class="nav-link">
                  <i class="nav-icon fa-solid fa-location-dot ml-4 text-white"></i>
                  <p class="text-white">Jakarta</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="../list-kantor/surabaya.php" class="nav-link">
                  <i class="nav-icon fa-solid fa-location-dot ml-4 text-white"></i>
                  <p class="text-white">Surabaya</p>
                </a>
              </li>
            </ul>
          </li>
          <li class="nav-item">
            <a href="../inventaris/inventaris.php" class="nav-link">
              <i class="nav-icon fa-solid fa-coins text-white"></i>
              <p class="text-white">
                Inventaris
              </p>
            </a>
          </li>
          <li class="nav-item">
            <a href="../input-data/inputData.php" class="nav-link">
              <i class="nav-icon fa-solid fa-square-pen text-white"></i>
              <p class="text-white">
                Input Data Inventaris
              </p>
            </a>
          </li>
          <li class="nav-item">
            <a href="../delete-data/deleteData.php" class="nav-link">
              <i class="nav-icon fa-solid fa-trash-can text-white"></i>
              <p class="text-white">
                Hapus Data Inventaris
              </p>
            </a>
          </li>
          <li class="nav-item">
            <a href="../cari-data/cariData.php" class="nav-link">
              <i class="nav-icon fa-solid fa-magnifying-glass text-white"></i>
              <p class="text-white">
                Pencarian Inventaris
              </p>
            </a>
          </li>
          <li class="nav-item">
            <a href="../cetak-pdf/cetakPDF.php" class="nav-link">
              <i class="nav-icon fa-solid fa-print text-white"></i>
              <p class="text-white">
                Cetak Report PDF
              </p>
            </a>
          </li>
          <li class="nav-item">
            <a href="../logout/logout.php" class="nav-link">
              <i class="nav-icon fa-solid fa-right-from-bracket text-white"></i>
              <p class="text-white">
                Logout
              </p>
            </a>
          </li>
        </ul>
      </nav>
      <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
  </aside>

</body>
</html>
