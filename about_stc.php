<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>Assets Guide</title>
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

    <header class="main-header">

      <!-- Logo -->
      <a href="index.php" class="logo logo-bg">
        <!-- logo for regular state and mobile devices -->
        <img src="img/logo.png" width="70px" height="30px">
      </a>
      <!-- Header Navbar: style can be found in header.less -->
      <nav class="navbar navbar-static-top">
  <!-- Navbar Right Menu -->
  <div class="navbar-custom-menu">
    <ul class="nav navbar-nav">
      <!-- <li class="sign">
        <a href="index.php">Go Back</a>
      </li> -->
    </ul>
  </div>
</nav>
    </header>

    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper" style="margin-left: 0px;">
  <section id="candidates" class="content-header">
    <div class="container">
      <div class="row">
        <?php //include('body/sidebar.php')?>
        <div class="col-md-9 bg-white padding-2">

          <h2 style="color:#e23c89;">About STC: <h3 style="color:black;">at stc we are recognized for creating and bringing greater dimension and richness to people’s personal and professional lives.</h3></h2>
        </div>
      </div>
    </div>
  </section>
</div>

<footer class="main-footer" style="padding:4px;">

<div class="footer-top" style="color:#fff; display:flex;justify-content:space-between;border-bottom:2px solid white;padding:3px;align-items: center;">
      <div class="col-md-3" style="padding:10px;">
          <a href="about_us.php" style="padding:10px;color:white;">About US</a>
      </div>
      <div class="col-md-3" style="padding:10px;">
           
          <a href="about_stc.php" style="padding:10px;color:white;">About STC</a>
      </div>
      <div class="col-md-3" style="padding:10px;">
           
          <a href="" style="padding:10px;color:white;">Support</a>
      </div>
      <div class="col-md-3" style="padding:10px;">
           
          <a href="" style="padding:10px;color:white;">Contact US</a>
      </div>
       
  </div>
  <div class="footer-top" style="color:#fff; display:flex;justify-content:space-between;padding:3px;align-items: center;">
    <div style="padding:5px;"> 
        <p>  All Rights Reserved  © 2024  </p>
    </div>
    <div style="padding:5px;"> 
        <ul class="list-unstyled d-flex  justify-content-between" style="width:100px;">
          <li><a target="_blank" href=""><i class="fa fa-facebook size-40"></i></a></li>
          <li><a target="_blank" href=" "><i class="fa fa-xing size-40"></i></a></li>
          <li><a target="_blank" href=" "><i class="fa fa-linkedin size-40"></i></a></li>
          <li><a target="_blank" href=" "><i class="fa fa-youtube-play size-40"></i></a></li>
        </ul>
    </div>
  </div>
 
</footer>
    <div class="control-sidebar-bg"></div>

  </div>
  <!-- ./wrapper -->

  <!-- jQuery 3 -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <!-- Bootstrap 3.3.7 -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <!-- AdminLTE App -->
  <script src="js/adminlte.min.js"></script>


  <!-- <script type="text/javascript">

function validate()
      {
		 /// test of the password
		 if ((/^([0-9]+[a-zA-Z]+|[a-zA-Z]+[0-9]+)[0-9a-zA-Z]*$/.test(document.myForm.password.value)==false)||(document.myForm.password.value.length < 8)) {
          alert( "password shall be with letters and numeric and minimum with lenght 8" );
            document.myForm.password.focus() ;
            return false;
			}
			/// test of password and confirmation
			
				if( document.myForm.password.value != document.myForm.cpassword.value )
         {
            alert( "password and confirmation don't match" );
            document.myForm.cpassword.focus() ;
            return false;
         }
					 
         return( true );
      }
	  </script>
<script>
  $("#registerCandidates").on("submit", function(e) {
    e.preventDefault();
    if( $('#password').val() != $('#cpassword').val() ) {
      $('#passwordError').show();
    } else {
      $(this).unbind('submit').submit();
    }
  });
</script> -->
</body>

</html>