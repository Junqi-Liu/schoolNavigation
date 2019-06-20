function jump(){
	
	var pageIndex=$('#currentPageText').val();
	
	$("#jumpa").attr("href",$('input[name=basepath]').val()+"/getPointLookList?pageIndex="+pageIndex);
	
}
