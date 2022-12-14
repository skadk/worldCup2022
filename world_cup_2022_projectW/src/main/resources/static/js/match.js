/**
 *  match.js
 */
 
$(document).ready(function() {
	var matchNo = 0;
	var nation1 = 0;
	var nation2 = 0;
	
	
	//인덱스탭 경기일정 선택시 화면 전환 구간
	$('.tab-button').on('click', function() {
		var index = $(this).index();
		
		matchNo = index;
		console.log(matchNo);
		
		$('.mainBet').removeClass('show');
		$('.tab-button').removeClass('active');
		$('.mainBet').eq(index).addClass('show');
		$('.tab-button').eq(index).addClass('active');
	});
	

	// 가운데 트로피 클릭시 무승부 구간
	$('.draw1').on('click', function() {
		
		nation1 = 1;
		nation2 = 1;
		
		console.log(nation1);
		console.log(nation2);		
	
		$('.rightBet1').addClass('grayscale');
		$('.leftBet1').addClass('grayscale');
		$('.score1').addClass('on');
	});

	$('.draw2').on('click', function() {
		$('.rightBet2').addClass('grayscale');
		$('.leftBet2').addClass('grayscale');
		$('.score2').addClass('on');
	});

	$('.draw3').on('click', function() {
		$('.rightBet3').addClass('grayscale');
		$('.leftBet3').addClass('grayscale');
		$('.score3').addClass('on');
	});



	//초기화 버튼 클릭시 초기화
	$('.resetBtn1').on('click', function() {
		$('.leftBet1').removeClass('grayscale');
		$('.rightBet1').removeClass('grayscale');
		$('.score1').removeClass('on');
	})
	$('.resetBtn2').on('click', function() {
		$('.leftBet2').removeClass('grayscale');
		$('.rightBet2').removeClass('grayscale');
		$('.score2').removeClass('on');
	})
	$('.resetBtn3').on('click', function() {
		$('.leftBet3').removeClass('grayscale');
		$('.rightBet3').removeClass('grayscale');
		$('.score3').removeClass('on');
	})



	// 왼쪽 사진 or 오른쪽 사진 클릭시 블러 및 흑백 효과 적용 구간
	$('.leftBet1').on('click', function() {
		
		nation1 = 2;
		nation2 = 0;
		
		console.log(nation1);
		console.log(nation2);
		
		$('.leftBet1').removeClass('grayscale');
		$('.rightBet1').addClass('grayscale');
		$('.score1').addClass('on');
	});
	$('.rightBet1').on('click', function() {
	
		nation1 = 0;
		nation2 = 2;
		
		console.log(nation1);
		console.log(nation2);
		
		$('.rightBet1').removeClass('grayscale');
		$('.leftBet1').addClass('grayscale');
		$('.score1').addClass('on');
	});

	$('.leftBet2').on('click', function() {
		$('.leftBet2').removeClass('grayscale');
		$('.rightBet2').addClass('grayscale');
		$('.score2').addClass('on');
	});
	$('.rightBet2').on('click', function() {
		$('.rightBet2').removeClass('grayscale');
		$('.leftBet2').addClass('grayscale');
		$('.score2').addClass('on');
	});

	$('.leftBet3').on('click', function() {
		$('.leftBet3').removeClass('grayscale');
		$('.rightBet3').addClass('grayscale');
		$('.score3').addClass('on');
	});
	$('.rightBet3').on('click', function() {
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
			success:function(result) {
				alert("승부 예측 완료");
			},
			error:function() {
				alert("실패");
			}
		}); // ajax 종료
	});
});
