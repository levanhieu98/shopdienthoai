$(function () {
    $('.js-basic-example').DataTable({
        responsive: true,
		pageLength:5, 'order': [[ 0, 'asc' ]],
   		"language": {
			"lengthMenu": "Hiện_MENU_tin trong mỗi trang",
			"zeroRecords": "Không Tìm Thấy",
			"info": "Đang hiện trang _PAGE_ trong _PAGES _ trang",
			"infoEmpty": "Không có dòng nào",
			"infoFiltered":"(Lọc trong _ MAX _ tin)",
			"search":"Tìm kiếm:",
      		"paginate": {"first":"<<","last":">>","next":">","previous":"<"},
					}
       });

    //Exportable table
    $('.js-exportable').DataTable({
        dom: 'Bfrtip',
        responsive: true,
        buttons: [
            'copy', 'csv', 'excel', 'pdf', 'print'
        ]
    });
});