 <?php 
  require_once"class/goc.php";
  $dt=new xuly;
  $kq=$dt->getSPNoiBat();
   ?>
  
 <div class="row">
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <div class="box">
                    <div class="box-head">
                        <h3 class="head-title">Sản Phẩm Nổi Bật</h3>
                    </div>
                    <div class="box-body">
                        <div class="row">
                            <!-- product -->
                              <?php while ($row=$kq->fetch_assoc()) { ?>
                            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">                               
                                <div class="product-block">
                                    <div class="product-img"><img  src="<?=$row['urlHinh']?>" alt=""></div>
                                    <div class="product-content">
                                        <h5><a href="?p=chitiet&key=<?=$row['idDT']?>" class="product-title"><?=$row['tenDT']?></a></h5>
                                        <div class="product-meta"><a href="#" class="product-price"><?=number_format($row['giaKM'],0,",",".")?>đ</a>
                                            <a href="#" class="discounted-price"><strike><?=number_format($row['gia'],0,",",".")?>đ</a>
                                        </div>
                                        <div class="shopping-btn">
                                            <a href="#" class="product-btn btn-like"><i class="fa fa-heart"></i></a>
                                            <a href="?p=giohang&key=<?=$row['idDT']?>&action=add" class="product-btn btn-cart"><i class="fa fa-shopping-cart"></i></a>
                                        </div>
                                    </div>
                                </div>                               
                            </div>
                             <?php } ?>
                            <!-- /.product -->
                            <!-- product -->
                           
                            <!-- /.product -->
                        </div>
                    </div>
                </div>
            </div>
        </div>