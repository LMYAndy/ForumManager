/* 回顶部的浮动窗口 */
$(function(){
	var n = 0;
	var x = 0;
	var fe = $('#backtotop');
	$(window).scroll(function(){
		x = (document.body.scrollTop || document.documentElement.scrollTop)
				+ n ;
		fe.css('top', x);
		if(x < 220){
			fe.fadeOut().hide();
		}else{
			fe.fadeIn().show();
		}
	});
	$(window).resize(function(){
		fe.css('top', (document.body.scrollTop || document.documentElement.scrollTop)
				+ n );
	});
});
