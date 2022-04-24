<?php

    include '../navbar/navbar.php';

?>
<html>
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0">Pencarian Asset</h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">Pencarian Asset</li>
            </ol>
          </div><!-- /.col -->
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
      <section class="content">
          <div class="container-fluid">
              <h3 class="text-center display-5"><b>Search</b></h3>
              <div class="row">
                  <div class="col-md-8 offset-md-2">
                      <form action="dataTersedia.php">
                          <div class="input-group">
                              <input type="search" class="form-control form-control-lg" placeholder="Masukkan Kata Kunci">
                              <div class="input-group-append">
                                  <button type="submit" class="btn btn-lg btn-default">
                                      <i class="fa fa-search"></i>
                                  </button>
                              </div>
                          </div>
                      </form>
                  </div>
              </div>
          </div>
      </section>
      <div class="mt-3">
        <h3 align="center" ><b>Asset Tidak Ditemukan</b></h3>
      </div>
</html>