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
		<ul class="nav nav-pills">
			<li class="active"><a href="welcome.jsp">计算机优质课程网站</a></li>
			<li><a href="showInfoss.action">资料</a></li>
			<li><a href="showarticlesss.action">文章</a></li>
			<li class="disabled"><a href="#">开发中</a></li>
			<li class="dropdown pull-right"><a href="#"
				data-toggle="dropdown" class="dropdown-toggle">下拉<strong
					class="caret"></strong></a>
				<ul class="dropdown-menu">
					<c:choose>
						<c:when test="${luser != null}">
							<li><img src="${limage}" class="img-circle" width="40px"
								height="40px" />欢迎${luser}</li>
							<li><a href="usermanager.jsp"><span
									class="glyphicon glyphicon-hand-right">用户管理界面</span></a></li>
							<li><a
								href="${pageContext.request.contextPath}/logout.action"><span
									class="glyphicon glyphicon-off">退出</span></a></li>
						</c:when>
						<c:otherwise>
							<li><a href="login.jsp"><span
									class="glyphicon glyphicon-arrow-right">登陆</span></a></li>
						</c:otherwise>
					</c:choose>
					<li><a href="#"><span class="glyphicon glyphicon-th-large">更多设置</span></a>
					</li>
					<li class="divider"></li>
					<li><a href="register.jsp">没有帐号点击这里</a></li>
				</ul></li>
		</ul>
	</div>
</body>
</html>