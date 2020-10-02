<?php 
$ten=isset($_SESSION['login_hoten'])?$_SESSION['login_hoten']:"";
        if(isset($_SESSION['login_id'])!=null)
        {
                $kq="Đăng Xuất";
                 $href="dangxuat.php";
            }
            else
            {
                $kq="Đăng Nhập";
                $href="?p=dangnhap";

            }
         ?>
        
 <div class="container">
            <div class="row">
                <!-- logo -->
                <div class="col-lg-3 col-md-3 col-sm-3 col-xs-8">
                    <div class="logo">
                        <a href="index.php"><img src="./images/logo.png" alt=""> </a>
                    </div>
                </div>
                <!-- /.logo -->
                <!-- search -->
                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                    <div class="search-bg">
                        <form action="index.php" method="post" accept-charset="utf-8" >
                        <input type="text" name="tk" class="form-control" placeholder="Search Here" >
                        <button type="Submit" name="gui"><i class="fa fa-search"></i></button>
                           </form>
                    </div>
                </div>
                <!-- /.search -->
                <!-- account -->
                <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
                    <div class="account-section">
                        <ul>

                            <li><a href="<?=$href?>" class="title hidden-xs"><?=$ten?> | <?=$kq?></a></li>
                             <li class="hidden-xs">|</li>
                            <li><a href="?p=dangky" class="title hidden-xs">Đăng Ký</a></li>
                            <li><a href="?p=giohang" class="title"><i class="fa fa-shopping-cart"></i>   <sup class="cart-quantity"></sup></a>
                            </li>
                           <!-- <li><a href="dangxuat.php" class="title hidden-xs">Đăng Xuất</a></li>-->

                        </ul>

                    </div>
                    <!-- /.account -->
                </div>
                <!-- search -->
            </div>