  <?php 
  require_once"class/goc.php";
  $dt=new xuly;
  $kq=$dt->getNCC();
  ?>
  <div class="row">
                <div class="col-lg-3 col-md-3 col-sm-4 col-xs-12">
                    <!-- sidenav-section -->
                    <div id='cssmenu'>
                        <ul>
                            <?php while ($row=$kq->fetch_assoc()) {
                                
                             ?>
                            <li class='has-sub'><a href='?p=ds_sp&id=<?=$row["idNCC"]?>'><?=$row['tenNCC']?></a></li>
                        <?php } ?>
                         </ul>
                     </div>
                 </div>
                <div class="col-lg-8 col-md-8 col-sm-8 col-xs-12">
                    <div class="row">
                      <!--  <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12 mb10 alignright">
                            <form>
                                <div class="select-option form-group">
                                    <select name="select" class="form-control">
                                        <option value="">Select</option>
                                        <option value="">Best Match</option>
                                        <option value="">Low Price</option>
                                        <option value="">High Price</option>
                                    </select>
                                </div>
                            </form>
                        </div>-->
                        <div class="search-bg" style="float:right" >
                            <!--<form action="?p=ds_sp" method="post" accept-charset="utf-8">        
                        <input type="text" class="form-control" placeholder="Search Here" name="tim" >
                        <button style="margin-bottom:10px" type="Submit" name="gui"><i class="fa fa-search"></i></button>
                            </form>-->
                        </div>
                    </div>
                    <div class="row">
                        <!-- product -->
                     <?php  $id=isset($_GET['id'])?$_GET['id']:"";
                     $limit=9;
                     $page=isset($_GET['page'])?$_GET['page']:1;
                      $start=($page-1)*$limit;  
                      $kq=$dt->getSP($id, $start,$limit,$toltalRows) ;
                      $pages=ceil($toltalRows/$limit);
                      $pre=$page-1;
                      $next=$page+1;
                     // echo $toltalRows;
                     ?>

                      <?php while ($rows=$kq->fetch_assoc()) {
                            
                        ?>
                          <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12 mb30">
                            <div class="product-block">
                                <div class="product-img"><img src="<?=$rows['urlHinh']?>" alt=""></div>
                                <div class="product-content">
                                    <h5><a href="?p=chitiet&key=<?=$rows['idDT']?>" class="product-title"><?=$rows['tenDT']?></strong></a></h5>
                                    <div class="product-meta"><a href="#" class="product-price"><?=number_format($rows['giaKM'],0,",",".")?>đ</a>
                                        <a href="#" class="discounted-price"><?=number_format($rows['gia'],0,",",".")?>đ</a>
                                    </div>
                                    <div class="shopping-btn">
                                        <a href="#" class="product-btn btn-like"><i class="fa fa-heart"></i></a>
                                        <a href="?p=giohang&key=<?=$rows['idDT']?>&action=add" class="product-btn btn-cart"><i class="fa fa-shopping-cart"></i></a>
                                    </div>
                                </div>
                            </div>
                        </div>
               <?php } ?>              
                        <!-- /.product -->                    
                    </div>
                    <div class="row">
                        <!-- pagination start -->
                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                            <div class="st-pagination">
                             
                                <ul class="pagination">
                               
                                    <li><a href="?p=ds_sp&id=<?=$id?>&page=<?=$pre?>" aria-label="previous"><span aria-hidden="true">Previous</span></a> </li>
                                  <?php for ($i =1; $i<=$pages ; $i++) {
                                    
                                 ?>
                                    <li class=""><a href="?p=ds_sp&id=<?=$id?>&page=<?=$i?>"><?=$i?></a></li>
                                    <?php } ?>
                                    <li> <a href="?p=ds_sp&id=<?=$id?>&page=<?=$next?>" aria-label="Next"><span aria-hidden="true">Next</span></a> </li>
                                  
                                </ul>

                            </div>
                        </div>
                        <!-- pagination close -->
                    </div>
                </div>
            </div>
                
         