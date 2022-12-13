/**
 * cheerBox.js
 */
 
 // 변수 선언 및 초기화
 var sentence = "";
 var nth = 0;
 var cnt = 0;
 
 $(document).ready(function () {
	
 	// (응원 메시지 만들기) 버튼 클릭 시 슬라이드 애니메이션
	$('.btnRandom').on('click', function() {
 		
 		// 버튼을 다시 누를 시 내용 누적되지 않기 위해 sentence 내용 초기화
 		sentence = "";
		
		// 반목문을 통해 .word 1 ~ 4 까지의 박스 슬라이드
		// 난수를 통해 랜덤으로 슬라이드 하게끔 설계 
		for (var i = 1; i< 5; i++) {
			var randomNum = Math.floor(Math.random() * 8);
			var moveTop = -(randomNum * 50);
			
			$('.word'+i).animate({top:moveTop}, 'slow');
			
			// 난수에 1을 더해 index에 맞추기
			nth = randomNum + 1;
			// console.log(randomNum);
			
			// 변수 sentence에 .word 1 ~ 4 의 내용을 누적해서 저장
			sentence += ($('.word'+i+' p:nth-child('+nth+')')).text();			
			// console.log(sentence);
		}
	});
	
	// (새기기) 버튼 클릭 시 태극기 이미지의 랜덤한 영역에 랜덤한 색으로 randombox클래스의 div로 sentence의 내용 추가
	$('.btnWrite').on('click', function() {
		$('#cheerMessage').append("<div class='randomBox'>"+sentence+"</div>");
		
		// 버튼을 다시 누를 시 추가한 sentence 다시 추가하지 않기 위해 내용 초기화
		sentence = "";
		
		// 객체의 css에 랜덤한 좌표값과 랜덤한 색 지정
		$('.randomBox').each(function() {
			$(this).css({
				left:Math.random()*($('#cheerMessage').width()-$(this).width()),
				top:Math.random()*($('#cheerMessage').height()-$(this).height()),
				color:"#"+Math.round(Math.random()*0xffffff).toString(16)
			});
		});
		//console.log("#"+Math.round(Math.random()*0xffffff).toString(16));
	});
});