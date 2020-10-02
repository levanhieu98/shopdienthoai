<?php  
	require_once"ketnoi.php";
	   
class xuly extends ketnoi{
	function getALL()
	{
		$sql="select * from dienthoai";
		$kq=$this->db->query($sql);
		if (!$kq) die ($this->db->error);
		return $kq;

	}
	function getslider()
	{
		$sql="select Hinh from slider";
		$kq=$this->db->query($sql);
		if (!$kq) die ($this->db->error);
		return $kq;
	}
	function getNCC()
	{
		$sql="select tenNCC,idNCC,anHien from nhacungcap where anHien=1";
		$kq=$this->db->query($sql);
		if (!$kq) die ($this->db->error);
		return $kq;
	}
	function getSP($idncc,$start,$limit,&$totalRows)
	{
		if($idncc=="")
		{
			$id="";
		}
		else
		{
			$id="idNCC=$idncc and";
		}
		$sql="select idDT,idNCC,tenDT,gia,giaKM,urlHinh,anHien from dienthoai where  $id anHien=1 limit $start,$limit ";
		$kq=$this->db->query($sql);
		if (!$kq) die ($this->db->error);
		$sql1="select idDT,idNCC,tenDT,gia,giaKM,urlHinh,anHien from dienthoai where  $id anHien=1 ";
		$kq1=$this->db->query($sql1);
		$totalRows=$kq1->num_rows;
		return $kq;
	}
	function getSPMoi()
	{
		$sql="select idDT,tenDT,gia,giaKM,urlHinh,anHien from dienthoai where anHien=1 ORDER BY RAND() limit 12  	 ";
		$kq=$this->db->query($sql);
		if (!$kq) die ($this->db->error);
		return $kq;
	}
	function getlistSPMoi($start,$limit,&$totalRow)
	{
		$sql="select idDT,tenDT,gia,giaKM,urlHinh,anHien from dienthoai where anHien=1  limit $start,$limit";
		$kq=$this->db->query($sql);
		if (!$kq) die ($this->db->error);
		$sql1="select idDT from dienthoai where anHien=1";
		$kq1=$this->db->query($sql1);
		$totalRow=$kq1->num_rows;
		if (!$kq1) die ($this->db->error);
		return $kq;
	}
	function getSPBanChay()
	{
		$sql="select idDT,tenDT,gia,giaKM,urlHinh,anHien from dienthoai  where anHien=1 limit 5 ,10";
		$kq=$this->db->query($sql);
		if (!$kq) die ($this->db->error);
		return $kq;
	}
	function getSPNoiBat()
	{
		$sql="select idDT,tenDT,gia,giaKM,urlHinh,anHien from dienthoai where anHien=1 ORDER BY RAND() limit 8 ";
		$kq=$this->db->query($sql);
		if (!$kq) die ($this->db->error);
		return $kq;
	}
	function getTim($tensp)
    {
        $sql="select idDT,tenDT,gia,giaKM,urlHinh from dienthoai where tenDT LIKE '%$tensp%' and AnHien=1 ";
        $kq=$this->db->query($sql);
        if (!$kq) die ($this->db->error);
        return $kq;
    }
    function getChiTiet($id)
    {
    	$sql="select idDT,tenDT,gia,giaKM,urlHinh,moTa,anHien from dienthoai where anHien=1 and idDT=$id";
		$kq=$this->db->query($sql);
		if (!$kq) die ($this->db->error);
		return $kq;
    }
    function getSPLQ()
	{
		$sql="select idDT,tenDT,gia,giaKM,urlHinh,anHien from dienthoai where anHien=1 ORDER BY RAND() limit 4 ";
		$kq=$this->db->query($sql);
		if (!$kq) die ($this->db->error);
		return $kq;
	}
	function chiTietSP($idDT){
			$sql="SELECT * FROM dienthoai WHERE AnHien = 1 AND idDT=$idDT";
			$kq = $this-> db-> query($sql);
			if(!$kq) die($this-> db-> error);
			return $kq;
		}
	function giohang($action,$iddt)
	{
		
		if(!isset($_SESSION['daySoLuong']))
				$_SESSION['daySoLuong']=array();
		if(!isset($_SESSION['dayDonGia']))
				$_SESSION['dayDonGia']=array();
		if(!isset($_SESSION['dayTenDT']))
				$_SESSION['dayTenDT']=array();
		if(!isset($_SESSION['dayHinh']))
				$_SESSION['dayHinh']=array();
		
		if($action=="add"){
				settype($iddt, "int"); if($iddt<=0) return;
				$sql="SELECT idDT,tenDT,giaKM,soLuongTonKho,urlHinh FROM dienthoai WHERE idDT=$iddt";
				$kq = $this->db-> query($sql);
				if(!$kq) die($this->db-> error);
				$row =$kq->fetch_assoc();
				$_SESSION['dayTenDT'][$iddt] = $row['tenDT'];
				$_SESSION['dayDonGia'][$iddt] = $row['giaKM'];
				$_SESSION['daySoLuong'][$iddt]=1;
				$_SESSION['dayHinh'][$iddt] = $row['urlHinh'];
				if($_SESSION['daySoLuong'][$iddt]>$row['soLuongTonKho'])
				$_SESSION['daySoLuong'][$iddt] = $row['soLuongTonKho'];
			}
		if($action=="remove"){
				settype($iddt, "int"); if($iddt<=0) return;
				unset($_SESSION['dayTenDT'][$iddt]);
				unset($_SESSION['dayDonGia'][$iddt]);
				unset($_SESSION['daySoLuong'][$iddt]);
				unset($_SESSION['dayHinh'][$iddt]);
			}
		if($action=="update"){
				$iddt_arr = $_POST['iddt_arr'];
				$soluong_arr = $_POST['soluong_arr'];
				for($i=0; $i<Count($iddt_arr);$i++){
					$idDT = $iddt_arr[$i]; settype($idDT, "int"); if($idDT<=0) continue;
					$soluong = $soluong_arr[$i]; settype($soluong, "int");
					if($soluong<=0) continue;
					$kq = $this->chiTietSP($idDT);
					$row = $kq->fetch_assoc();
					$_SESSION['dayTenDT'][$idDT] = $row['tenDT'];
					$_SESSION['dayDonGia'][$idDT] = $row['gia'];
					$_SESSION['daySoLuong'][$idDT] = $soluong;
					if($_SESSION['daySoLuong'][$idDT]>$row['soLuongTonKho'])
						$_SESSION['daySoLuong'][$idDT] = $row['soLuongTonKho'];
				}
			}
	}

