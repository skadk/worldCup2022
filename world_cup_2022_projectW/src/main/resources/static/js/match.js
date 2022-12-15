/**
 *  match.js
 */
 
$(document).ready(function() {

	var matchNo = 1;
	var nation1 = 0;
	var nation2 = 0;
	
	
	//인덱스탭 경기일정 선택시 화면 전환 구간
	$('.tab-button').on('click', function() {
		var index = $(this).index();
		
		matchNo = index + 1;
		
		$('.mainBet').removeClass('show');
		$('.tab-button').removeClass('active');
		$('.mainBet').eq(index).addClass('show');
		$('.tab-button').eq(index).addClass('active');
	});
	

	// 가운데 트로피 클릭시 무승부 구간
	$('.draw1').on('click', function() {
		nation1 = 1;
		nation2 = 1;	
		$('.rightBet1').addClass('grayscale');
		$('.leftBet1').addClass('grayscale');
		$('.score1').addClass('on');
	});

	$('.draw2').on('click', function() {
		nation1 = 1;
		nation2 = 1;
		$('.rightBet2').addClass('grayscale');
		$('.leftBet2').addClass('grayscale');
		$('.score2').addClass('on');
	});

	$('.draw3').on('click', function() {
		nation1 = 1;
		nation2 = 1;
		$('.rightBet3').addClass('grayscale');
		$('.leftBet3').addClass('grayscale');
		$('.score3').addClass('on');
	});



	//초기화 버튼 클릭시 초기화
	$('.resetBtn1').on('click', function() {
		nation1 = 0;
		nation2 = 0;
		$('.leftBet1').removeClass('grayscale');
		$('.rightBet1').removeClass('grayscale');
		$('.score1').removeClass('on');
	})
	$('.resetBtn2').on('click', function() {
		nation1 = 0;
		nation2 = 0;
		$('.leftBet2').removeClass('grayscale');
		$('.rightBet2').removeClass('grayscale');
		$('.score2').removeClass('on');
	})
	$('.resetBtn3').on('click', function() {
		nation1 = 0;
		nation2 = 0;
		$('.leftBet3').removeClass('grayscale');
		$('.rightBet3').removeClass('grayscale');
		$('.score3').removeClass('on');
	})



	// 왼쪽 사진 or 오른쪽 사진 클릭시 블러 및 흑백 효과 적용 구간
	$('.leftBet1').on('click', function() {
		nation1 = 2;
		nation2 = 0;
		$('.leftBet1').removeClass('grayscale');
		$('.rightBet1').addClass('grayscale');
		$('.score1').addClass('on');
	});
	$('.rightBet1').on('click', function() {
		nation1 = 0;
		nation2 = 2;
		$('.rightBet1').removeClass('grayscale');
		$('.leftBet1').addClass('grayscale');
		$('.score1').addClass('on');
	});

	$('.leftBet2').on('click', function() {
		nation1 = 2;
		nation2 = 0;
		$('.leftBet2').removeClass('grayscale');
		$('.rightBet2').addClass('grayscale');
		$('.score2').addClass('on');
	});
	$('.rightBet2').on('click', function() {
		nation1 = 0;
		nation2 = 2;
		$('.rightBet2').removeClass('grayscale');
		$('.leftBet2').addClass('grayscale');
		$('.score2').addClass('on');
	});

	$('.leftBet3').on('click', function() {
		nation1 = 2;
		nation2 = 0;
		$('.leftBet3').removeClass('grayscale');
		$('.rightBet3').addClass('grayscale');
		$('.score3').addClass('on');
	});
	$('.rightBet3').on('click', function() {
		nation1 = 0;
		nation2 = 2;
		$('.rightBet3').removeClass('grayscale');
		$('.leftBet3').addClass('grayscale');
		$('.score3').addClass('on');
	});
	
	$('#matchBtn').on('click', function() {
		$.ajax({
			type:"post",
			url:"/match/insert",
			data:{"matchNo":matchNo,
				  "matchNation1":nation1,
				  "matchNation2":nation2},
			success:function() {
				alert("승부 예측 완료");
			},
			error:function() {
				alert("로그인 하고 해주세요");
				location.href="/member/login";
			}
		}); // ajax 종료
	});
	
	$('#matchBtn').on('click', function() {
		$.ajax({
			type:"post",
			url:"/match/percent1",
			data:{"matchNo":matchNo,
				  "matchNation1":nation1,
				  "matchNation2":nation2},
			dataType:"text",
			success:function(percent1_1) {
				$(".percent1").text(percent1_1 + "%");
			},
			error:function() {
				alert("로그인 하고 해주세요");
				location.href="/member/login";
			}
		}); // ajax 종료
	});
	
	$('#matchBtn').on('click', function() {
		$.ajax({
			type:"post",
			url:"/match/percent2",
			data:{"matchNo":matchNo,
				  "matchNation1":nation1,
				  "matchNation2":nation2},
			dataType:"text",
			success:function(percent2_1) {
				$(".percent2").text(percent2_1 + "%");
			},
			error:function() {
				alert("로그인 하고 해주세요");
				location.href="/member/login";
			}
		}); // ajax 종료
	});
	
	$('#matchBtn').on('click', function() {
		$.ajax({
			type:"post",
			url:"/match/percent3",
			data:{"matchNo":matchNo,
				  "matchNation1":nation1,
				  "matchNation2":nation2},
			dataType:"text",
			success:function(percent3_1) {
				$(".percent3").text(percent3_1 + "%");
			},
			error:function() {
				alert("로그인 하고 해주세요");
				location.href="/member/login";
			}
		}); // ajax 종료
	});
	
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
