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
<link href="framework/bootstrap-3.0.3/css/bootstrap.min.css"
	rel="stylesheet">
<link href="css/sample.css" rel="stylesheet" type="text/css" />
<script src="framework/bootstrap-3.0.3/js/jquery.min.js"></script>
<script src="framework/bootstrap-3.0.3/js/bootstrap.min.js"></script>
</head>
<body>
	<!-- 头部开始阶段 -->
	<jsp:include page="head.jsp" />
	<!-- 头部 阶段结束 -->

	<!-- 主体阶段开始 -->
	<div id="main">
		<div class="col-md-12 col-sm-6">
			<div class="col-md-3 col-sm-1.5">
				<ul class="nav nav-list well">
					<li class="nav-header">列表标题</li>
					<li class="active"><a href="showInfoss.action">返回</a></li>
					<c:forEach items="${infos}" var="infos">
						<li><a href="#">${infos.cname}</a></li>
					</c:forEach>
					<li class="divider"></li>
					<li><a href="#">帮助</a></li>
				</ul>
			</div>
			<div class="col-md-9 col-sm-4.5"
				style="background-color: #F8F8FF; font-family: 微软雅黑;">
				<table class="table table-hover">
					<c:forEach items="${infos}" var="infos">
						<tr>
							<td>
								<table>
									<tr>
										<th><span class="label label-primary">${infos.ctype}</span>
											<br></th>
									</tr>
									<tr>
										<td>${infos.cname}</td>
									</tr>
									<tr>
										<td>${infos.cinfof}</td>
									</tr>
									<tr>
										<td>${infos.cinfos}</td>
									</tr>
									<tr>
										<td>${infos.cinfot}</td>
									</tr>
								</table>
							</td>
						</tr>
					</c:forEach>
				</table>
			</div>
		</div>
	</div>
	<!-- 主体 阶段结束 -->
	<!-- 尾部 开始 -->
	<div class="col-md-12 col-sm-6"
		style="position: fixed; left: 0; bottom: 0; _position: absolute; _margin-top: expression(this.style.pixelHeight + document.documentElement.scrollTop);">
		<jsp:include page="foot.jsp"></jsp:include>
	</div>
	<!-- 尾部阶段 结束 -->
</body>
</html>