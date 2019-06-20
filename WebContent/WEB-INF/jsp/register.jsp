<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zh-cn">
	<head>
	    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	    <title>学生导航系统注册</title>
	    <link rel="stylesheet" type="text/css" href="<%=basepath%>/static/css/login.css" />
	    <link rel="stylesheet" type="text/css" href="<%=basepath%>/static/css/jquery.validate.css" />
	    <script src="<%=basepath%>/static/js/common/jquery-1.8.3.js" type="text/javascript"></script>
	</head>
	<body>
		<div class="main">
		    <div class="header hide"></div>
		    <div class="content">
		        <div class="title hide"></div>
		        <form id="mainForm" method="post" action="userRegister">
		            <fieldset>
		            	<div class="input">
		                    	用户ID:<input class="input_all name" name="userid" id="name" type="text" onFocus="this.className='input_all name_now';" onBlur="this.className='input_all name'"/>
		                </div>
		                <div class="input">
		                    	用户名:<input class="input_all name" name="username" id="name" type="text" onFocus="this.className='input_all name_now';" onBlur="this.className='input_all name'"/>
		                </div>
		                <div class="input">
		                    	密&nbsp;&nbsp;&nbsp;&nbsp;码:<input class="input_all password" name="userpassword" id="password" type="password" onFocus="this.className='input_all password_now';" onBlur="this.className='input_all password'"/>
		                </div>
		                <div>
		                	<span style="color:red">${msg3}</span>
		                </div>
		                <div class="enter">
		                    <input class="button hide" type="submit" id="submit_register" style="margin-left:150px;" value="注册" />
		                </div>
		            </fieldset>
		        </form>
		    </div>
		</div>
	</body>
</html>