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
  <body class="hold-transition login-page">
    <div class="login-box">
      <div class="login-logo">
          <img src="../../dist/img/pertaminafix.png" width="350" height="250">
      </div>
      <div class="login-box">
        <div class="login-logo">
          <a href="#"><b>PT.Pertamina Lubricants</a>
        </div>
        <div class="login-box">
          <div class="login-logo">
            <a href="#"><b>Inventaris Aset</b></a>
          </div>
          <div class="card">
            <div class="card-body login-card-body">
              <p class="login-box-msg text-danger"> Username atau Password Salah !!! </p>
              <p class="login-box-msg">Silahkan Login terlebih dahulu</p>
              <form action="login_sc.php" method="post">
                <div class="input-group mb-3">
                  <input type="email" class="form-control" placeholder="Email" name="email">
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
                  <a href = "../dashboard/dashboard.php"> 
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
  </body>
</html>