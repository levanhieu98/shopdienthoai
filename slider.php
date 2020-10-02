<?php 
 require_once"class/goc.php";
  $dt=new xuly();
  $kq=$dt->getslider();
   ?>

        <div class="owl-carousel owl-one owl-theme">
           <?php while($row=$kq->fetch_assoc()) {?>
            <div class="item"> 
                <div class="slider-img">
                    <img src="<?=$row['Hinh']?>" alt=""></div>              
            </div>            
         <?php } ?>   
        </div>
    