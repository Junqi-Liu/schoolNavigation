<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zh-cn">
<head>  
    <meta name="viewport" content="initial-scale=1.0, user-scalable=no" />  
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />  
    <title>校园导航页面</title>  
    <style type="text/css">  
        html{height:100%}  
        body{height:100%;margin:0px;padding:0px}  
        #container{height:100%}  
    </style> 
    <script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=oNzLv9Nx2aEGlrq9nyFmIUVNiajK1wrG"></script>
    <link rel="stylesheet" type="text/css" href="<%=basepath%>/static/css/xcConfirm.css"/>
    <script type="text/javascript" src="<%=basepath%>/static/js/common/jquery-1.8.3.js"></script>
    <script type="text/javascript" src="<%=basepath%>/static/js/common/xcConfirm.js"></script>
	<script type="text/javascript" src="<%=basepath%>/static/js/navigation.js"></script>
</head>  
<body>
	<input type="hidden" name="basepath" value="${basepath}"/>
	<div id="container"></div>
	<script>
		$(function(){
			$.ajax({
				type:"post",
				url:"<%=basepath%>/api/getCenterPoint",
				dataType:"json",
				success:function(data){
					var map = new BMap.Map("container");          // 创建地图实例  
					var point = new BMap.Point(data[0].longitude,data[0].latitude);  // 创建点坐标  115.060996,30.227763   115.079681,30.242678
					map.centerAndZoom(point, 18);                 // 初始化地图，设置中心点坐标和地图级别  
					map.enableScrollWheelZoom(true);     //开启鼠标滚轮缩放
					
					var marker = new BMap.Marker(point);        // 创建标注    
					map.addOverlay(marker);                     // 将标注添加到地图中 
					var opts = {
							  position : point,    // 指定文本标注所在的地理位置
							  offset   : new BMap.Size(10, -20)    //设置文本偏移量
							}
							var label1 = new BMap.Label("这是新生迎新点", opts);  // 创建文本标注对象
					map.addOverlay(label1);                     // 将标注添加到地图中 
							
					var geolocation = new BMap.Geolocation();
					geolocation.getCurrentPosition(function(r){
						if(this.getStatus() == BMAP_STATUS_SUCCESS){
							var mk = new BMap.Marker(r.point);
							map.addOverlay(mk);
							mk.setAnimation(BMAP_ANIMATION_BOUNCE); //跳动的动画
							//map.panTo(r.point);
							var opts1 = {
									  position : r.point,    // 指定文本标注所在的地理位置
									  offset   : new BMap.Size(10, -20)    //设置文本偏移量
									}
									var label2 = new BMap.Label("这是您的位置", opts1);  // 创建文本标注对象
							map.addOverlay(label2);                     // 将标注添加到地图中 
							
							/* var walking = new BMap.WalkingRoute(map, {renderOptions:{map: map, autoViewport: true}});
							walking.search(mk, point); */
							
							//添加路线    
							var pointa = new BMap.Point(115.070361,30.234054);
							var optsa = {
									position : pointa,    // 指定文本标注所在的地理位置
									offset   : new BMap.Size(-60, -10)    //设置文本偏移量
									}
							var labela = new BMap.Label("问山居食堂", optsa);  // 创建文本标注对象
							labela.setStyle({
									 color : "blue",
									 fontSize : "12px",
									 height : "20px",
									 lineHeight : "20px",
									 fontFamily:"微软雅黑"
								 });
							map.addOverlay(labela);   
							
							var polyline = new BMap.Polyline([
								new BMap.Point(115.070756,30.233789),
								new BMap.Point(115.070361,30.234039),
								new BMap.Point(115.070019,30.234725)
								], {strokeColor:"white", strokeWeight:6, strokeOpacity:1});   //创建折线
								map.addOverlay(polyline);          //增加折线
								
							var polyline1 = new BMap.Polyline([
								new BMap.Point(115.07152,30.233719),
								new BMap.Point(115.071259,30.235037)
								], {strokeColor:"white", strokeWeight:6, strokeOpacity:1});   //创建折线
								map.addOverlay(polyline1);          //增加折线
								
							var polyline2 = new BMap.Polyline([
								new BMap.Point(115.070549,30.233766),
								new BMap.Point(115.070235,30.234039)
								], {strokeColor:"white", strokeWeight:6, strokeOpacity:1});   //创建折线
								map.addOverlay(polyline2);          //增加折线
								
							var polyline3 = new BMap.Polyline([
								new BMap.Point(115.069795,30.233891),
								new BMap.Point(115.069485,30.234468)
								], {strokeColor:"white", strokeWeight:6, strokeOpacity:1});   //创建折线
								map.addOverlay(polyline3);  
								
							var polyline4 = new BMap.Polyline([
								new BMap.Point(115.070725,30.231035),
								new BMap.Point(115.070994,30.230688)
								], {strokeColor:"white", strokeWeight:6, strokeOpacity:1});   //创建折线
								map.addOverlay(polyline4);
							
							//设置起始点进行导航
							var start = "";
							var end = "";
							map.addEventListener("click",function(e){
								if(""!=start&&""!=end){
									if(confirm("确定清除起始点吗？")){
										window.location.href="<%=basepath%>/forNavigation";
									}else{
									}
								}
								if(""!=start&&""==end){
									if(confirm("确定设置此位置为终点吗？")){
										end = new BMap.Point(e.point.lng,e.point.lat);
										var opts1 = {
												  position : end,    // 指定文本标注所在的地理位置
												  offset   : new BMap.Size(10, -20)    //设置文本偏移量
												}
												var label4 = new BMap.Label("这是终点", opts1);  // 创建文本标注对象
												map.addOverlay(label4);
										var walking = new BMap.WalkingRoute(map, { 
										    renderOptions: { 
										        map: map, 
										        autoViewport: true 
										    }
										});
										walking.search(start, end);
									}else{
									}
								}
								if(""==start&&""==end){
									if(confirm("确定设置此位置为起点吗？")){
										start = new BMap.Point(e.point.lng,e.point.lat);
										var opts1 = {
												  position : start,    // 指定文本标注所在的地理位置
												  offset   : new BMap.Size(10, -20)    //设置文本偏移量
												}
												var label5 = new BMap.Label("这是起点", opts1);  // 创建文本标注对象
												map.addOverlay(label5);
									}else{
									}
								}
							});
							
							
							$.ajax({
								type:"post",
								url:"<%=basepath%>/api/getPoint",
								dataType:"json",
								success:function(data){
									// 编写自定义函数,创建标注
									for (var i = 0; i < data.length; i ++) {
										var building = new BMap.Point(data[i].longitude,data[i].latitude);
										var opts2 = {
												  position : building,    // 指定文本标注所在的地理位置
												  offset   : new BMap.Size(-10,-10)    //设置文本偏移量
												}
										var Label3 = new BMap.Label(data[i].pointdesc,opts2);
										map.addOverlay(Label3);
									}
							}			
						});
						}
						else {
							alert('failed'+this.getStatus());
						}        
					});
					
					
					//添加右键菜单TODO
					// 定义一个控件类,即function
					function ZoomControl(){
					  // 默认停靠位置和偏移量
					  this.defaultAnchor = BMAP_ANCHOR_TOP_RIGHT;
					  this.defaultOffset = new BMap.Size(10, 10);
					}

					// 通过JavaScript的prototype属性继承于BMap.Control
					ZoomControl.prototype = new BMap.Control();

					// 自定义控件必须实现自己的initialize方法,并且将控件的DOM元素返回
					// 在本方法中创建个div元素作为控件的容器,并将其添加到地图容器中
					ZoomControl.prototype.initialize = function(map){
					  // 创建一个DOM元素
					  var div = document.createElement("div");
					  // 添加文字说明
					  div.appendChild(document.createTextNode("点我查找"));
					  // 设置样式
					  div.style.cursor = "pointer";
					  div.style.border = "1px solid red";
					  div.style.width = "70px";
					  div.style.height = "20px";
					  div.style.backgroundColor = "white";
					  // 绑定事件,点击弹框
					  div.onclick = function(e){
						  diag();
					  }
					  // 添加DOM元素到地图中
					  map.getContainer().appendChild(div);
					  // 将DOM元素返回
					  return div;
					}
					// 创建控件
					var myZoomCtrl = new ZoomControl();
					// 添加到地图当中
					map.addControl(myZoomCtrl);
					
					function diag()
					{
						var str = prompt("您想去哪里", ""); //将输入的内容赋给变量 name ，  
				        if (str)//如果返回的有内容  
				        {  
				        	var local = new BMap.LocalSearch(map, {
				        		renderOptions:{map: map}
				        	});
				        	local.search(str);
				        }  
					}
					
					
					},
					error:function(){
						alert("失败");
						}			
					});
		})
		
</script>
</body>
</html>