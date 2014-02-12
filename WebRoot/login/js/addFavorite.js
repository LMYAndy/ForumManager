function addFavorite(){
	var sURL = 'http://www.baidu.com';
	var sTitle = '郑轻论坛';
	if(document.all){
		window.external.AddFavorite(sURL, sTitle);
	}else if(window.sidebar){
		window.sidebar.addPanel(sTitle, sURL, '');
	}
}