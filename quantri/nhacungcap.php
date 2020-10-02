

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<div class="container-fluid">
            
            <!-- Basic Examples -->
            <div class="row clearfix">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="card">
                        <div class="header">
                            <h2>
                               Danh Sách Nhà Cung Cấp
                            </h2>
                            <ul class="header-dropdown m-r--5">
                               
                            </ul>
                        </div>
                        <div class="body">
                            <div class="table-responsive">
                                <table  class=" table table-bordered table-striped table-hover js-basic-example dataTable ">
                                    <thead>
                                      <?php //require("../class/quantri.php");
                                            // $dt=new quantri;
                                         $ncc=$qt->getNCC(); ?>
                                        <tr>
                                            <th>idNCC</th>
                                            <th>tênNCC</th>
                                            <th>Thứ Tự</th>
                                            <th>Ẩn Hiện</th>
                                            <th>Cập nhật/Xóa</th> 
                                        </tr>
                                   
                                    </thead>
                                    
                                    <tbody>
                                            
                                    <?php while ($row=$ncc->fetch_assoc()) { ?>
                                        <tr>
                                            <td><?=$row['idNCC']?></td>
                                            <td><?=$row['tenNCC']?></td>
                                            <td><?=$row['thuTu']?></td>
                                            <td><?=($row['anHien']==1)?"Đang hiện":"Đang ẩn"?></td>
                                            <td>
                                            <a href="?p=sua_nhacungcap&key=<?=$row['idNCC']?>" class="btn bg-blue waves-effect">Cập Nhật</a> &nbsp;
                                            <a href="xoaNCC.php?idncc=<?=$row['idNCC']?>" class="btn bg-red waves-effect" onClick="return confirm ('Bạn có muốn xóa không')">Xoá</a>
                                            </td>
                                        </tr>
                                      <?php } ?>
                                    </tbody>
                                </table>
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