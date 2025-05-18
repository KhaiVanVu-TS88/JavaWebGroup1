$(document).ready(function(){
	
	$('.btn-xoa-lophoc').click(function(){
		var idlophoc = $(this).attr("id-lophoc")
		var row = $(this).closest('tr')
		$.ajax({
			method: "POST",
			url: "http://localhost:8080/cm2/api/lophoc/delete",
			data: { lophoc_id: idlophoc }//ajax lay du lieu tu giao diện ra là id, sau đó truyền id cho khoahoc_id, sau đó nó gọi theo url và truyền khoahoc_id vào
		})
			.done(function(responeData) {
				if (responeData.isSuccess) {
					row.remove()
				} else {
					alert('Xoa that bai ' + responeData);
				}
			}).fail(function(jqXHR, textStatus, errorThrown) {
				alert('Lỗi khi gửi yêu cầu: ' + textStatus + ' - ' + errorThrown);
			});
	})
	
})


