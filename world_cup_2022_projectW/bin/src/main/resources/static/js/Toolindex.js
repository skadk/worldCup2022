/**
 * 
 */
 
$(document).ready(function(){
	$(window).on('scroll',function(){
		if($(document).scrollTop() >= 80)
		{
			$('#mainIndexBox').addClass('mainIndexFixed');
		}
		else
		{
			$('#mainIndexBox').removeClass('mainIndexFixed');
		}
	});
});