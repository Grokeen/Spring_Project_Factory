var swiper = null;(function($){$.fn.isVisible = function(allowHeight){
	var scrollTop = $(window).scrollTop();
	var scrollEnd = scrollTop + $(window).height();
	var thisTop = $(this).offset().top;
	var thisEnd = thisTop + $(this).height();
	if(!allowHeight) {
		allowHeight=0;
	}
	if(allowHeight > $(this).height()) {
		allowHeight = $(this).height() / 2;
	}
	var topVisible = scrollTop <= thisTop + allowHeight && scrollEnd >= thisTop + allowHeight ;
	var bottomVisible = scrollTop <= thisEnd - allowHeight && scrollEnd >= thisEnd - allowHeight ;
	var visibled = (topVisible && bottomVisible);
	return visibled;
};

$(window).scroll(function(e) {
    if( $('body')[0].scrollHeight < $(window).scrollTop()+$(window).height()-200 ) {
        $('.scroll-fade:last').removeClass("dj-viewport");
        return false;
    }
	$('.dj-viewport').each(function(){
        try {
            if( $(this).isVisible(200) ) {
                $(this).removeClass("dj-viewport");
            }
        } finally {}
	});
}).scroll();
})(jQuery);