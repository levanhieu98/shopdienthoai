<?php
require_once"class/goc.php";
$dt=new xuly;
$id=isset($_GET['key'])?$_GET['key']:"";
 ?>
 <style type="text/css" media="screen">
    #img{
        width: 250px;
        height: 280px;
    }
     
 </style>
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="box">
                        <!-- product-description -->
                        <div class="box-body">
                            <div class="row">
                             <?php $ct=$dt->getChiTiet($id);while ($row=$ct->fetch_assoc()) {
                                
                             ?>
            
                                <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                                    <div id="slideshow"><img id="img" src="<?=$row['urlHinh']?>" alt=""></div>
                                </div>
                                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                    <div class="product-single">
                                        <h2><?=$row['tenDT']?></h2>
                                        <div class="product-rating">
                                            <span><i class="fa fa-star"></i></span>
                                            <span><i class="fa fa-star"></i></span>
                                            <span><i class="fa fa-star"></i></span>
                                            <span><i class="fa fa-star"></i></span>
                                            <span><i class="fa fa-star-o"></i></span>
                                            <span class="text-secondary">&nbsp;(4.8 Review Stars)</span>
                                        </div>
                                        <p class="product-price" style="font-size: 38px;"><?=number_format($row['giaKM'],0,",",".")?>đ <strike><?=number_format($row['gia'],0,",",".")?>đ</strike></p>
                                        <p><?=$row['moTa']?></p>
                                        <div class="product-quantity">
                                            <h5>Quantity</h5>
                                            <div class="quantity mb20">
                                                <input type="number" class="input-text qty text" step="1" min="1" max="6" name="quantity" value="1" title="Qty" size="4" pattern="[0-9]*">
                                            </div>
                                        </div>
                                    <a href="?p=giohang&key=<?=$row['idDT']?>&action=add">    <button type="submit" class="btn btn-default"><i class="fa fa-shopping-cart"></i>&nbsp;Add to cart</button></a>
                                        
                                    </div>
                                </div>
                            <?php } ?>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="box-head scroll-nav">
                        <div class="head-title"> <a class="page-scroll active" href="#product">Product Details</a>
                            <a class="page-scroll" href="#rating">Ratings &amp; Reviews</a>
                            <a class="page-scroll" href="#review">Add Your Reviews</a></div>
                    </div>
                </div>
            </div>
            <!-- highlights -->
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="box" id="product">
                        <div class="box-body">
                            <div class="highlights">
                                <h4 class="product-small-title">Highlights</h4>
                                <div class="row">
                                    <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                                        <ul class="arrow">
                                            <li>12.2 MP Rear | 8 MP Front Camera </li>
                                            <li>4GB RAM </li>
                                            <li>2700 mAh battery</li>
                                        </ul>
                                    </div>
                                    <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                                        <ul class="arrow">
                                            <li>Android 8.0 </li>
                                            <li>Qualcomm Snapdragon 835</li>
                                            <li>Fingerprint Sensor</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="highlights">
                                <h4 class="product-small-title">Specification</h4>
                                <div class="row">
                                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                        <h4>General</h4>
                                    </div>
                                    <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 mb30">
                                        <ul>
                                            <li>Brand</li>
                                            <li>Model Number </li>
                                            <li>Body Material</li>
                                            <li>Sim Size</li>
                                        </ul>
                                    </div>
                                    <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 mb30">
                                        <ul>
                                            <li style="color: #1c1e1e;">Google Pixel </li>
                                            <li style="color: #1c1e1e;">Google XYZ</li>
                                            <li style="color: #1c1e1e;">Metal and Polycarbonate</li>
                                            <li style="color: #1c1e1e;">Micro</li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                        <h4>Display</h4>
                                    </div>
                                    <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                                        <ul>
                                            <li>Screen Size </li>
                                            <li>Display Resolution </li>
                                            <li>Pixel Density</li>
                                            <li>Screen Protection </li>
                                        </ul>
                                    </div>
                                    <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                                        <ul>
                                            <li style="color: #1c1e1e;">5 inch </li>
                                            <li style="color: #1c1e1e;">1280 X 720 Pixels</li>
                                            <li style="color: #1c1e1e;">294 PPI</li>
                                            <li style="color: #1c1e1e;">Gorilla Glass 4</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- rating reviews  -->
        <!-- /.product-description -->
        <div class="row">
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <div class="box-head">
                    <h3 class="head-title">Sản Phẩm Liên Quan</h3>
                </div>
            </div>
        </div>
        <div class="box">
            <div class="box-body">
                <div class="row">
                    <!-- product -->
                    <?php $sp=$dt->getSPLQ() ;while ($rows=$sp->fetch_assoc()) {  ?>
                    <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12 mb30">
                        <div class="product-block">
                            <div class="product-img"><img src="<?=$rows['urlHinh']?>" alt=""></div>
                            <div class="product-content">
                                <h5><a href="?p=chitiet&key=<?=$rows['idDT']?>" class="product-title"><?=$rows['tenDT']?></a></h5>
                                <div class="product-meta"><a href="#" class="product-price"><?=$rows['giaKM']?></a>
                                    <a href="#" class="discounted-price"><?=$rows['gia']?></a>
                                    <span class="offer-price">20%off</span>
                                </div>
                                <div class="shopping-btn">
                                    <a href="#" class="product-btn btn-like"><i class="fa fa-heart"></i></a>
                                    <a href="#" class="product-btn btn-cart"><i class="fa fa-shopping-cart"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>
                  <?php } ?>
                </div>
            </div>
        </div>
  
