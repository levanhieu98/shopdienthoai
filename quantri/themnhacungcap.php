<?php 
  // require"../class/quantri.php";
  // $qt=new quantri;                                     
if (isset($_POST['tenNCC'])){
  $Ten=$_POST['tenNCC'];
  $ThuTu=$_POST['ThuTu'];
  $AnHien=$_POST['AnHien'];
  $qt->Them_NCC($Ten, $ThuTu, $AnHien);
  echo "<script>document.location='?p=nha_cungcap';</script>";
  exit();
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
        <h2> Thêm Nhà Cung Cấp</h2>
        <ul class="header-dropdown m-r--5">
      
        </ul>
      </div>
      <div class="body">
        <form class="form-horizontal" method="post" action="">
          <!--<div class="row clearfix">
            <div class="col-sm-3 form-control-label">
              <label for="Ten"> idNCC </label>
            </div>
            <div class="col-sm-9">
              <div class="form-group">
                <div class="form-line">
                  <input type="text" id="idNCC" name="NCC" class="form-control" placeholder="Nhập tên nhà cung cấp"  maxlength= "20" minlength="3" required value="" >
                </div>
              </div>
            </div>
          </div>-->
          <div class="row clearfix">
            <div class="col-sm-3 form-control-label">
              <label for="Ten_KhongDau" > tênNCC</label>
            </div>
            <div class="col-sm-9">
              <div class="form-group">
                <div class="form-line">
                  <input type="text" class="form-control" placeholder="Tên không dấu" id="tenNCC" name="tenNCC" value="">
                </div>
              </div>
            </div>
          </div>
          <div class="row clearfix">
            <div class="col-sm-3 form-control-label">
              <label for="ThuTu">Thứ tự</label>
            </div>
            <div class="col-sm-9">
              <div class="form-group">
                <div class="form-line">
                  <input type="text" id="ThuTu" name="ThuTu" class="form-control" placeholder= "Nhập thứ tự" required min="1" max="1000" value="">
                </div>
              </div>
            </div>
          </div>
          <div class="row clearfix">
            <div class="col-sm-3 form-control-label">
              <label>Ẩn hiện</label>
            </div>
            <div class="col-sm-9">
              <div class="form-group">
                <div class="form-line abc">
                  <input type="radio" id="AH1" name="AnHien" value="1">
                  <label for="AH1">Hiện</label>
                  <input type="radio" id="AH0" name="AnHien" value="0" >
                  <label for="AH0">Ẩn</label>
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