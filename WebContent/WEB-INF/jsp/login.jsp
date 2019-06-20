<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zh-cn">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>校园导航系统登录</title>
<link rel="stylesheet" type="text/css"
	href="<%=basepath%>/static/css/login.css" />
<link rel="stylesheet" type="text/css"
	href="<%=basepath%>/static/css/jquery.validate.css" />
<script src="<%=basepath%>/static/js/common/jquery-1.8.3.js"
	type="text/javascript"></script>
</head>
<body>
	<div class="main">
		<div class="content">
			<div class="title">欢迎来到校园导航系统,请登录</div>
			<form id="mainForm" method="post" action="checkLogin">
				<fieldset>
					<div class="input">
						用户ID:<input class="input_all name" name="userid" id="name"
							type="text" onFocus="this.className='input_all name_now';"
							onBlur="this.className='input_all name'" />
					</div>
					<div class="input">
						密&nbsp;&nbsp;&nbsp;&nbsp;码:<input class="input_all password"
							name="userpassword" id="password" type="password"
							onFocus="this.className='input_all password_now';"
							onBlur="this.className='input_all password'" />
					</div>
					<div>
						<span style="color: red">${msg1}</span> <span style="color: red">${msg2}</span>
					</div>
					<div class="enter">
						<input class="button" type="submit" id="submit_login"
							style="margin-left: 120px;" value="登录" /> <input class="button"
							type="button"
							onclick="window.location.href='<%=basepath%>/register'"
							style="margin-left: 10px;" value="注册" />
					</div>
					<div class="enter">
						<input type="button"
							onclick="window.location.href='<%=basepath%>/forNavigation'"
							style="margin-left: 110px;" value="我是新生,直接进入导航主页" />
					</div>
				</fieldset>
			</form>
		</div>
	</div>
</body>
</html>