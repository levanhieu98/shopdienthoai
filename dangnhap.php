<?php 
   //echo $idKH=isset($_SESSION['login_id'])?$_SESSION['login_id']:"";
    //$_SESSION['DonHang']['idkh']=$idKH;
?>
   <div class="box">
                <div class="row">
                    <div class="col-lg-offset-1 col-lg-5 col-md-offset-1 col-md-5 col-sm-12 col-xs-12 ">
                        <div class="box-body">
                            <div class="row">
                                <div class="col-lg-12 col-md-12 col-sm-6 col-xs-12 mb20">
                                    <h3 class="mb10">Login</h3>
                                </div>
                                <!-- form -->
                                <form action="" method="post" enctype="multipart/form-data" accept-charset="utf-8">
                                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                        <div class="form-group">
                                            <label class="control-label sr-only" for="email"></label>
                                            <div class="login-input">
                                                 <?php if(isset($loi['email'])) echo $loi['email']?>
                                                <input id="email" name="email" type="text" class="form-control" placeholder="Enter your email id"  required>
                                                <div class="login-icon"><i class="fa fa-user"></i></div>
                                                
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                        <div class="form-group">
                                            <label class="control-label sr-only"></label>
                                            <div class="login-input">
                                                <input name="password" type="password" class="form-control" placeholder="******"   required>
                                                <div class="login-icon"><i class="fa fa-lock"></i></div>
                                                <div class="eye-icon"><i class="fa fa-eye"></i></div>
                                                 
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 mb20 ">
                                        <button type="submit" class="btn btn-primary btn-block mb10" >Đăng Nhập</button>
                                        <div>
                                            <p>Có một tài khoản? <a href="#">Đăng nhập</a></p>
                                        </div>
                                    </div>
                                </form>

                                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 ">
                                    <h4 class="mb20">Đăng nhập với</h4>
                                    <div class="social-media">
                                        <a href="#" class="btn-social-rectangle btn-facebook"><i class="fa fa-facebook"></i><span class="social-text">Facebook</span></a>
                                        <a href="#" class="btn-social-rectangle btn-twitter"><i class="fa fa-twitter"></i><span class="social-text">Twitter</span> </a>
                                        <a href="#" class="btn-social-rectangle btn-googleplus"><i class="fa fa-google-plus"></i><span class="social-text">Google Plus</span></a>
                                    </div>
                                </div>
                                    <!-- /.form -->
                            </div>
                        </div>
                    </div>
                       <!-- features -->
                    <div class="col-lg-5 col-md-5 col-sm-12 col-xs-12 ">
                        <div class="box-body">
                            <div class="feature-left">
                                <div class="feature-icon">
                                    <img src="./images/feature_icon_1.png" alt="">
                                </div>
                                <div class="feature-content">
                                    <h4>Điểm trung thành</h4>
                                    <p>Aenean lacinia dictum risvitae pulvinar disamer seronorem ipusm dolor sit manert.</p>
                                </div>
                            </div>
                            <div class="feature-left">
                                <div class="feature-icon">
                                    <img src="./images/feature_icon_2.png" alt="">
                                </div>
                                <div class="feature-content">
                                    <h4>Thanh toán tức thì</h4>
                                    <p>Aenean lacinia dictum risvitae pulvinar disamer seronorem ipusm dolor sit manert.</p>
                                </div>
                            </div>
                            <div class="feature-left">
                                <div class="feature-icon">
                                    <img src="./images/feature_icon_3.png" alt="">
                                </div>
                                <div class="feature-content">
                                    <h4>Ưu đãi tuyệt vời</h4>
                                    <p>Aenean lacinia dictum risvitae pulvinar disamer seronorem ipusm dolor sit manert.</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- /.features -->
                </div>
            </div>