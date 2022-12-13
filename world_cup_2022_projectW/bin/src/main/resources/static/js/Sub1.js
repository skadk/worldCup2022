/**
 * 
 */
$(document).ready(function() {
	$('.GKlink').on('click', function() {
		$('html, body').animate({ scrollTop: 1450 }, 100);
	});
	$('.teamlink').on('click', function() {
		$('html, body').animate({ scrollTop: 650 }, 100);
	});
	$('.DFlink').on('click', function() {
		$('html, body').animate({ scrollTop: 2000 }, 100);
	});
	$('.MFlink').on('click', function() {
		$('html, body').animate({ scrollTop: 3000 }, 100);
	});
	$('.FWlink').on('click', function() {
		$('html, body').animate({ scrollTop: 4500 }, 100);
	});
	$(window).on('scroll', function() {
		// 스크롤되는 문서의 top이 #headerBox 이상이면 메인 메뉴 고정시키고 그림자 표시
		if ($(document).scrollTop() >= $('#wrapmenu').height()) {
			$('#position').addClass('mainMenuFixed');
		} else {
			$('#position').removeClass('mainMenuFixed');
		}
	});

});