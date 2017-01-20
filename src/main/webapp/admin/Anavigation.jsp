<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>优质课程后台管理网站</title>
</head>
<body>
	<div class="col-md-12 col-sm-6">
		<ul class="nav nav-pills">
			<li class="active"><a href="#">计算机优质课程后台管理网站</a></li>
			<li class="disabled"><a href="#">开发中</a></li>
			<li class="dropdown pull-right"><a href="#"
				data-toggle="dropdown" class="dropdown-toggle">下拉<strong
					class="caret"></strong></a>
				<ul class="dropdown-menu">
					<c:choose>
						<c:when test="${uname != null}">
							<li><img src="${image}" class="img-circle" width="40px"
								height="40px" />欢迎${uname}</li>
							<li><a href="logout.action"><span
									class="glyphicon glyphicon-off">退出</span></a></li>
						</c:when>
						<c:otherwise>
							<li><a href="index.jsp"><span
									class="glyphicon glyphicon-arrow-right">登陆</span></a></li>
						</c:otherwise>
					</c:choose>
					<li><a href="#"><span class="glyphicon glyphicon-th-large">更多设置</span></a>
					</li>
					<li class="divider"></li>
					<li><a href="#">管理员不支持注册</a></li>
				</ul></li>
		</ul>
	</div>
</body>
</html>