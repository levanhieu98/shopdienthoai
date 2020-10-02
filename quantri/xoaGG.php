<?php  require("../class/quantri.php");
  	$qt=new quantri;
  	$id=$_GET['id'];
$kq = $qt->Xoa_GG($id);
header("location:index.php?p=ds_gg");
?> ?>