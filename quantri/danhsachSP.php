<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<div class="container-fluid">
            
            <!-- Basic Examples -->
            <div class="row clearfix">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="card">
                        <div class="header">
                            <h2>
                               Danh Sách Sản Phẩm
                            </h2>
                            <ul class="header-dropdown m-r--5">
                               
                            </ul>
                        </div>
                        <div class="body">
                            <div class="table-responsive">
                                <table  class=" table table-bordered table-striped table-hover js-basic-example dataTable ">
                                    <thead>
                                        <tr>
                                            <th>idDT</th>
                                            <th>idNCC</th>
                                            <th>TênDT</th>
                                            <th>MôTả</th>
                                            <th>NgàyCậpNhập</th> 
                                            <th>Giá</th>
                                            <th>GiáKM</th>
                                            <th>NgàyKM</th>
                                            <th>NgàyKT</th>
                                            <th>urlHình</th>
                                            <th>SLTồnKho</th> 
                                            <th>ẨnHiện</th>
                                            <th>Cậpnhật/Xóa</th> 
                                        </tr>
                                    </thead>
                                    <?php //require"../class/quantri.php";
                                        //$dt=new quantri;
                                        $limit=10;
                                         $page=isset($_GET['page'])?$_GET['page']:1;
                                         $start=($page-1)*$limit;
                                        $sp=$qt->getSP($start,$limit,$toltalRow); 
                                         $pages=ceil($toltalRow/$limit);
                                         $pre=$page-1;
                                        $next=$page+1;   
                                     ?>
                                    <tbody>
                              
                                <?php while ($row=$sp->fetch_assoc()) {
                                    
                                 ?>
                                        <tr>
                                            <td><?=$row['idDT']?></td>
                                            <td><?=$row['idNCC']?></td>
                                            <td><?=$row['tenDT']?></td>
                                            <td><?=$row['moTa']?></td>
                                            <td><?=$row['ngayCapNhap']?></td>
                                            <td><?=number_format($row['gia'],0,",",".")?>đ</td>
                                            <td><?=number_format($row['giaKM'],0,",",".")?>đ</td>
                                            <td><?=$row['ngayKM']?></td>
                                            <td><?=$row['ngayKT']?></td>
                                            <td><?=$row['urlHinh']?></td>
                                            <td><?=$row['soLuongTonKho']?></td>
                                            <td><?=($row['anHien']==1)?"Đang hiện":"Đang ẩn"?></td>
                                            <td>
                                            <a href="?p=sua_sanpham&key=<?=$row['idDT']?>" class="btn bg-blue waves-effect">Cập Nhật</a> &nbsp;
                                            <a href="xoaSP.php?iddt=<?=$row['idDT']?>" class="btn bg-red waves-effect" onClick="return confirm ('Bạn muốn xóa không')">Xoá</a>
                                            </td>
                                        </tr>
                                     <?php } ?>
                                    </tbody>

                                </table>
                                 <div class="row">
                        <!-- pagination start -->
                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                            <div class="st-pagination">
                                <ul class="pagination">
                                    <li><a href="?p=ds_sanpham&page=<?=$pre?>" aria-label="previous"><span aria-hidden="true">Previous</span></a> </li>
                                    <?php for ($i = 1; $i<=$pages ; $i++) 
                                    {                                  
                                     ?>
                                     <li class=""><a href="?p=ds_sanpham&page=<?=$i?>"><?=$i?></a></li>
                                    
                                   <?php } ?>
                                    <li> <a href="?p=ds_sanpham&page=<?=$next?>" aria-label="Next"><span aria-hidden="true">Next</span></a> </li>
                                </ul>
                            </div>
                        </div>
                        <!-- pagination close -->
                    </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
             
            <!-- #END# Basic Examples -->
            <!-- Exportable Table -->
            
            <!-- #END# Exportable Table -->
        </div>
        <!-- JQuery DataTable Css -->
<link href="plugins/jquery-datatable/skin/bootstrap/css/dataTables.bootstrap.css" rel="stylesheet">
<!-- JQuery DataTable Css -->
<link href="plugins/jquery-datatable/skin/bootstrap/css/dataTables.bootstrap.css" rel="stylesheet">
<!-- Jquery DataTable Plugin Js -->
<script src="plugins/jquery-datatable/jquery.dataTables.js"></script>
<script src="plugins/jquery-datatable/skin/bootstrap/js/dataTables.bootstrap.js"></script>
<script src="plugins/jquery-datatable/extensions/export/dataTables.buttons.min.js"></script>
<script src="plugins/jquery-datatable/extensions/export/buttons.flash.min.js"></script>
<script src="plugins/jquery-datatable/extensions/export/jszip.min.js"></script>
<script src="plugins/jquery-datatable/extensions/export/pdfmake.min.js"></script>
<script src="plugins/jquery-datatable/extensions/export/vfs_fonts.js"></script>
<script src="plugins/jquery-datatable/extensions/export/buttons.html5.min.js"></script>
<script src="plugins/jquery-datatable/extensions/export/buttons.print.min.js"></script>
<!-- Custom Js -->
<script src="js/pages/tables/jquery-datatable.js"></script>
</html>