<?php 
require_once"../class/ketnoi.php";

class quantri extends ketnoi
{
    function getNCC()
    {
    	$sql="select idNCC,tenNCC,thuTu,anHien from nhacungcap where anHien=1";
    	$kq=$this->db->query($sql);
    	if (!$kq) die ($this->db->error);
    	return $kq;	
    }
     function getSP($start,$limit,&$totalRow)
    {
    	$sql="select idDT,idNCC,tenDT,moTa,ngayCapNhap,gia,giaKM,ngayKM,ngayKT,urlHinh,soLuongTonKho,idKho,anHien from dienthoai where anHien=1 limit $start,$limit";
    	$kq=$this->db->query($sql);
        $sql1="select idDT from dienthoai where anHien=1";
        $kq1=$this->db->query($sql1);
        $totalRow=$kq1->num_rows;
    	if (!$kq) die ($this->db->error);
    	return $kq;
    }
    function getKho()
    {
    	$sql="select idKho,tenKho,slBanDau,slHienTai,ngayNhapSL from khosp ";
    	$kq=$this->db->query($sql);
    	if (!$kq) die ($this->db->error);
    	return $kq;	
    }
    function getDH()
    {
    	$sql="select idDH,idKH,thoiDiemDatHang,tenNguoiNhan,diaChi,tongTien,tinhTrang,ghiChu,dtNguoiNhan from donhang ";
    	$kq=$this->db->query($sql);
    	if (!$kq) die ($this->db->error);
    	return $kq; 	
    }
     function getKH()
    {
    	$sql="select idKH,hoTen,matKhau,email,diaChi,dienThoai,ngayDangKy,gioiTinh,kichHoat from khachhang ";
    	$kq=$this->db->query($sql);
    	if (!$kq) die ($this->db->error);
    	return $kq;	
    }
      function getDHCT()
    {
    	$sql="select idDH,idDT,tenDT,gia,idChiTiet,soLuong from donhangchitiet ";
    	$kq=$this->db->query($sql);
    	if (!$kq) die ($this->db->error);
    	return $kq; 	
    }
      function getQT()
    {
    	$sql="select idQT,tenQT,matKhau,email,diaChi,ngayDangKy,gioiTinh,kichHoat from quantri ";
    	$kq=$this->db->query($sql);
    	if (!$kq) die ($this->db->error);
    	return $kq;	
    }
     function getGG()
    {
    	$sql="select idGiamGia,soLuongGiamGia,idDT from giamgia ";
    	$kq=$this->db->query($sql);
    	if (!$kq) die ($this->db->error);
    	return $kq; 	
    }
      function getBL()
    {
    	$sql="select idKH,idDT,idBinhLuan,hoTen,email,noiDung,ngayBinhLuan,kiemDuyet,tieuDe from binhluan ";
    	$kq=$this->db->query($sql);
    	if (!$kq) die ($this->db->error);
    	return $kq;	
    }
    function Them_NCC($TenNCC,$ThuTu,$AnHien)
    {   
    $Ten=$this->db->escape_string(trim(strip_tags($TenNCC)));
    settype($ThuTu,"int");
    settype($AnHien,"int");
    $sql="INSERT INTO nhacungcap SET tenNCC='$TenNCC',  thuTu='$ThuTu', anHien='$AnHien'";
    $kq=$this->db->query($sql);
    if (!$kq) die ($this->db->error);
    }
    function Xoa_NCC($idncc){
    settype($idncc,"int");
    $sql= "DELETE FROM nhacungcap WHERE idNCC=$idncc";
    $kq = $this->db->query($sql);
    if (!$kq) die ($this->db->error);
    }
    function kiemtraNCC($idncc){
    $sql= "SELECT idNCC FROM dienthoai WHERE idNCC=$idncc";
    $kq = $this->db->query($sql);
    return $kq;
    }
function loginQT($u, $p){
    $u = $this->db->escape_string($u);
    $p = $this->db->escape_string($p);
    $p = md5($p);
    $sql="SELECT * FROM quantri WHERE email='$u' AND matKhau ='$p'";
    $kq = $this->db->query($sql);
    if ($kq->num_rows==0) return FALSE;
    else return $kq->fetch_assoc();
    }
function checkLogin() {
    if (isset($_SESSION['login_id'])==false){
          $_SESSION['error'] = 'Bạn chưa đăng nhập';
           header('location:dangnhap.php'); 
           exit();
     }elseif ($_SESSION['login_level']!=1){
          $_SESSION['error'] = 'Bạn không có quyền xem trang này';
          header('location:dangnhap.php');
          exit();
     }
}

function Them_SP($idncc,$tensp,$gia,$giakm,$mota,$ngaycapnhap,$ngaybd,$ngaykt,$hinh,$anhien,$idkho)
{
    $Ten=$this->db->escape_string(trim(strip_tags($tensp)));
    $MoTa=$this->db->escape_string(trim(strip_tags($mota)));
    $ngaycapnhap=$this->db->escape_string(trim(strip_tags($ngaycapnhap)));
     $ngaybd=$this->db->escape_string(trim(strip_tags($ngaybd)));
      $ngaykt=$this->db->escape_string(trim(strip_tags($ngaykt)));
    settype($anhien,"int");
    settype($idncc,"int");
    settype($idkho,"int");
     settype($gia,"int");
     settype($giakm,"int");
    $sql="INSERT INTO dienthoai SET idNCC=$idncc, tenDT='$tensp', anHien='$anhien',gia=$gia,giaKM=$giakm,ngayCapNhap='$ngaycapnhap',ngayKM='$ngaybd',ngayKT='$ngaykt',urlHinh='$hinh',moTa='$mota',idKho=$idkho

 ";
    $kq= $this->db->query($sql);
    if (!$kq) die ($this->db->error);
}
    function Xoa_SP($idsp){
    settype($idsp,"int");
    $sql= "DELETE FROM dienthoai WHERE idDT=$idsp";
    $kq = $this->db->query($sql);
    if (!$kq) die ($this->db->error);
    }
    function CheckEmail($email){
            $sql = "SELECT email FROM quantri WHERE email = '{$email}'";
            $kq = $this-> db-> query($sql);
            if($kq->num_rows>0) return false;
            else return true;
        }
    function Them_QT(&$loi)
    {       $thanhcong = true;
            $email = $this->db-> escape_string(trim(strip_tags($_POST['email'])));
            $pass = $this->db-> escape_string(trim(strip_tags($_POST['matkhau'])));
            $ht = $this->db-> escape_string(trim(strip_tags($_POST['hoten'])));
            $dc = $this->db-> escape_string(trim(strip_tags($_POST['diachi'])));
            $p = $_POST['gt']; settype($p, "int");
            if($email == NULL){
                $thanhcong = false;
                $loi['email'] = "Bạn chưa nhập email";
            }
            else if(filter_var($email,FILTER_VALIDATE_EMAIL)==FALSE){
                $thanhcong = false;
                $loi['email'] = "Bạn nhập email không đúng";
            }
            else if($this->CheckEmail($email)==false){
                $thanhcong = false;
                $loi['email'] = "Email này đã có người dùng";
            }
           else if($pass == NULL){
                $thanhcong = false;
                $loi['password'] = "Bạn chưa nhập mật khẩu";
            } elseif(strlen($pass)<6){
                $thanhcong = false;
                 $loi['password'] = "Mật khẩu của bạn phải >=6 ký tự";
            }
           else if($ht == NULL){
                $thanhcong = false;
                $loi['hoTen'] = "Chưa nhập họ tên";
            }
           else if($dc == NULL){
                $thanhcong = false;
                $loi['diaChi'] = "Chưa nhập địa chỉ";
            }
            else if($thanhcong==true) {
                $mahoa = md5($pass);
                settype($mahoa, "int");
            $sql = "INSERT INTO quantri SET email='$email', matKhau='$mahoa', tenQT='$ht', diaChi='$dc', gioiTinh=$p, kichHoat=1,  ngayDangKy=now()";
            $kq = $this-> db-> query($sql);
                    
            }
            
            return $thanhcong;
            
    }
    function Xoa_QT($id){
    settype($id,"int");
    $sql= "DELETE FROM quantri WHERE idQT=$id";
    $kq = $this->db->query($sql);
    if (!$kq) die ($this->db->error);
    }
     function getNCC_chitiet($id)
    {
        $sql="select idNCC,tenNCC,thuTu,anHien from nhacungcap where idNCC=$id and anHien=1";
        $kq=$this->db->query($sql);
        if (!$kq) die ($this->db->error);
        return $kq;    
    }
     function Sua_NCC($TenNCC,$ThuTu,$AnHien,$id)
    {   
    $Ten=$this->db->escape_string(trim(strip_tags($TenNCC)));
    settype($ThuTu,"int");
    settype($AnHien,"int");
    $sql="update nhacungcap SET tenNCC='$TenNCC',  thuTu='$ThuTu', anHien='$AnHien' where idNCC=$id ";
    $kq= $this->db->query($sql);
    if (!$kq) die ($this->db->error);
    }
    function Sua_SP($idncc,$tensp,$gia,$giakm,$mota,$ngaycapnhap,$ngaybd,$ngaykt,$hinh,$anhien,$idkho,$id ,&$loi)
    {
    $Ten=$this->db->escape_string(trim(strip_tags($tensp)));
    $MoTa=$this->db->escape_string(trim(strip_tags($mota)));
    $ngaycapnhap=$this->db->escape_string(trim(strip_tags($ngaycapnhap)));
     $ngaybd=$this->db->escape_string(trim(strip_tags($ngaybd)));
      $ngaykt=$this->db->escape_string(trim(strip_tags($ngaykt)));
    settype($anhien,"int");
    settype($idncc,"int");
    settype($idkho,"int");
     settype($gia,"int");
     settype($giakm,"int");
     if($gia>$giakm)
     {

    $sql="update dienthoai SET idNCC=$idncc, tenDT='$tensp', anHien='$anhien',gia=$gia,giaKM=$giakm,ngayCapNhap='$ngaycapnhap',ngayKM='$ngaybd',ngayKT='$ngaykt',urlHinh='$hinh',moTa='$mota',idKho=$idkho where idDT=$id ";
    $kq= $this->db->query($sql);
}
else
{
$loi['loi']="Vui long nhap lai gia khuyen mai";
}
    }
        function getSP_chitiet($id)
    {
        $sql="select idDT,idNCC,tenDT,moTa,ngayCapNhap,gia,giaKM,ngayKM,ngayKT,urlHinh,soLuongTonKho,idKho,anHien from dienthoai where anHien=1 and idDT=$id";
        $kq=$this->db->query($sql);
        if (!$kq) die ($this->db->error);
        return $kq;    
    }
     function getQT_chitiet($id)
    {
        $sql="select idQT,tenQT,matKhau,email,diaChi,ngayDangKy,gioiTinh,kichHoat from quantri where idQT=$id ";
        $kq=$this->db->query($sql);
        if (!$kq) die ($this->db->error);
        return $kq;    
    }
     function Sua_QT($id)
    {       $thanhcong = true;
            $email = $this->db-> escape_string(trim(strip_tags($_POST['email'])));
            $pass = $this->db-> escape_string(trim(strip_tags($_POST['matkhau'])));
            $ht = $this->db-> escape_string(trim(strip_tags($_POST['hoten'])));
            $dc = $this->db-> escape_string(trim(strip_tags($_POST['diachi'])));
            $p = $_POST['gt']; settype($p, "int");
             settype($id, "int");
            if($thanhcong==true) {
                $mahoa = md5($pass);
            $sql = "update quantri SET email='$email', matKhau='$mahoa', tenQT='$ht', diaChi='$dc', gioiTinh=$p, kichhoat=1,  ngayDangKy=now() where idQT=$id";
            $kq = $this-> db-> query($sql);
                    
            }
            
            return $thanhcong;
            
    }
      function Them_GG($id,$sluong)
    {   
    settype($sluong,"int");
    settype($id,"int");
    $sql="INSERT INTO giamgia SET idDT=$id, soLuongGiamGia=$sluong";
    $kq=$this->db->query($sql);
    if (!$kq) die ($this->db->error);
    }

     function Xoa_GG($id){
    settype($id,"int");
    $sql= "DELETE FROM giamgia WHERE idGiamGia=$id";
    $kq = $this->db->query($sql);
    if (!$kq) die ($this->db->error);
    }
      function getGG_chitiet($id)
    {
        $sql="select idGiamGia,soLuongGiamGia,idDT from giamgia where $id=idGiamGia ";
        $kq=$this->db->query($sql);
        if (!$kq) die ($this->db->error);
        return $kq;     
    }
      function Sua_GG($id,$sl,$idGG)
    {   
    settype($id,"int");
    settype($sl,"int");
    settype($idGG,"int");
    $sql="update giamgia SET soLuongGiamGia=$sl,idDT=$id where idGiamGia=$idGG ";
    $kq= $this->db->query($sql);
    if (!$kq) die ($this->db->error);
    }
    function getSP1()
    {
        $sql="select idDT,idNCC,tenDT,moTa,ngayCapNhap,gia,giaKM,ngayKM,ngayKT,urlHinh,soLuongTonKho,idKho,anHien from dienthoai where anHien=1";
        $kq=$this->db->query($sql);
        if (!$kq) die ($this->db->error);
        return $kq;
    }
} ?>
