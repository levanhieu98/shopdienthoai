<?php session_start();?>
<?php 
$mk=isset($_POST['password'])?$_POST['password']:"";
    $loi = array();
    if(isset($_POST['email'])){
        require_once ('class/goc.php');
        $dt = new xuly;
        $thanhcong = $dt->login($_POST['email'],$mk, $loi);
        if($thanhcong==true){
            header("location:index.php");  
                $idKH=isset($_SESSION['login_id'])?$_SESSION['login_id']:"";
                $_SESSION['DonHang']['idkh']=$idKH;
            exit();
        }
    } 
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="create ecommerce website template for your online store, responsive mobile templates">
    <meta name="keywords" content="ecommerce website templates, online store,">
    <title> VHMobile Store </title>
    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <!-- Style CSS -->
    <link href="css/style.css" rel="stylesheet">
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Roboto+Condensed:300,300i,400,400i,700,700i" rel="stylesheet">
    <!-- owl-carousel -->
    <link href="css/owl.carousel.css" rel="stylesheet">
    <link href="css/owl.theme.default.css" rel="stylesheet">
    <!-- FontAwesome CSS -->
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <link rel="shortcut icon " href="images/icon_icons_original.png">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body>
    <!-- top-header-->
    <div class="top-header">
        <div class="container">
            <div class="row">
                <div class="col-lg-8 col-md-7 col-sm-6 hidden-xs">
                    <p class="top-text">Flexible Delivery, Fast Delivery.</p>
                </div>
                <div class="col-lg-4 col-md-5 col-sm-6 col-xs-12">
                    <ul>
                        <li>+180-123-4567</li>
                        <li>info@demo.com</li>
                        <li><a href="#">Help</a></li>
                    </ul>
                </div>
            </div>
            <!-- /.top-header-->
        </div>
    </div>
    <!-- header-section-->
    <div class="header-wrapper">  <?php include"header.php"; ?></div>
        <!-- navigation -->
        <div class="navigation"> <?php include"menu.php"; ?> </div>
        </div>

    <!-- /. header-section-->
    <!-- slider -->
    <div class="slider"><?php// include"slider.php"; ?></div>
    <!-- /.slider -->
    <!-- mobile showcase -->
    <div class="space-medium">  
         <?php //include"space.php"; ?> </div>
    <!-- /.mobile showcase -->
    <!-- latest products -->
    
    <!-- /.featured products -->
    <!-- cta -->
    <?php

   $p = isset($_GET['p'])?$_GET['p']:'';
 require_once"class/goc.php";
  $dt=new xuly;
     ?>

    <div class="container">

     <?php
            if($p=="chitiet")require("chitietSP.php");       
            else if($p=="ds_sp") require("danhsachsp.php");
            else if($p=="ds_spn")require("danhsachspmoi.php");
            else if($p=="lienhe")require("lienhe.php");
            else if($p=="dangnhap")require("dangnhap.php");
            else if($p=="dangky")require("dangky.php");
            else if($p=="dangkytc")require("dangkytc.php");
            else if($p=="404")require("404.php");
            else if($p=="thanhtoan")require("thanhtoan.php");
            else if($p=="thanhtoan2")require("thanhtoan2.php");
            else if($p=="thanhtoan3")require("thanhtoan3.php");
            else if($p=="thanhtoan4")require("thanhtoan4.php");
            else if($p=="dathang")require("dathang.php");
            else if($p=="giohang"){
                $action = isset($_GET['action'])?$_GET['action']:'';
                $idDT = isset($_GET['key'])?$_GET['key']:'';                
                $dt->giohang($action,$idDT);
                require("giohang.php");}
            else if($p=="tinmoi")require("tinmoi.php");
            else if($p=="tinhot")require("tinhot.php");
            else if($p=="gioithieu")require("gioithieu.php");
             else if($p=="tai")require("link.php");
            else if(isset($_POST['gui']))require("sanphamTK.php");
      
        else  {

    ?>
       <div class="slider"><?php include"slider.php"; ?></div>
       <div class="space-medium"><?php include"space.php";?></div>
        <?php include"sanphammoi.php"; ?>
        <?php include "sanphambanchay.php"; ?>
        <?php include"sanphamnoibat.php";?>
      <?php }?>
    </div>

    <!-- /.cta -->
    <!-- features -->
    <div class="bg-default pdt40 pdb40">
      <?php include"footer1.php" ?>
        </div>
  
    <!-- /.features -->
    <!-- footer -->
    <div class="footer"><?php include"footer.php" ?></div>
    <!-- /.footer -->
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="js/jquery.min.js" type="text/javascript"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js" type="text/javascript"></script>
    <script src="js/menumaker.js" type="text/javascript"></script>
    <script type="text/javascript" src="js/jquery.sticky.js"></script>
    <script type="text/javascript" src="js/sticky-header.js"></script>
    <script type="text/javascript" src="js/owl.carousel.min.js"></script>
    <script type="text/javascript" src="js/multiple-carousel.js"></script>
</body>

</html>