<?php 
require_once"class/goc.php";
$dt=new xuly;
 $limit=6;
  $page=isset($_GET['page'])?$_GET['page']:1;
  $start=($page-1)*$limit;
  $tin=$dt->tin( $start, $limit,$toltalRow);
  $pages=ceil($toltalRow/$limit);
  $pre=$page-1;
  $next=$page+1;
 ?>  
            <div class="row">
                <div class="isotope">
                    <?php while ($row=$tin->fetch_assoc()) {
                        
                     ?>
                    <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12 post-masonry ">
                        <div class="post-block">
                            <!-- post block -->
                            <h3 class="post-title"><a href="#" class="title"><?=$row['tieuDe']?></a></h3>
                            <div class="meta">
                                <span class="meta-date"><?=$row['ngayDang']?></span>
                                <span>|&nbsp; &nbsp;</span>
                                <span class="meta-admin">By <a href="#" class="meta-title">Admin</a></span>
                            </div>
                            <div class="post-img">
                                <a href="#" class="imghover">
                                 <img id="img" src="<?= $row['urlHinh']?>" alt="" class="img-responsive"></a>
                            </div>
                            <div class="post-content">
                                <p><?=$row['tomTat']?></p>
                                <a href="?p=tinhot&tin=<?=$row['idTin']?>" class="btn btn-primary btn-sm">Xem tiếp</a>
                            </div>
                        </div>
                    </div>
                <?php }?>
                  
                </div>
            </div>
            <div class="row">
                <div class="st-pagination">
                    <ul class="pagination">
                        <li><a href="?p=tinmoi&page=<?=$pre?>" aria-label="previous"><span aria-hidden="true">Previous</span></a> </li>
                         <?php for ($i = 1; $i <=$pages ; $i++) 
                                    {                                  
                                     ?>
                                     <li class=""><a href="?p=tinmoi&page=<?=$i?>"><?=$i?></a></li>  
                                    <?php } ?>
                        <li> <a href="?p=tinmoi&page=<?=$next?>" aria-label="Next"><span aria-hidden="true">Next</span></a> </li>
                    </ul>
                </div>
            </div>
    <style type="text/css" media="screen">
        #img{
            width: 100px;
            height: 150px;
        }
        
    </style>