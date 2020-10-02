<?php   
  $id=$_GET['id'];                                 
if (isset($_POST['tenDT'])){
   $idDT=$_POST['tenDT'];
   $sl=$_POST['idSL'];
  $qt->Sua_GG($idDT,$sl,$id);
  echo "<script>document.location='?p=ds_gg';</script>";
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
        <h2> Thêm Giả Giá</h2>
        <ul class="header-dropdown m-r--5">
      
        </ul>
      </div>
      <div class="body">
        <form class="form-horizontal" method="post" action="">
          <?php 
            $kq=$qt->getGG_chitiet($id);while($rows=$kq->fetch_assoc()){ ?>
           <div class="row clearfix">
            <div class="col-sm-3 form-control-label">
              <label for="ThuTu">TênĐiệnThoại</label>
            </div>
            <div class="col-sm-9">
              <div class="form-group">
                <div class="form-line">
                  <select  name="tenDT" >
                   <?php $kq=$qt->getSP1();while($row=$kq->fetch_assoc()){ ?>
                  <option value="<?=$row['idDT']?>" <?=($row['idDT']==$rows['idDT'])?'selected':''?>><?=$row['tenDT']?></option>
                  <?php } ?>
                </select>
                </div>
              </div>
            </div>
          </div>
          <div class="row clearfix">
            <div class="col-sm-3 form-control-label">
              <label for="Ten_KhongDau" >SốLượngGiảmGiá</label>
            </div>
            <div class="col-sm-9">
              <div class="form-group">
                <div class="form-line">
                  <input type="text" class="form-control" placeholder="Nhập số lượng" id="idSL" name="idSL" value="<?=$rows['soLuongGiamGia']?>">
                </div>
              </div>
            </div>
          </div>
         <?php } ?>
          <div class="row clearfix">
            <div class="col-lg-offset-2 col-md-offset-2 col-sm-offset-4 col-xs-offset-5">
              <button type="submit" class="btn btn-primary m-t-15 waves-effect">Cập nhật</button>
            </div>
          </div>
        </form>
      </div>
    </div>
  </div>
</div>
</body>
</html>