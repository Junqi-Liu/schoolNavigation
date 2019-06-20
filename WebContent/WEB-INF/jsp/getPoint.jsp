<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="viewport" content="initial-scale=1.0, user-scalable=no" />
	<style type="text/css">
		body, html,#allmap {width: 100%;height: 100%;overflow: hidden;margin:0;font-family:"微软雅黑";}
	</style>
	<script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=oNzLv9Nx2aEGlrq9nyFmIUVNiajK1wrG"></script>
	<title>单击获取点击的经纬度</title>
</head>
<body>
	<div id="allmap"></div>
</body>
</html>
<script type="text/javascript">
	// 百度地图API功能
	var map = new BMap.Map("allmap");    
	var point = new BMap.Point(115.072616,30.235341);
	map.centerAndZoom(point,17);           
	//单击获取点击的经纬度
	map.addEventListener("click",function(e){
		var getPoint = e.point.lng + "," + e.point.lat;
		prompt("该座标经纬度为（经度，纬度），请复制", getPoint)
	});
</script>
