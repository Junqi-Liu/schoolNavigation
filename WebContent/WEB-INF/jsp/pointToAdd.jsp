<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"><head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
		<meta http-equiv="X-UA-Compatible" content="IE=9; IE=8; IE=7; IE=EDGE"/>
		<title></title>
		<link rel="stylesheet" type="text/css" href="<%=basepath%>/static/css/all.css"/>
		<link rel="stylesheet" type="text/css" href="<%=basepath%>/static/css/pop.css"/>
		<link rel="stylesheet" type="text/css" href="<%=basepath%>/static/css/main.css"/>
		<script type="text/javascript" src="<%=basepath%>/static/js/common/jquery-1.8.3.js"></script>
	
		
	</head>
	<body style="background: #e1e9eb;">
		<form id="mainForm" method="post" action="saveToPoint" enctype="multipart/form-data">
			<div class="right">
				<div class="rightCont">
					<p class="g_title fix">新增坐标</p>
					<table class="tab1" width="100%">
						<tbody>
							<tr>
							<td align="right" width="10%">经度<font color="red">*</font>：</td>
							<td width="30%">
								<input id="longitude" name="longitude" class="allInput" style="width:100%;" type="text"/>
							</td>
							<td align="right" width="10%">纬度<font color="red">*</font>：</td>
							<td width="30%">
								<input id="latitude" name="latitude" class="allInput" style="width:100%;" type="text"/>
							</td>
						</tr>
						<tr>
							<td align="right" width="10%">坐标描述<font color="red">*</font>：</td>
							<td width="30%">
								<input id="pointdesc" name="pointdesc"  class="allInput" style="width:100%;" type="text"/>
							</td>
						</tr>
					  </tbody>
					</table>
					<div style="text-align: center; margin-top: 30px;">
						<input class="tabSub" value="保     存" type="submit" onclick=""/>&nbsp;&nbsp;&nbsp;&nbsp;
						<input class="tabSub" value="返     回" type="button" onclick="window.location.href='<%=basepath%>/getPoint'"/>
					</div>
				</div>
			</div>
		</form>
	</body>
</html>