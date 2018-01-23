
$(window).load(function(){
    $('.preloader').delay(1000).fadeOut("slow"); // set duration in brackets    
});

// HOME BACKGROUND SLIDESHOW
$(function(){
    jQuery(document).ready(function() {
		$('body').backstretch([
	 		 "/views/images/tm-bg-slide-1.jpg",
	 		 "/views/images/tm-bg-slide-2.jpg",
			 "/views/images/tm-bg-slide-3.jpg"
	 			], 	{duration: 3200, fade: 1300});
		});

})