	function dangky(&$loi)
	{		$thanhcong = true;
			$email = $this->db-> escape_string(trim(strip_tags($_POST['email'])));
			$pass = $this->db-> escape_string(trim(strip_tags($_POST['password'])));
			$repass = $this->db-> escape_string(trim(strip_tags($_POST['password1'])));
			$ht = $this->db-> escape_string(trim(strip_tags($_POST['name'])));
			$dc = $this->db-> escape_string(trim(strip_tags($_POST['diachi'])));
			$dt = $this->db-> escape_string(trim(strip_tags($_POST['number'])));
			$p = $_POST['gt']; settype($p, "int");
			if($email == NULL){
				$thanhcong = false;
				$loi['email'] = "Bạn chưa nhập email";
			}
			elseif(filter_var($email,FILTER_VALIDATE_EMAIL)==FALSE){
				$thanhcong = false;
				$loi['email'] = "Bạn nhập email không đúng";
			}
			elseif($this->CheckEmail($email)==false){
				$thanhcong = false;
				$loi['email'] = "Email này đã có người dùng";
			}
			else if($thanhcong==true) {
				$mahoa = md5($pass);
			$sql = "INSERT INTO khachhang SET email='$email', matKhau='$mahoa', hoTen='$ht', diaChi='$dc', dienThoai='$dt', gioiTinh=$p, kichhoat=1,  ngayDangKy=now()";
			$kq = $this-> db-> query($sql);
					
			}
			if($pass == NULL){
				$thanhcong = false;
				$loi['password'] = "Bạn chưa nhập mật khẩu";
			} elseif(strlen($pass)<6){
				$thanhcong = false;
				 $loi['password'] = "Mật khẩu của bạn phải >=6 ký tự";
			}
			if($repass == NULL){
				$thanhcong = false;
				$loi['password1'] = "Nhập lại mật khẩu đi";
			} elseif($pass != $repass){
				$thanhcong = false;
				$loi['password1'] = "Mật khẩu 2 lần không giống";
			}
			if($ht == NULL){
				$thanhcong = false;
				$loi['hoTen'] = "Chưa nhập họ tên";
			}
			if($dt == NULL){
				$thanhcong = false;
				$loi['dienThoai'] = "Chưa nhập số điện thoại";
			}
			if($dc == NULL){
				$thanhcong = false;
				$loi['diaChi'] = "Chưa nhập địa chỉ";
			}
			return $thanhcong;
			
	}
	function CheckEmail($email){
			$sql = "SELECT email FROM khachhang WHERE email = '{$email}'";
			$kq = $this-> db-> query($sql);
			if($kq->num_rows>0) return false;
			else return true;
		}
	function login($email, $p, &$loi){
			$loi = array();
			$email = $this->db-> escape_string(trim(strip_tags($email)));
			$p = $this->db-> escape_string(trim(strip_tags($p)));
			$p_mahoa = md5($p);
		$sql = "SELECT email,matKhau,hoTen,idKH FROM khachhang WHERE email='$email' and matKhau='$p_mahoa'";
			$kq = $this->db-> query($sql);
			if($kq->num_rows==0){
				$loi['email'] = "<span class='label label-warning'>Email không có hoặc mật khẩu sai</span>";
				return false;
			}
			$row = $kq->fetch_assoc();
			$_SESSION['login_id'] = $row['idKH'];
			$_SESSION['login_hoten'] = $row['hoTen'];
			$_SESSION['login_email'] = $row['email'];
			//echo $row['idKH'];
			return true;
		}
		function tin($start,$limit,&$totalRow)
		{
			$sql="select idTin, tieuDe,urlHinh,baiViet,tomTat,ngayDang from tin limit $start,$limit";
			$kq=$this->db->query($sql);
			$sql1="select idTin from tin ";
		$kq1=$this->db->query($sql1);
		$totalRow=$kq1->num_rows;
			return $kq;

		}
		function tinM()
		{
			$sql="select idTin, tieuDe,urlHinh,baiViet,tomTat,ngayDang from tin ORDER BY RAND() limit 3";
			$kq=$this->db->query($sql);
			return $kq;

		}
		function tinChitiet($id)
		{
			if($id=="")
			{
				$idT=1;
			}
			else
			{
				$idT=$id;
			}
			$sql="select idTin, tieuDe,urlHinh,panner,baiViet,tomTat,ngayDang from tin where idTin=$idT";
			$kq=$this->db->query($sql);
			return $kq;

		}
		function LuuDonHang(&$error){
			$id = $this->db-> escape_string(trim(strip_tags(isset($_SESSION['DonHang']['idkh']))));
			$hoten = $this->db-> escape_string(trim(strip_tags($_SESSION['DonHang']['hoten'])));
			$dienthoai = $this->db-> escape_string(trim(strip_tags($_SESSION['DonHang']['dienthoai'])));
			$diachi = $this->db-> escape_string(trim(strip_tags($_SESSION['DonHang']['diachi'])));
			$email = $this->db-> escape_string(trim(strip_tags($_SESSION['DonHang']['email'])));
			$pttt = $this->db-> escape_string(trim(strip_tags($_SESSION['DonHang']['payment'])));
			$ptgh = $this->db-> escape_string(trim(strip_tags($_SESSION['DonHang']['delivery'])));
			$tongtien = $this->db-> escape_string(trim(strip_tags($_SESSION['DonHang']['total'])));
			if(count($_SESSION['daySoLuong'])==0) $error[] = "Bạn chưa chọn sản phẩm nào";
			if($hoten == "") $error[] = "Bạn chưa nhập họ tên";
			if($diachi == "") $error[] = "Bạn chưa nhập địa chỉ";
			if($email == "") $error[] = "Bạn chưa nhập email";
			if($dienthoai == "") $error[] = "Bạn ơi! Điện thoại người nhận chưa có";
			if($pttt == "") $error[] = "Bạn chưa chọn phương thức thanh toán";
			if($ptgh == "") $error[] = "Bạn chưa chọn phương thức giao hàng";
			if($id =="") $error[] = "Bạn chưa đăng nhập vui lòng đăng nhập";
			if($tongtien == "") $error[] = "Tổng tiền hiện tại bằng không";
			if(count($error)>0) return;
			if(isset($_SESSION['DonHang']['idDH'])==false){
			echo $sql="INSERT INTO donhang SET tenNguoiNhan = '$hoten',diaChi = '$diachi', dtNguoiNhan = '$dienthoai', ptGiaoHang = '$ptgh', ptThanhToan = '$pttt', thoiDiemDatHang = now(),idKH=$id,tinhTrang=1,tongTien=$tongtien";
				$kq = $this->db-> query($sql);
				if(!$kq) die($this->db-> error);
				$_SESSION['DonHang']['idDH'] = $this->db->insert_id;
			} else{
				$idDH = $_SESSION['DonHang']['idDH'];
				$sql="UPDATE donhang SET tenNguoiNhan = '$hoten',diaChi = '$diachi', dtNguoiNhan = '$dienthoai', ptGiaoHang = '$pttt', ptThanhToan = '$ptgh', thoiDiemDatHang = now()  WHERE idDH = $idDH";
				$kq = $this->db-> query($sql);
				if(!$kq) die($this->db-> error);
			}
		}
		function LuuChiTietDonHang(){
			$sosp = count($_SESSION['daySoLuong']);
			if($sosp<=0){echo "Không có sản phẩm"; return;}
			if(isset($_SESSION['DonHang']['idDH'])==false){echo "Không có idDH"; return;}
			$idDH = $_SESSION['DonHang']['idDH'];
			$sql = "DELETE FROM donhangchitiet WHERE idDH = $idDH";
			$this-> db-> query($sql);
			reset($_SESSION['daySoLuong']);
			reset($_SESSION['dayDonGia']);
			reset($_SESSION['dayTenDT']);
			for($i = 0; $i<$sosp; $i++){
				$idDT = key($_SESSION['daySoLuong']);
				$tendt = current($_SESSION['dayTenDT']);
				$soluong = current($_SESSION['daySoLuong']);
				$gia = current($_SESSION['dayDonGia']);
				$sql = "INSERT INTO donhangchitiet (idDH,idDT,tenDT,soLuong,gia) VALUES ($idDH,$idDT,'$tendt',$soluong,$gia)";
				$this-> db-> query($sql);
				next($_SESSION['daySoLuong']);
				next($_SESSION['dayDonGia']);
				next($_SESSION['dayTenDT']);
			}
		}
	
}

?>