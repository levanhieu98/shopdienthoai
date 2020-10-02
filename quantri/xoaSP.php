<?php  require("../class/quantri.php");
  	$qt=new quantri;
  	$iddt=$_GET['iddt'];
$kq = $qt->Xoa_SP($iddt);
header("location:index.php?p=ds_sanpham");
?> ?>