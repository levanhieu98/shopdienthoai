<?php 
    if(isset($_POST['hoten']))
        $_SESSION['DonHang']['hoten']=$_POST['hoten'];
    if(isset($_POST['diachi']))
        $_SESSION['DonHang']['diachi']=$_POST['diachi'];
    if(isset($_POST['dienthoai']))
        $_SESSION['DonHang']['dienthoai']=$_POST['dienthoai'];
    if(isset($_POST['email']))
        $_SESSION['DonHang']['email']=$_POST['email'];
    $chon=isset($_SESSION['DonHang']['delivery'])?$_SESSION['DonHang']['delivery']:"";
?>
  <div class="row">
                <div class="col-lg-8 col-md-8 col-sm-8 col-xs-12">
                   <div class="col-md-9 clearfix" id="checkout">

                        <div class="box">
                            <form method="post" action="?p=thanhtoan3">
                                <ul class="nav nav-pills nav-justified">
                                    <li class="disabled"><a href="#"><i class="fa fa-map-marker"></i><br>Địa chỉ</a></li>
                                    <li class="active"><a href="#"><i class="fa fa-truck"></i><br>Phương thức giao hàng</a></li>
                                    <li class="disabled"><a href="#"><i class="fa fa-money"></i><br>Phương thức thanh toán</a></li>
                                    <li class="disabled"><a href="#"><i class="fa fa-eye"></i><br>Thông tin đơn hàng</a></li>
                                </ul>

                                <div class="content">
                                    <div class="row">
                                        <div class="col-sm-6">
                                            <div class="box shipping-method">

                                                <h4>GIAO TẬN NHÀ</h4>

                                                <p>Nội thành TPHCM - miễn phí. Nơi khác - 10000</p>

                                                <div class="box-footer text-center">

                                                    <input type="radio" name="delivery" value="giaotannha" <?= ( $chon=='giaotannha')?'checked':''?>>Giao tận nhà
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-6">
                                            <div class="box shipping-method">

                                                <h4>CHUYỂN PHÁT NHANH </h4>

                                                <p>Phí giao hàng 15000 VNĐ. Các tĩnh khác 1-2 ngày. </p>

                                                <div class="box-footer text-center">

                                                    <input type="radio" name="delivery" value="chuyenphatnhanh" <?=  ($chon=='chuyenphatnhanh')?'checked':''?>>Giao chuyển phát nhanh
                                                </div>
                                            </div>
                                        </div>

                                        <div class="col-sm-6">
                                            <div class="box shipping-method">

                                                <h4>CHUYỂN PHÁT THƯỜNG QUA BƯU ĐIỆN</h4>

                                                <p>Phí 10000 VNĐ. Tối đa 7 ngày.</p>

                                                <div class="box-footer text-center">

                                                    <input type="radio" name="delivery" value="buudien" <?= ( $chon=='buudien')?'checked':''?>>Giao qua bưu điện.
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-6">
                                            <div class="box shipping-method">
                                                <h4>HỎA TỐC</h4>
                                                <p>Phí 35000 VNĐ. Giao hàng trong 1 ngày.</p>
                                                <div class="box-footer text-center">
                                                    <input type="radio" name="delivery" value="hoatoc" <?= ( $chon=='hoatoc')?'checked':''?>>Giao hỏa tốc
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- /.row -->

                                </div>
                                <!-- /.content -->

                                <div class="box-footer">
                                    <div class="pull-left">
                                        <a href="?p=thanhtoan" class="btn btn-default"><i class="fa fa-chevron-left"></i>Trở lại</a>
                                    </div>
                                    <div class="pull-right">
                                        <button type="submit" class="btn btn-default">Qua bước kế tiếp<i class="fa fa-chevron-right"></i>
                                        </button>
                                    </div>
                                </div>
                            </form>
                        </div>
                        <!-- /.box -->


                    </div>
                </div>
                    <!-- product total -->
                <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                    <div class="box mb30">
                        <div class="box-head">
                            <h3 class="head-title">Đơn hàng của bạn</h3>
                        </div>
                        <div class="box-body">
                            <div class="table-responsive">
                                <!-- product total -->

                                <div class="pay-amount ">
                                    <table class="table mb20">
                                        <thead class="" style="border-bottom: 1px solid #e8ecf0;  text-transform: uppercase;">
                                            <tr>
                                                <th>
                                                    <span>Sản phẩm</span></th>
                                                    <th > <span>  Số lượng  </span></th>
                                                  <th>  <span>Tổng tiền</span></th>
                                            </tr>
                                        </thead>
                                          <?php 
                                                reset($_SESSION['daySoLuong']);
                                                reset($_SESSION['dayDonGia']);
                                                reset($_SESSION['dayTenDT']);
                                                reset($_SESSION['dayHinh']);
                                                $tongtien = $tongsoluong = 0;
                                            
                                            ?>
                                         <?php for($i = 0; $i < Count($_SESSION['daySoLuong']); $i++) { ?>
                                             <?php
                                                  
                                                   $tendt = current($_SESSION['dayTenDT']); 
                                                   $soluong = current($_SESSION['daySoLuong']);
                                                   $dongia = current($_SESSION['dayDonGia']);
                                                   $tien = $dongia*$soluong;
                                                   $tongtien+= $tien;
                                                $tongsoluong+= $soluong;
                                            ?>
                                        <tbody>
                                            <tr>
                                                <th>
                                                    <span><?=$tendt?></span></th>
                                                <td style="text-align: center">x<?=$soluong;?></td>
                                                <td><?=number_format($tien,0, ",",".");?>đ</td>
                                            </tr>
                                            
                                          
                                        </tbody>
                                        <tbody>
                                                 <?php 
                                                
                                                next($_SESSION['daySoLuong']);
                                                next($_SESSION['dayDonGia']);
                                                next($_SESSION['dayTenDT']);
                                                next($_SESSION['dayHinh']);
                                            ?>
                                    <?php } ?>
                                            <tr>
                                                <th>
                                                    <span>Số tiền phải trả</span></th>
                                                 <td></td> 
                                                <td ><?=number_format($tongtien,0, ",",".");?>đ</td>
                                            </tr>
                                        </tbody>
                                      
                                    </table>
                                </div>
                                <!-- /.product total -->
                            </div>
                        </div>
                    </div>
                    <!-- place order -->
                    <div class="box">
                        <div class="box-head">
                            <h3 class="head-title">Kiểm tra thanh toán</h3>
                        </div>
                        <div class="box-body">
                            <p>Vui lòng gửi séc đến Tên Cửa hàng, Phố Cửa hàng, Cửa hàng Thị trấn, Cửa hàng Bang / Quận, Mã bưu điện.</p>
                            <button class="btn btn-default btn-block">Đặt hàng</button>
                        </div>
                    </div>
                      <!-- /.place order -->
                </div>
            </div>