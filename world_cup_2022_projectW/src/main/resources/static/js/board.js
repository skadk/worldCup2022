/**
 * board.js
 */
 
 $(document).ready(function() {
 	$('#button').on('click', function() {
 		event.preventDefault();
 	
 		$.ajax({
 			type:"post",
 			url:"/menu/boardList",
 			data:{"boardText":$('#boardText').val()},
 			dataType:"text",
 			success:function(result) {
 				if (result != null) {
 					alert("글이 등록되었습니다");
 					$("#boardTextList").append("<p>" + result + "</p>");
 				} else {
 					alert("글 목록을 불러오지 못했습니다");
 				}
 			},
 			error:function() {
 				alert("실패했습니다 다시 시도해주세요");
 			},
 			complete:function() {
 				// alert("작업 완료");
 			}
 		}); // ajax 종료
 	
 	});
 });
 