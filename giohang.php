
    <style type="text/css" media="screen">
        #img
        {
         width: 100x ;
         height: 100px;
        }
    </style>
     <div class="row">
                <div class="col-lg-8 col-md-8 col-sm-8 col-xs-12">
                    <div class="box">
                        <div class="box-head">
                            <h3 class="head-title">Giỏ Hàng</h3>
                        </div>
                        <!-- cart-table-section -->
                        <div class="box-body">
                            <div class="table-responsive">
                                <div class="cart">
                                    <form action="index.php?p=giohang&action=update" method="post" accept-charset="utf-8">
                                    <table class="table table-bordered ">
                                        <thead>
                                            <tr>
                                                <th>
                                                    <span>Sản phẩm</span></th>
                                                <th>
                                                    <span>Giá</span></th>
                                                <th>
                                                    <span>Số lượng</span></th>
                                                <th>
                                                    <span>Tổng tiền</span></th>
                                                <th>
                                                </th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                             <?php  
                                        
                                                reset($_SESSION['daySoLuong']);
                                                reset($_SESSION['dayDonGia']);
                                                reset($_SESSION['dayTenDT']);
                                                reset($_SESSION['dayHinh']);
                                                $tongtien = $tongsoluong = 0;
                                            
                                            ?>
                                            <?php for($i = 0; $i < Count($_SESSION['daySoLuong']); $i++) { ?>
                                            <?php 

                                                $idDT = key($_SESSION['daySoLuong']);
                                                $tendt = current($_SESSION['dayTenDT']);
                                                $soluong = current($_SESSION['daySoLuong']);
                                                $dongia = current($_SESSION['dayDonGia']);
                                                $hinh = current($_SESSION['dayHinh']);
                                                $tien = $dongia*$soluong;
                                                $tongtien+= $tien;
                                             
                                            ?>
                                   
                                            <tr>
                                                <td><a href="#"><img id="img" src="<?=BASE_URL.$hinh?>" alt=""></a>
                                                    <span><a href="#"><?=$tendt?></a></span>
                                                </td>
                                                <td><?=number_format($dongia,0,",",".");?></td>
                                                <td>
                                                    <div class="product-quantity">
                                                        <div class="quantity">
                                                            <input type="number" class="input-text qty text" step="1" min="1" max="6" name="soluong_arr[]" value="<?=$soluong?>" title="Qty" size="4" pattern="[0-9]*">
                                                            <input type="hidden" value="<?=$idDT?>" name="iddt_arr[]">
                                                        </div>
                                                    </div>
                                                </td>
                                                <td><?=number_format($tien,0, ",",".");?></td>
                                                <th scope="row"><a href="?p=giohang&action=remove&key=<?=$idDT?>" class="btn-close"><i class="fa fa-times-circle-o"></i></a></th>
                                            </tr>
                                           
                                         <!--   <tr>
                                                <td><a href="#"><img src="./images/cart_product_2.png" alt=""></a>
                                                    <span><a href="#">Apple iPhone 6S </a></span>
                                                </td>
                                                <td>$1300</td>
                                                <td>
                                                    <div class="product-quantity">
                                                        <div class="quantity">
                                                            <input type="number" class="input-text qty text " step="1" min="1" max="6" name="quantity" value="1" title="Qty" size="4" pattern="[0-9]*">
                                                        </div>
                                                    </div>
                                                </td>
                                                <td>$1300.00</td>
                                                <th scope="row"><a href="#" class="btn-close"><i class="fa fa-times-circle-o"></i></a></th>
                                            </tr>-->
                                              <?php 
                                                
                                                next($_SESSION['daySoLuong']);
                                                next($_SESSION['dayDonGia']);
                                                next($_SESSION['dayTenDT']);
                                                next($_SESSION['dayHinh']);
                                            ?>
                                            <?php } ?>
                                        </tbody>
                                    </table>
                                    <button class="btn btn-primary btn-block">Cập nhật</button>
                                     </form>
                                </div>
                                <!-- /.cart-table-section -->
                            </div>
                        </div>
                    </div>
                    <a href="index.php" class="btn-link"><i class="fa fa-angle-left"></i>Quay lại trang chủ</a>
                </div>
                <!-- cart-total -->
                <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                    <div class="box mb30">
                        <div class="box-head">
                            <h3 class="head-title">Chi tiết giá</h3>
                        </div>
                        <div class="box-body">
                            <div class=" table-responsive">
                                <div class="pay-amount ">
                                    <table class="table mb20">
                                        <tbody>
                                            <tr>
                                                <th>
                                                    <span>Phí vận chuyển</span></th>
                                                <td><strong class="text-green">Free</strong></td>
                                            </tr>
                                        </tbody>
                                        <tbody>
                                            <tr>
                                                <th>
                                                    <span class="mb0" style="font-weight: 700;">Tổng tiền</span></th>
                                                <td style="font-weight: 700; color: #1c1e1e; "><?=number_format($tongtien,0, ",",".");?></td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                               <a href="?p=thanhtoan"> <button class="btn btn-primary btn-block">Đồng ý </button></a>
                            </div>
                        </div>
                    </div>
                    <!-- coupon-section -->
                    <div class="box mb30">
                        <div class="box-head">
                            <h3 class="head-title">Phiếu ưu đãi &amp; giảm giá</h3>
                        </div>
                        <div class="box-body">
                            <form>
                                <div class="coupon-form">
                                    <input type="text" name="coupon_code" class="form-control" id="coupon_code" value="" placeholder="Coupon code">
                                    <input type="submit" class="btn btn-primary btn-block" name="apply_coupon" value="Áp Dụng">
                                </div>
                            </form>
                        </div>
                    </div>
                    <!-- /.coupon-section -->
                </div>
            </div>