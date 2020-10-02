    
    <?php
require_once"class/goc.php";
$dt=new xuly;
 $loi = array();
  $loi_str = "";
 if(isset($_POST['email'])){
  
        $thanhcong = $dt->dangky($loi);
        if($thanhcong==true)
        {
        echo "<script>document.location='index.php?p=dangkytc';</script>";
        exit();
        }

      else foreach($loi as $s)  $loi_str =  $s . "<br/>"; 
  } 

 ?>
    <div class="box sing-form">
                <div class="row">
                    <div class="col-lg-offset-1 col-lg-5 col-md-offset-1 col-md-5 col-sm-12 col-xs-12 ">
                        <!-- form -->
                        <div class="box-body">
                            <div class="row">
                                <div class="col-lg-12 col-md-12 col-sm-6 col-xs-12 mb20">
                                    <h3 class="mb10">Create Your Account</h3>
                                    <p>Vui lòng điền đầy đủ thông tin vào trường mẫu</p>
                                </div>
                                <?php if ($loi_str!="") {   ?>
        <div class="alert alert-danger">  <?=$loi_str?> </div>
    <?php } ?>
                                <form action="" method="post">
                                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                        <div class="form-group">
                                            <label class="control-label sr-only" for="name">

                                            </label>
                                            <input id="name" name="name" type="text" class="form-control" placeholder="Họ và tên" oninvalid="this.setCustomValidity('Nhập họ tên vô bạn ơi')" oninput="this.setCustomValidity('')"  required>
                                        </div>
                                    </div>
                                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                        <div class="form-group">
                                            <label class="control-label sr-only" for="email"></label>
                                            <input id="email" name="email" type="email" class="form-control" placeholder=" Email" oninvalid="this.setCustomValidity('Bạn nhập email không đúng')" oninput="this.setCustomValidity('')"  required>
                                        </div>
                                    </div>
                                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                        <div class="form-group">
                                            <label class="control-label sr-only" for="password"></label>
                                            <input id="password" name="password" type="password" class="form-control" placeholder="Mật khẩu" pattern=".{6,30}" oninvalid="this.setCustomValidity('Mật khẩu từ 6 đến 30 ký tự nhé')" oninput="this.setCustomValidity('')"  required>
                                        </div>
                                    </div>
                                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                        <div class="form-group">
                                            <label class="control-label  sr-only" for="password"></label>
                                            <input id="password" name="password1" type="password" class="form-control" placeholder="Nhâp lại mật khẩu " pattern=".{6,30}" oninvalid="this.setCustomValidity('Mật khẩu từ 6 đến 30 ký tự nhé')" oninput="this.setCustomValidity('')" required>
                                        </div>
                                    </div>
                                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                        <div class="form-group">
                                            <label class="control-label  sr-only" for="text"></label>
                                            <input id="diachi" name="diachi" type="text" class="form-control" placeholder="Địa chỉ "oninvalid="this.setCustomValidity('Chưa nhập địa chỉ')" oninput="this.setCustomValidity('')"  required>
                                        </div>
                                    </div>
                                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                        <div class="form-group">
                                            <label class="control-label  sr-only" for="text"></label>
                                            <input id="number" name="number" type="text" class="form-control" placeholder="Điện thoại " pattern="\d{10,10}" oninvalid="this.setCustomValidity('Nhập số di động 10 ký tự nhé')" oninput="this.setCustomValidity('')" required>
                                        </div>
                                    </div>
                                     <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                        <div class="form-group">
                                            <label class="control-label  sr-only" for="radio"></label>
                                             <input id="gt" name="gt" type="radio" class="form-inline" value="0"  required/>Nữ
                                            <input id="gt" name="gt" type="radio" class="form-inline" value="1"  required/>Nam
                                        </div>
                                    </div>
                                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 ">
                                        <button class="btn btn-primary btn-block mb10">Đăng Ký</button>
                                        <div>
                                            <p>Have an Acount? <a href="#">Login</a></p>
                                        </div>
                                    </div>
                                </form>

                            </div>
                            <!-- /.form -->
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