<?php 
  // require"../class/quantri.php";
  // $qt=new quantri;   
    $loi_str = "";  
    $loi = array();                                
if(isset($_POST['email'])){
        $thanhcong = $qt->Them_QT($loi);
        if($thanhcong==true)
        {
     echo "<script>document.location='?p=ds_ql';</script>";
        exit();
        }
      else foreach($loi as $s) $loi_str =$s . "<br/>"; 
  } 
  
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<style>
.form-group .form-line {border-bottom:none}
.form-group .form-control {padding:3px; border:1px solid #999}
.form-group .form-line.abc {padding-top:5px;}
</style>
<body>
<div class="row clearfix">
  <div class="col-lg-10 col-md-10 col-sm-12 col-xs-12 center-block" style="float:none">
    <div class="card">
      <div class="header">
        <h2> Thêm Quản Lý</h2>
        <ul class="header-dropdown m-r--5">
        </ul>
      </div>
      <div class="body">
  <?php if ($loi_str!="") {   ?>
        <div class="alert alert-danger">  <?=$loi_str?> </div>
    <?php } ?>
        <form class="form-horizontal " method="post" action="" >
          <div class="row clearfix">
            <div class="col-sm-3 form-control-label">
              <label for="ThuTu">HọTên</label>
            </div>
            <div class="col-sm-9">
              <div class="form-group">
                <div class="form-line">
                  <input type="text" id="hoten" name="hoten" class="form-control" placeholder= "Nhập Họ Tên" required min="1" max="1000" value="">
                </div>
              </div>
            </div>
          </div>
          <div class="row clearfix">
            <div class="col-sm-3 form-control-label">
              <label>Mật Khẩu</label>
            </div>
            <div class="col-sm-9">
              <div class="form-group">
                <div class="form-line abc">
                   <input type="password" name="matkhau" id="matkhau" class="form-control" placeholder="Nhập mật khẩu">
                </div>
              </div>
            </div>
          </div>
           <div class="row clearfix">
            <div class="col-sm-3 form-control-label">
              <label for="ThuTu">Địa Chỉ</label>
            </div>
            <div class="col-sm-9">
              <div class="form-group">
                <div class="form-line">
                  <input type="text" id="diachi" name="diachi" class="form-control" placeholder= "Nhập Địa Chỉ" required min="1" max="1000" value="">
                </div>
              </div>
            </div>
          </div>
           <div class="row clearfix">
            <div class="col-sm-3 form-control-label">
              <label for="ThuTu">Email</label>
            </div>
            <div class="col-sm-9">
              <div class="form-group">
                <div class="form-line">
                  <input type="email" id="email" name="email" class="form-control" placeholder= "Nhập Mail" required min="1" max="1000" value="">
                </div>
              </div>
            </div>
          </div>
           <div class="row clearfix">
            <div class="col-sm-3 form-control-label">
              <label>Giới Tính</label>
            </div>
            <div class="col-sm-9">
              <div class="form-group">
                <div class="form-line abc">
                  <input type="radio" id="AH1" name="gt" value="1">
                  <label for="AH1">Nam</label>
                  <input type="radio" id="AH0" name="gt" value="0" >
                  <label for="AH0">Nữ</label>
                </div>
              </div>
            </div>
          </div>
          <div class="row clearfix">
            <div class="col-lg-offset-2 col-md-offset-2 col-sm-offset-4 col-xs-offset-5">
              <button type="submit" class="btn btn-primary m-t-15 waves-effect">Thêm Vào</button>
            </div>
          </div>
        </form>
      </div>
    </div>
  </div>
</div>
</body>
</html>