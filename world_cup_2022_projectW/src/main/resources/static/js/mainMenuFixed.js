/**
 * 
 */
 
$(document).ready(function(){
	$(window).on('scroll',function(){
		if($(document).scrollTop() >= 80)
		{
			$('#mainMenuBox').addClass('mainMenuFixed');
		}
		else
		{
			$('#mainMenuBox').removeClass('mainMenuFixed');
		}
	});
});