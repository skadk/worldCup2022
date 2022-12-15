/**
 * admin.js
 */
 
$(document).ready(function() {
 
 	$('#pointBtn').on('click', function() {
		$.ajax({
			type:"post",
			url:"/match/pointGive",
			success:function() {
				alert("포인트 지급 완료");
			},
			error:function() {
				alert("포인트 지급 실패 ㅠㅠ");
			}
		}); // ajax 종료
	});
	
});