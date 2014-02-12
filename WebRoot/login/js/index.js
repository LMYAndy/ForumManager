$(function(){
	$('img[name=category]').click(function(){
		var $dv = $(this).parent().parent().next();
		var dv = $dv.get(0);
                /*if(dv.className == 'bm_c'){
                  dv.className="close";
		}else{
			dv.className = 'bm_c';
		}*/
		$dv.toggle();
	});
   $("#aa").click(function(){
      var d = $("#forum");
      var wth = d.width();
      if(wth == 960){
		  d.width(1250);
      }else{
      	  d.width(960);
      }
   });
   
})
/*
function widthauto(obj){
   var oBox=document.getElementsByTagName("div")[0];
    if (oBox.className == "wide_box")
    {
     oBox.className = "nar_box";
     }
     else
    { 
     oBox.className = "wide_box";
    }
}
*/