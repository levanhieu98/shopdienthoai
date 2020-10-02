<?php 
$ht=isset($_SESSION['DonHang']['hoten'])?$_SESSION['DonHang']['hoten']:"";
$dc=isset($_SESSION['DonHang']['diachi'])?$_SESSION['DonHang']['diachi']:"";
$dt=isset( $_SESSION['DonHang']['dienthoai'])?$_SESSION['DonHang']['dienthoai']:"";
$mail=isset($_SESSION['DonHang']['email'])?$_SESSION['DonHang']['email']:"";
 ?>
 <div class="row">
                <div class="col-lg-8 col-md-8 col-sm-8 col-xs-12">
                    <div class="box checkout-form">
                        <!-- checkout - form -->
                        <div class="col-md-9 clearfix" id="checkout">

                        <div class="box">
                            <form method="post" action="?p=thanhtoan2">

                                <ul class="nav nav-pills nav-justified">
                                    <li class="active"><a href="#"><i class="fa fa-map-marker"></i><br>Địa chỉ</a>
                                    </li>
                                    <li class="disabled"><a href="#"><i class="fa fa-truck"></i><br>Phương thức giao hàng</a>
                                    </li>
                                    <li class="disabled"><a href="#"><i class="fa fa-money"></i><br>Phương thức thanh toán</a>
                                    </li>
                                    <li class="disabled"><a href="#"><i class="fa fa-eye"></i><br>Thông tin đơn hàng</a>
                                    </li>
                                </ul>

                                <div class="content">
                                    <div class="row">
                                        <div class="col-sm-6">
                                            <div class="form-group">
                                                <label for="firstname">Họ tên</label>
                                                <input type="text" class="form-control" id="hoten" name="hoten" value="<?=$ht?>" required="" oninvalid="this.setCustomValidity('Mời bạn nhập họ tên');" oninput="this.setCustomValidity('') ;" >
                                            </div>
                                        </div>
                                        <div class="col-sm-6">
                                            <div class="form-group">
                                                <label for="lastname">Địa chỉ</label>
                                                <input type="text" class="form-control" id="diachi" name="diachi" value="<?=$dc?>" required="" oninvalid="this.setCustomValidity('Bạn cho biết địa chỉ nhé');" oninput="this.setCustomValidity('');">
                                            </div>
                                        </div>
                                    </div>
                                    <!-- /.row -->

                                    <div class="row">
                                        <div class="col-sm-6">
                                            <div class="form-group">
                                                <label for="company">Điện thoại</label>
                                                <input type="text" class="form-control" id="dienthoai" name="dienthoai" value="<?=$dt?>" required="" oninvalid="this.setCustomValidity('Bạn ơi số điện thoại của bạn chưa có.');" oninput="this.setCustomValidity('');">
                                            </div>
                                        </div>
                                        <div class="col-sm-6">
                                            <div class="form-group">
                                                <label for="street">Email</label>
                                                <input type="text" class="form-control" id="email" name="email" value="<?=$mail?>" required="" oninvalid="this.setCustomValidity('Bạn thân mến! Còn email nữa');" oninput="this.setCustomValidity('');">
                                            </div>
                                        </div>
                                    </div>
                                    <!-- /.row -->

                                    
                                </div>

                                <div class="box-footer">
                                    <div class="pull-left">
                                        <a href="?p=giohang" class="btn btn-default"><i class="fa fa-chevron-left"></i>Xem lại giỏ hàng</a>
                                    </div>
                                    <div class="pull-right">
                                        <button type="submit" class="btn btn-default">Qua bước kế<i class="fa fa-chevron-right"></i>
                                        </button>
                                    </div>
                                </div>
                            </form>
                        </div>
                        <!-- /.box -->


                    </div>
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