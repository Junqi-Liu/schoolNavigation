<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"><heuser>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
		<meta http-equiv="X-UA-Compatible" content="IE=9; IE=8; IE=7; IE=EDGE"/>
		<title></title>
		<link rel="stylesheet" type="text/css" href="<%=basepath%>/static/css/all.css"/>
		<link rel="stylesheet" type="text/css" href="<%=basepath%>/static/css/pop.css"/>
		<link rel="stylesheet" type="text/css" href="<%=basepath%>/static/css/main.css"/>
		<link rel="stylesheet" type="text/css" href="<%=basepath%>/static/css/jquery.validate.css"/>
		<script type="text/javascript" src="<%=basepath%>/static/js/common/jquery-1.8.3.js"></script>
	
	
	</heuser>
	<body style="background: #e1e9eb;">
		<form id="mainForm" method="post" action="updateUser?userid=${user.userid}" enctype="multipart/form-data">
		<input type="hidden" name="basepath" value="${user.userid}"/>
	
			<div class="right">
				<div class="rightCont">
					<p class="g_title fix">修改用户权限</p>
					<table class="tab1" width="100%">
						<tbody>
							<tr>
							<td align="right" width="10%">用户ID<font color="red">*</font>：</td>
							<td width="30%">
								<input id="userid" name="userid" value="${user.userid}" class="allInput" style="width:100%;" type="text" disabled/>
							</td>
							<td align="right" width="10%">用户名<font color="red">*</font>：</td>
							<td width="30%">
								<input id="username" name="username" value="${user.username}" class="allInput" style="width:100%;" type="text"/>
							</td>
						</tr>
						<tr>
							<td align="right" width="10%">用户权限<font color="red">*</font>：</td>
							<td width="30%">
								<div class="input">
		                    <select class="permission" name="permission" value="${user.permission}" class="allInput" style="width:100%;" type="text">
		                    	<option value="0" ${user.permission==0?'selected="selected"':''}>管理员</option>
		                    	<option value="1" ${user.permission==1?'selected="selected"':''}>普通用户</option>
		                    </select>
		                </div>
							</td>
						</tr>
					  </tbody>
					</table>
					<div style="text-align: center; margin-top: 30px;">
						<input class="tabSub" value="保     存" type="submit" onclick=""/>&nbsp;&nbsp;&nbsp;&nbsp;
						<input class="tabSub" value="返     回" type="button" onclick="window.location.href='<%=basepath%>/getUserList'"/>
					</div>
				</div>
			</div>
		</form>
	</body>
</html>