<?php  require("../class/quantri.php");
  	$qt=new quantri;
$idNCC=$_GET['idncc']; settype($idncc,'int');
$kq=$qt->kiemtraNCC($idNCC);
if (mysqli_num_rows($kq)>0){
	echo "<script language='javascript'>
            alert('Không thể xóa được ,nhà cung cấp đã có đã có điện thoại');
			location.href='index.php?p=nha_cungcap';
        </script>"; 
	}else {$kq = $qt->Xoa_NCC($idNCC);
header("location:index.php?p=nha_cungcap");}
?> ?>