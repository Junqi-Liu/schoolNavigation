<%
	String basepath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			 + request.getContextPath();
	request.setAttribute("basepath", basepath);
%>