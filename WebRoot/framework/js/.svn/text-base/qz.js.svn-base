// JavaScript Document
function popupBody(name){
	var _this = $(name);
	var _ht = _this.height();
	var _w=-_this.width()/2;
	var _h=-_ht/2;
	
	var _ww = $(window).width();
	var _wh = $(window).height();
	
	if(_this.hasClass('z-form')){
	    var _step = 30;
		var _max = 400;
		
		var _d = _wh - 2*_step - _ht + _this.find('.z-form-scroll').height() + 16 + 22;
		_this.find('.z-form-scroll').height(_d);
		_h = -(_wh - 2*_step + 16 + 22)/2 + (22 - 16)/2;
	}
	
	_this.appendTo(document.body).addClass('popUp').css({"margin-left":_w,"margin-top":_h,'display':'block','z-index':'999'});
	
	
	
	if(!$('.popupBg').length > 0){
	    var _str = '<div class="popupBg" style="width:'+_ww+'px;height:'+_wh+'px;">&nbsp;</div>';
		$(_str).insertAfter('#wrapper');
	}else{
	    $('.popupBg').css('display', 'block');
	}
	
	if(_this.find('.z-form-head-title')){
		var _obj = _this.find('.z-form-head-title');
	    if(arguments[1]){
			_obj[0].className += ' z-form-head-'+arguments[2];
			if(arguments[2]){
		        _obj.html(arguments[1]+'<span class="'+arguments[2]+'">&nbsp;</span>');
			}else{
			    _obj.html('<span>'+arguments[1]+'</span>');
			}
	    }
	}
}


function closePopup(name){
	if($(name).hasClass('popUp')){
	    $(name).css('display','none');
	}else if(name == 'all'){
		$('.popUp').css('display','none');
	}else{
		if($(name).hasClass('z-icon-init-delay')){
		    setTimeout(function(){
			    $(name).parents('.popUp').css('display','none');
				
var _o = false;
for(var i=0;i<$('.popUp').length;i++){
    if($('.popUp').eq(i).css('display')!='none'){
        _o = true;
    }
}

if(!_o){
    $('.popupBg').css('display', 'none');
}
				
			},1200)    
		}else{
		    $(name).parents('.popUp').css('display','none');
		}
	}
	
	var _o = false;
	for(var i=0;i<$('.popUp').length;i++){
	    if($('.popUp').eq(i).css('display')!='none'){
		    _o = true;
		}
	}
	
	if(!_o){
		$('.popupBg').css('display', 'none');
	}
}