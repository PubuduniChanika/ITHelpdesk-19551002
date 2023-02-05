<!DOCTYPE html>
<html lang="en">
<head>
  <!-- Theme Made By www.w3schools.com - No Copyright -->
  <title>IT helpdesk</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <style>
  body {
    font: 20px Montserrat, sans-serif;
    line-height: 1.8;
    color: blue;
  }
  p {font-size: 16px;}
  .margin {margin-bottom: 100px;}
  .bg-1 { 
    background: linear-gradient(to top right, #08aeea 0%, #b721ff 100%);
    background-image: linear-gradient(to right top, rgb(8, 174, 234) 0%, rgb(183, 33, 255) 100%);
    /*background-color: #ADD5ED;  Green */
    color: #000000;
  }
  .bg-2 { 
    background-color: #474e5d; /* Dark Blue */
    color: #ffffff;
  }
  .bg-3 { 
    background-color: #000000; /* White */
    color: #555555;
  }
  .bg-4 { 
    background-color: #000000; /* Black Gray */
    color: #fff;
  }
  .container-fluid {
    padding-top: 70px;
    padding-bottom: 70px;
  }
  .navbar {
    padding-top: 15px;
    padding-bottom: 15px;
    border: 0;
    border-radius: 0;
    margin-bottom: 0;
    font-size: 16px;
    letter-spacing: 5px;
    background-color:#000000;
    color:#ffffff;
    
  }
  .navbar-default .navbar-nav>li>a {
    color: #FFFFFF;
}
  .navbar-nav  li a:hover {
    color: #1abc9c !important;
  }
  </style>
</head>
<body>

<!-- Navbar -->
<nav class="navbar navbar-default">
  <div class="container">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <!--<a class="navbar-brand" href="#">Me</a>-->
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
    
    
      <ul class="nav navbar-nav navbar-right">
       
        <li><a href="report.php">Report Trouble</a></li>
        <li><a href="checkStatus.php">Check Status</a></li>
        <li><a href="login.php">Login</a></li>
        
      </ul>
    </div>
  </div>
</nav>

<!-- First Container -->
<div class="container-fluid bg-1 text-center">
  <h2 class="margin">MINISTRY OF JUSTICE</h2>
  <img src="Bg.jpg" class="img-responsive img-circle margin" style="display:inline" alt="Ministry of Justice" width="350" height="350">
  <h2>IT HELPDESK</h2>
</div>


<!-- Footer -->
<footer class="container-fluid bg-4 text-center">
  <p>&copy;MOJIT</a></p> 
</footer>

</body>
</html>
