<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
		<meta http-equiv="X-UA-Compatible" content="IE=9; IE=8; IE=7; IE=EDGE"/>
		<title></title>
		<link rel="stylesheet" type="text/css" href="<%=basepath%>/static/css/all.css"/>
		<link rel="stylesheet" type="text/css" href="<%=basepath%>/static/css/pop.css"/>
		<link rel="stylesheet" type="text/css" href="<%=basepath%>/static/css/main.css"/>
		<script type="text/javascript" src="<%=basepath%>/static/js/common/jquery-1.8.3.js"></script>
	    <script type="text/javascript" src="<%=basepath%>/static/js/userList.js"></script>

	</head>
	<body style="background: #e1e9eb;">
	<input type="hidden" name="basepath" value="${basepath}"/>
		<form action="selectByUserName" id="mainForm" method="post">

			<input type="hidden" name="page.currentPage" id="currentPage" value="1"/>
			<div class="right">
				<div class="rightCont">
					<p class="g_title fix">用户列表</p>
					<table class="tab1">
						<tbody>
							<tr>
								<td align="right" width="120">用户名：</td>
								<td>
									<input name="username" id="username" value="" class="allInput" type="text"/>
								</td>
	                            <td style="text-align: right;" width="120">
	                            	<input class="tabSub" value="查询" onclick="" type="submit"/>&nbsp;&nbsp;&nbsp;&nbsp;
	                            </td>
	       					</tr>
						</tbody>
					</table>
					<div class="zixun fix">
						<table class="tab2" width="100%">
							<tbody>
								<tr>
								    <th>用户ID</th>
								    <th>用户名</th>
								    <th>用户权限</th>
								    <th>创建时间</th>
								    <th>修改时间</th>
								</tr>

								<c:forEach items="${userPageList.list}" var="user">
								<%-- <c:forEach items="${records}" var="record" varStatus="stauts"> --%>
								<tr>
									<td>${user.userid}</td>
									<td>${user.username}</td>
									<td>
										<c:if test="${user.permission==0}">管理员</c:if>
										<c:if test="${user.permission==1}">普通用户</c:if>
									</td>
									<td>${user.creatdate}</td>	
									<td>${user.changedate}</td>	
									
									<td><a href="javascript:void(0);" onclick="location.href='${basepath}/userModify?userid=${user.userid}'">修改</a>&nbsp;&nbsp;&nbsp;&nbsp;

										<a href="deletedUser?userid=${user.userid}" onclick="">删除</a></td>
								</tr>
							</c:forEach>
							</tbody>
						</table>

					<div class="page fix">
							<a href="getUserList?pageIndex=1" class="first">首页</a>
						<c:if test="${userPageList.hasPreviousPage}">
							<a href="getuserList?pageIndex=${userPageList.getPageNum()-1}" class="pre">上一页</a>
						</c:if>
						当前第<span>${userPageList.pageNum}/${userPageList.pages}</span>页
						<c:if test="${userPageList.hasNextPage}">
							<a href="getUserList?pageIndex=${userPageList.getPageNum()+1}" class="next">下一页</a>
						</c:if>
							<a href="getUserList?pageIndex=${userPageList.getPages()}" class="last">末页</a>
						跳至 &nbsp;<input id="currentPageText" value="1"
							class="allInput w28" type="text">&nbsp;页 &nbsp; <a
							href="" id="jumpa" onclick="jump()" class="go">GO</a>
					</div>

				</div>
				</div>
			</div>
		</form>
	</body>
</html>