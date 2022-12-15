/**
 * prize.js
 */
 
 $(document).ready(function() {
 	$('.przBtn500').on('click', function() {
		$.ajax({
			type:"post",
			url:"/menu/prizeRaffle500",
			dataType:"text",
			success:function(result) {
				if (result == "success") {
					alert("응모 완료");
				} else {
					alert("포인트가 부족합니다");
				}
			},
			error:function() {
				alert("로그인 후 다시 이용해주세요");
			}
		}); // ajax 종료
	});
	
 	$('.przBtn1000').on('click', function() {
		$.ajax({
			type:"post",
			url:"/menu/prizeRaffle1000",
			dataType:"text",
			success:function(result) {
				if (result == "success") {
					alert("응모 완료");
				} else {
					alert("포인트가 부족합니다");
				}
			},
			error:function() {
				alert("로그인 후 다시 이용해주세요");
			}
		}); // ajax 종료
	});
 	$('.przBtn10000').on('click', function() {
		$.ajax({
			type:"post",
			url:"/menu/prizeRaffle10000",
			dataType:"text",
			success:function(result) {
				if (result == "success") {
					alert("응모 완료");
				} else {
					alert("포인트가 부족합니다");
				}
			},
			error:function() {
				alert("로그인 후 다시 이용해주세요");
			}
		}); // ajax 종료
	});
 	$('.przBtn20000').on('click', function() {
		$.ajax({
			type:"post",
			url:"/menu/prizeRaffle20000",
			dataType:"text",
			success:function(result) {
				if (result == "success") {
					alert("응모 완료");
				} else {
					alert("포인트가 부족합니다");
				}
			},
			error:function() {
				alert("로그인 후 다시 이용해주세요");
			}
		}); // ajax 종료
	});
	
 });
 