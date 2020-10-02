<?php 
	if(isset($_SESSION['DonHang'])==false){
		header("location:/VHMobistore/"); exit();
	}
	$error = array();
	$dt->LuuDonHang($error);
	if(count($error)==0){
		$luu_CT_DH = $dt->LuuChiTietDonHang();
		$iddh = $_SESSION['DonHang']['idDH'];
		unset($_SESSION['dayTenDT']);
		unset($_SESSION['dayDonGia']);
		unset($_SESSION['daySoLuong']);
		unset($_SESSION['DonHang']);
		session_destroy();
	}

		
?>
<div class="row">
	<div class="col-md-12 clearfix">
		<?php if(count($error)>0){ ?>
			<div class="heading"><h2>Có lỗi xảy ra</h2></div>
			<p class="lead">
				Có lỗi xảy ra trong quá trình lưu đơn hàng của bạn.<br></br>
				<?php foreach($error as $e) echo $e,"<br>"; ?>
				<br></br><a href="?p=giohang">Về trang giỏ hàng</a>
			</p>
		<?php } else { ?>
			<div class="heading"><h2>Cảm ơn quý khách</h2></div>
			<p class="lead">
				Đơn hàng đã được ghi nhận! Chúng tôi sẽ giao hàng trong thời gian sớm nhất. <br/>Mọi thắc mắc trong quá trình sử dụng, mời liên hệ ngay với chúng tôi trong.<br/>Kính chúc quý khách mạnh khỏe, an lành.<br/>
			</p>
			 <a href="index.php" class="btn-link"><i class="fa fa-angle-left"></i>Về trang chủ</a>
		<?php } ?>
		<p>&nbsp;</p> <p>&nbsp;</p>
	</div>
</div>