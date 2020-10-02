
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
        <h2> Thêm Số Lượng Kho</h2>
        <ul class="header-dropdown m-r--5">
      
        </ul>
      </div>
      <div class="body">
        <form class="form-horizontal " method="post" action="" >
         <!-- <div class="row clearfix">
            <div class="col-sm-3 form-control-label">
              <label for="Ten"> idKHO </label>
            </div>
            <div class="col-sm-9">
              <div class="form-group">
                <div class="form-line">
                  <input type="text" id="idKH" name="idKH" class="form-control" placeholder= "Nhập mã kho" required min="1" max="1000" value="">
                </div>
              </div>
            </div>
          </div>-->
          <div class="row clearfix">
            <div class="col-sm-3 form-control-label">
              <label for="Ten_KhongDau" > idDT</label>
            </div>
            <div class="col-sm-9">
              <div class="form-group">
                <div class="form-line">
                   <input type="text" id="idDT" name="idDT" class="form-control" placeholder= "Nhập mã điện thoại" required min="1" max="1000" value="">
                </div>
              </div>
            </div>
          </div>
          <div class="row clearfix">
            <div class="col-sm-3 form-control-label">
              <label for="ThuTu">Số Lượng</label>
            </div>
            <div class="col-sm-9">
              <div class="form-group">
                <div class="form-line">
                  <input type="text" id="tenDT" name="tenDT" class="form-control" placeholder= "Nhập số lượng" required min="1" max="1000" value="">
                </div>
              </div>
            </div>
          </div>
              <div class="row clearfix">
            <div class="col-sm-3 form-control-label">
              <label for="ThuTu">Ngày Nhập Kho</label>
            </div>
            <div class="col-sm-9">
              <div class="form-group">
                <div class="form-line">
                  <input type="date" id="ngayNhap" name="ngayNhap" class="form-control" >
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