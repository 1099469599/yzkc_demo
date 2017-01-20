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
<title>优质课程网站</title>
</head>
<body>
	<div class="col-md-12 col-sm-6">
		<ul class="nav nav-pills pull-right">
			<li class="active"><a href="welcome.jsp">主页</a></li>
			<li><a href="showInfoss.action">目录</a></li>
			<li><a href="#">联系我们</a></li>
		</ul>
		<h3 class="text-muted">计算机优质课程网站</h3>
	</div>
	<div class="jumbotron well">
		<h1>优质课程网站</h1>
		<p class="lead">管理员按这里↓</p>
		<p>
			<a class="btn btn-lg btn-success" href="admin/index.jsp">登陆</a>
		</p>
	</div>
	<jsp:include page="navigation.jsp" />
</body>
</html>