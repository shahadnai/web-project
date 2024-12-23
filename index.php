<?php
  session_start();
  if(isset($_SESSION['username'])) {
    header("location: public/index.php");
    exit;
  };
  $error = '';
  if($_SERVER['REQUEST_METHOD'] == 'POST') {
    include 'connect_db/connect_db_2.php';
    $username = $_POST['username'];
    $password = $_POST['password'];
    $stmt = $con_db->query("SELECT * FROM admin WHERE username = '$username' OR email = '$username'");
    if($stmt->num_rows>0) {
      $data=array();
      while($row = $stmt->fetch_assoc()){
        $data[]=$row;
      };
    if(password_verify($password, $data[0]['password'])) {
      $_SESSION['id'] = $data[0]['id'];
      $_SESSION['username'] = $data[0]['first_name'];
      $_SESSION['role'] = $data[0]['role'];
      $_SESSION['photo'] = $data[0]['u_photo'];
      $date = date('Y:m:d H:m:s');
      $con_db->query("UPDATE `user_access` SET last_login_date='$date' WHERE emp_id='$_SESSION[id]'");
      $con_db->query("UPDATE `admin` SET active=1 WHERE id='$_SESSION[id]'");
      $con_db->close();
      header("location: index.php");
        exit;
    }else {
        $error = "Password is worng";
        $con_db->close();
    };
    }else {
      $con_db->close();
      $error = "Username is not found!";
    };
};
?>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>Assets Tracking System </title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <!-- Bootstrap 3.3.7 -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="css/AdminLTE.min.css">
  <link rel="stylesheet" href="css/_all-skins.min.css">
  <!-- Custom -->
  <link rel="stylesheet" href="css/custom.css">

  <!-- Google Font -->
  <link rel="stylesheet"
        href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
</head>
<body class="hold-transition skin-green sidebar-mini">
<div class="wrapper">

<header class="main-header" style="display: flex; justify-content: center;">

      <!-- Logo -->
      <a href="index.php" class="logo logo-bg">
        <!-- logo for regular state and mobile devices -->
        <img src="img/logo.png" width="70px" height="30px">
      </a>

  
      <!-- Header Navbar: style can be found in header.less -->
      
    </header>
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper" style="margin-left: 0px;">

    <section class="content-header" style="padding: 20px 0 80px;">
      <div class="container">
            <div class="row latest-job margin-top-40 margin-bottom-20">
            <div class="col-md-12">
              <h1 class="text-left " id="welcome"><b style="color:#4f008c;">Welcome</b></h1>
              <h2 class="text-left "><b style="color:#4f008c;"> IT Assets Management </b></h2></br>
            </div>

            <div class="col-md-6  ">

              <div class=" form-login ">
                <form method="POST" action="index.php">

                  <div class="form-group has-feedback">
                    <input type="text" class="form-control" id="username" name="username" placeholder="Username Or Email">
                    <span class="glyphicon glyphicon-user form-control-feedback"></span>
                  </div>

                  <div class="form-group has-feedback">
                      <input type="password" class="form-control" id="username" name="password" placeholder="Password">
                      <span class="glyphicon glyphicon-lock form-control-feedback"></span>
                  </div>
                  
                  <h4 style="color: red; margin: 15px 0"><?php echo $error?></h4>

                  <div class="row">
                    <!-- /.col -->
                    <div class="col-xs-12">
                      <button type="submit" style="background:#ff4a8d; color:white;" class="btn btn-login btn-block btn-flat">Login</button>
                    </div>
                    <!-- /.col -->
                  </div>
                  
                </form>
              </div>
            </div>

        <div class="col-md-4  ">
              <div class="form-group has-feedback">
                <img style="float:left;margin-left: -3em; " src="img/login-banner.jpg" height="300"
                  width="500px">
              </div>
        </div>
      </div>

      </div>
    </section>
  </div>
  <!-- /.content-wrapper -->
 <?php include("./public/body/footer.php") ?>
</div>


<!-- jQuery 3 -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!-- Bootstrap 3.3.7 -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
<!-- AdminLTE App -->
<script src="js/adminlte.min.js"></script>
</body>
</html>