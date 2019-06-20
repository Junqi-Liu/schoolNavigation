<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=9; IE=8; IE=7; IE=EDGE" />
<title>校园导航系统首页</title>
<link href="<%=basepath%>/static/css/all.css" rel="stylesheet"
	type="text/css" />
<link href="<%=basepath%>/static/css/pop.css" rel="stylesheet"
	type="text/css" />
<link href="<%=basepath%>/static/css/index.css" rel="stylesheet"
	type="text/css" />
<script type="text/javascript"
	src="<%=basepath%>/static/js/common/jquery-1.8.3.js"></script>
<script type="text/javascript" src="<%=basepath%>/static/js/index.js"></script>

</head>
<body>
	<input type="hidden" name="basepath" value="${basepath}" />
	<input type="hidden" id="username" name="username"
		value="${user.username}" />
	<!-- 蒙版DIV -->
	<div id="mengban" style="display: none"></div>

	<form method="post" action="session" id="mainForm">
		<input type="hidden" name="_method" value="DELETE" />
		<div id="header">
			<div class="iheader">
				<div class="logo">
					<a href="#"><!-- <img src="" alt="" height="88px" width="500px" /> --></a>
				</div>
				<h1 style="font-size: 35px;margin-top:30px;margin-left:600px;">
					<span style="color: black">欢迎来到校园导航系统</span>
				</h1>
			</div>
		</div>
		<div id="container">
			<table style="vertical-align: top" cellspacing="0" cellpadding="0"
				bgcolor="#e1e9eb" border="0">
				<tbody>
					<tr>
						<td class="leftTd" style="vertical-align: top" width="150">
							<div class="left">
								<div class="ileft" id="subMenuDiv2" style="display: block;">
									<c:if test="${user.permission!=0}">
										<h3 id="look" onclick="clickSubMenu(this)">
											<a>坐标查看</a>
										</h3>
									</c:if>
									<h3 id="navigation" onclick="clickSubMenu1(this)">
										<a>进入导航</a>
									</h3>
									<h3 id="getPoint" onclick="clickSubMenu4(this)">
										<a>获取经纬度</a>
									</h3>
									<c:if test="${user.permission==0}">
										<h3 id="point" onclick="clickSubMenu2(this)">
											<a>坐标管理</a>
										</h3>
									</c:if>
									<c:if test="${user.permission==0}">
										<h3 id="user" onclick="clickSubMenu3(this)">
											<a>用户管理</a>
										</h3>
									</c:if>
								</div>
							</div>
						</td>
						<td style="vertical-align: top" height="600px" width="100%">
							<br />
						<iframe id="mainPage" src="" frameborder="0" height="580px"
								width="100%"></iframe><br />
						</td>
					</tr>
				</tbody>
			</table>
		</div>
		<div id="footer"></div>
	</form>
</body>
</html>