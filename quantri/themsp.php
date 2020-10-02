
<?php 
  // require"../class/quantri.php";
  // $qt=new quantri;                                     
if (isset($_POST['idNCC'])){
  $id=$_POST['idNCC'];
  $Ten=$_POST['tenDT'];
   $mota=$_POST['mota'];
   $ngayCapNhap=$_POST['ngayCapNhap'];
   $gia=$_POST['gia'];
   $giakm=$_POST['giaKM'];
   $ngaykm=$_POST['ngayKM'];
  $ngaykt=$_POST['ngayKT'];
   $kho=$_POST['idKho'];
   $AnHien=$_POST['AnHien'];  
   $hinh="images/".$_FILES['urlHinh']['name']; 
  $qt->Them_SP($id,$Ten,$gia,$giakm,$mota,$ngayCapNhap,$ngaykm,$ngaykt,$hinh,$AnHien,$kho);
  echo "<script>document.location='?p=ds_sanpham';</script>";
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
        <h2> Thêm Sản Phẩm</h2>
        <ul class="header-dropdown m-r--5">
      
        </ul>
      </div>
      <div class="body">
        <form class="form-horizontal " method="post" action="" enctype="multipart/form-data" >
         
          <div class="row clearfix">
            <div class="col-sm-3 form-control-label">
              <label for="Ten_KhongDau" > idNCC</label>
            </div>
            <div class="col-sm-9">
              <div class="form-group">
                <div class="form-line">
                <select  name="idNCC" >
                   <?php $kq=$qt->getNCC();while($row=$kq->fetch_assoc()){ ?>
                  <option value="<?=$row['idNCC']?>"><?=$row['tenNCC']?></option>
                  <?php } ?>
                </select>
                </div>
              </div>
            </div>
          </div>
          <div class="row clearfix">
            <div class="col-sm-3 form-control-label">
              <label for="ThuTu">TênDT</label>
            </div>
            <div class="col-sm-9">
              <div class="form-group">
                <div class="form-line">
                  <input type="text" id="tenDT" name="tenDT" class="form-control" placeholder= "Nhập tên điện thoại" required min="1" max="1000" value="">
                </div>
              </div>
            </div>
          </div>
          <div class="row clearfix">
            <div class="col-sm-3 form-control-label">
              <label>Mô Tả</label>
            </div>
            <div class="col-sm-9">
              <div class="form-group">
                <div class="form-line abc">
                   <textarea class="form-control" id="mota" name="mota" rows="3"></textarea>
                </div>
              </div>
            </div>
          </div>
           <div class="row clearfix">
            <div class="col-sm-3 form-control-label">
              <label>Ngày Cập Nhập</label>
            </div>
            <div class="col-sm-9">
              <div class="form-group">
                <div class="form-line abc">
                  <input type="date" class="form-control" id="ngayCapNhap" name="ngayCapNhap" >
                </div>
              </div>
            </div>
          </div>
              <div class="row clearfix">
            <div class="col-sm-3 form-control-label">
              <label>Giá</label>
            </div>
            <div class="col-sm-9">
              <div class="form-group">
                <div class="form-line abc">
                  <input type="text" class="form-control" id="gia" name="gia" placeholder="Nhập Giá" >
                </div>
              </div>
            </div>
          </div>
            <div class="row clearfix">
            <div class="col-sm-3 form-control-label">
              <label>Giá KM</label>
            </div>
            <div class="col-sm-9">
              <div class="form-group">
                <div class="form-line abc">
                  <input type="text" class="form-control" id="giaKM" name="giaKM" placeholder="Nhập Giá KM" >
                </div>
              </div>
            </div>
          </div>
             <div class="row clearfix">
         <div class="col-sm-3 form-control-label">
              <label>Ngày KM</label>
            </div>
            <div class="col-sm-9">
              <div class="form-group">
                <div class="form-line abc">
                  <input type="date" class="form-control" id="ngayKM" name="ngayKM" >
                </div>
              </div>
            </div>
          </div>
        <div class="row clearfix">
         <div class="col-sm-3 form-control-label">
              <label>Ngày KT</label>
            </div>
            <div class="col-sm-9">
              <div class="form-group">
                <div class="form-line abc">
                  <input type="date" class="form-control" id="ngayKT" name="ngayKT" >
                </div>
              </div>
            </div>
          </div>
            <div class="row clearfix">
            <div class="col-sm-3 form-control-label">
              <label>Url Hình</label>
            </div>
            <div class="col-sm-9">
              <div class="form-group">
                <div class="form-line abc">
                  <input type="file" class="form-control" id="urlHinh" name="urlHinh" value="images/"  >
                </div>
              </div>
            </div>
          </div>
           <div class="row clearfix">
            <div class="col-sm-3 form-control-label">
              <label for="Ten"> Kho </label>
            </div>
            <div class="col-sm-9">
              <div class="form-group">
                <div class="form-line">
                   <select  name="idKho" >
                   <?php $kq=$qt->getKho();while($row=$kq->fetch_assoc()){ ?>
                  <option value="<?=$row['idKho']?>"><?=$row['tenKho']?></option>
                  <?php } ?>
                </select>
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