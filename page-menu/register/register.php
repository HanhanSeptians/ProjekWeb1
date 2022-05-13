<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Log in</title>
    <?php
      include '../navbar/header.php'
    ?> 
</head>
  <body>
    <div class="bg-light min-vh-100 d-flex flex-row align-items-center">
      <div class="container">
        <div class="row justify-content-center">
          <div class="col-md-6">
            <div class="card mb-4 mx-4">
              <div class="card-body p-4">
                <h1>Register</h1>
                <p class="text-medium-emphasis">Silahkan registrasi akun untuk masuk kedalam aplikasi</p>
                <form action="register_sc.php" method="post">
              <div class="input-group mb-3">
                <input type="text" class="form-control" placeholder="Nama" name="nama">
                  <div class="input-group-append">
                    <div class="input-group-text">
                      <span class="fa-solid fa-font">
                    </div>
                  </div>
              </div>
              <!-- <p>Jenis Kelamin</p>
              <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="exampleRadios" id="exampleRadios2" value="option2">
                <label class="form-check-label" for="exampleRadios2">
                  Laki-Laki
                </label>
              </div>
              <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="exampleRadios" id="exampleRadios2" value="option2">
                <label class="form-check-label" for="exampleRadios2">
                  Perempuan
                </label>
              </div> -->
              <div class="input-group mb-3">
                <input type="text" class="form-control" placeholder="Username" name="username">
                  <div class="input-group-append">
                    <div class="input-group-text">
                      <span class="fas fa-envelope"></span>
                    </div>
                  </div>
              </div>
              <div class="input-group mb-3">
                <input type="password" class="form-control" placeholder="Password" name="password">
                  <div class="input-group-append">
                    <div class="input-group-text">
                      <span class="fas fa-lock"></span>
                    </div>
                  </div>
              </div>
              <div>
                  <button type="submit" class="btn btn-primary btn-block"> Sign In</button>
                </a>
              </div>
              </div>
            </form>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- CoreUI and necessary plugins-->
    <script src="node_modules/@coreui/coreui/dist/js/coreui.bundle.min.js"></script>
    <script src="node_modules/simplebar/dist/simplebar.min.js"></script>
    <script> 
    </script>
  </body>
</html>w