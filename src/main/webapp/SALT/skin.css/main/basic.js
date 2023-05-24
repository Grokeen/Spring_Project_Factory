/**
 * 움직이는 배너 Jquery Plug-in
 * @author  cafe24
 */

;(function($){

    $.fn.floatBanner = function(options) {
        options = $.extend({}, $.fn.floatBanner.defaults , options);
        
        return this.each(function() {
            var aPosition = $(this).position();
            var node = this;
            
            $(window).scroll(function() {       
                var _top = $(document).scrollTop();
                _top = (aPosition.top < _top) ? _top : aPosition.top;

                setTimeout(function () {
                    $(node).stop().animate({top: _top}, options.animate);
                }, options.delay);
            });
        });
    };

    $.fn.floatBanner.defaults = { 
        'animate'  : 500,
        'delay'    : 500
    };

})(jQuery);
    
/**
 * 문서 구동후 시작
 */
$(document).ready(function(){
    $('#banner, #quick').floatBanner();
});

/**
 *  썸네일 이미지 엑박일경우 기본값 설정
 */
$(window).load(function() {
    $("img.thumb,img.ThumbImage,img.BigImage").each(function($i,$item){
        var $img = new Image();
        $img.onerror = function () {
                $item.src="//img.echosting.cafe24.com/thumb/img_product_big.gif";
        }
        $img.src = this.src;
    });
});