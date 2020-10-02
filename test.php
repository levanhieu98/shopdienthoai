<?php
include"class/config.php";
$dt=new goc;
$kq=$dt->getALL();
echo $kt=$kq->num_rows;
 ?>
 <?php
 while($row=$kq->fetch_assoc()){
  ?>
 
  <img src="<?=$row['urlHinh']?>"/>.</br>
   <?php echo $row['tenDT'] ?>.</br>
   <?php echo $row['gia'] ?>.</br>
    <p style="text-decoration:line-through ">  <?php echo $row['giaKM'] ?></p>.</br>
       <?php echo $row['moTa'] ?>
  <?php }?>
 

