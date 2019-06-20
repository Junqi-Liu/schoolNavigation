<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=9; IE=8; IE=7; IE=EDGE" />
<title></title>
<link rel="stylesheet" type="text/css"
	href="<%=basepath%>/static/css/all.css" />
<link rel="stylesheet" type="text/css"
	href="<%=basepath%>/static/css/pop.css" />
<link rel="stylesheet" type="text/css"
	href="<%=basepath%>/static/css/main.css" />
<script type="text/javascript"
	src="<%=basepath%>/static/js/common/jquery-1.8.3.js"></script>
<script type="text/javascript"
	src="<%=basepath%>/static/js/pointList.js"></script>

</head>
<body style="background: #e1e9eb;">
	<input type="hidden" name="basepath" value="${basepath}" />
	<form action="selectByDesc" id="mainForm" method="post">

		<input type="hidden" name="page.currentPage" id="currentPage"
			value="1" />
		<div class="right">
			<div class="rightCont">
				<p class="g_title fix">坐标列表</p>
				<table class="tab1">
					<tbody>
						<tr>
							<td align="right" width="80">坐标描述：</td>
							<td><input name="pointdesc" id="pointdesc" value=""
								class="allInput" type="text" /></td>
							<td style="text-align: right;" width="160"><input
								class="tabSub" value="查询" onclick="" type="submit" />&nbsp;&nbsp;&nbsp;&nbsp;
								<t:auth url="/ad/addInit">
									<input class="tabSub" value="添加"
										onclick="location.href='${basepath}/pointAdd'" type="button" />
								</t:auth></td>
						</tr>
					</tbody>
				</table>
				<div class="zixun fix">
					<table class="tab2" width="100%">
						<tbody>
							<tr>
								<th>序号</th>
								<th>经度</th>
								<th>纬度</th>
								<th>坐标描述</th>
								<th>坐标类型</th>
								<th>状态</th>
							</tr>

							<c:forEach items="${pointPageList.list}" var="point">
								<tr>
									<td>${point.pointid}</td>
									<td>${point.longitude}</td>
									<td>${point.latitude}</td>
									<td>${point.pointdesc}</td>
									<td>${point.type}</td>
									<td><c:if test="${point.state=='U'}">正常</c:if> 
									    <c:if test="${point.state=='E'}">已删除</c:if>
									    <c:if test="${point.state=='W'}">确认中</c:if></td>
	<c:if test="${point.state=='U'}"><td><a href="javascript:void(0);"
										onclick="location.href='${basepath}/pointModify?pointid=${point.pointid}'">修改</a>&nbsp;&nbsp;&nbsp;&nbsp;

										<a href="deletedPoint?pointid=${point.pointid}" onclick="">删除</a></td></c:if>
	<c:if test="${point.state=='E'}"><td><a href="recoverPoint?pointid=${point.pointid}" onclick="">恢复</a></td></c:if>
	<c:if test="${point.state=='W'}"><td><a href="confirmPoint?pointid=${point.pointid}" onclick="">确认</a></td></c:if>
								</tr>

							</c:forEach>


						</tbody>
					</table>

					<div class="page fix">
						<a href="getPointList?pageIndex=1" class="first">首页</a>
						<c:if test="${pointPageList.hasPreviousPage}">
							<a href="getPointList?pageIndex=${pointPageList.getPageNum()-1}"
								class="pre">上一页</a>
						</c:if>
						当前第<span>${pointPageList.pageNum}/${pointPageList.pages}</span>页
						<c:if test="${pointPageList.hasNextPage}">
							<a href="getPointList?pageIndex=${pointPageList.getPageNum()+1}"
								class="next">下一页</a>
						</c:if>
						<a href="getPointList?pageIndex=${pointPageList.getPages()}"
							class="last">末页</a> 跳至 &nbsp;<input id="currentPageText"
							value="1" class="allInput w28" type="text">&nbsp;页 &nbsp;
						<a href="" id="jumpa" onclick="jump()" class="go">GO</a>
					</div>

				</div>
			</div>
		</div>
	</form>
</body>
</html>