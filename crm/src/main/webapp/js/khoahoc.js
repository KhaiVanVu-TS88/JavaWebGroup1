$(document).ready(function() {

	$('.btn-xoa').click(function() {
		var id = $(this).attr("id-khoahoc")
		var div = $(this).closest('.card-khoahoc')
		$.ajax({
			method: "POST",
			url: "http://localhost:8080/cm2/api/KhoaHoc",
			data: { khoahoc_id: id }//ajax lay du lieu tu giao diện ra là id, sau đó truyền id cho khoahoc_id, sau đó nó gọi theo url và truyền khoahoc_id vào
		})
			.done(function(responeData) {
				if (responeData.isSuccess) {
					div.remove()
				} else {
					alert('Xoa that bai ' + responeData);
				}
			}).fail(function(jqXHR, textStatus, errorThrown) {
				alert('Lỗi khi gửi yêu cầu: ' + textStatus + ' - ' + errorThrown);
			});

	})
})