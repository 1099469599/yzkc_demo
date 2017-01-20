<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>优质课程网站</title>
<link href="../framework/bootstrap-3.0.3/css/bootstrap.min.css"
	rel="stylesheet">
<link href="../css/sample.css" rel="stylesheet" type="text/css" />
<script src="../framework/bootstrap-3.0.3/js/jquery.min.js"></script>
<script src="../framework/bootstrap-3.0.3/js/bootstrap.min.js"></script>
</head>
<body>
	<!-- 头部开始阶段 -->
	<!-- 头部 阶段结束 -->

	<!-- 主体阶段开始 -->
	<div class="box">
		<div class="login-box">
			<div class="login-title text-center">
				<h1>
					<small>优质课程网站后台管理系统</small>
				</h1>
			</div>
			<div class="login-content ">
				<div class="form">
					<form action="login.action" method="post">
						<div class="form-group">
							<div class="col-xs-12  ">
								<div class="input-group">
									<span class="input-group-addon"><span
										class="glyphicon glyphicon-user"></span></span> <input type="email"
										name="uname" id="uname" class="form-control"
										placeholder="管理员登陆">
								</div>
							</div>
						</div>
						<div class="form-group">
							<div class="col-xs-12  ">
								<div class="input-group">
									<span class="input-group-addon"><span
										class="glyphicon glyphicon-leaf"></span></span> <input
										type="password" name="password" id="password"
										class="form-control" placeholder="仅支持字母、符号、下划线">
								</div>
							</div>
						</div>
						<div class="form-group form-actions">
							<div class="col-xs-4 col-xs-offset-4 ">
								<button type="submit" class="btn btn-sm btn-info">
									<span class="glyphicon glyphicon-off"></span> 登录
								</button>
							</div>
						</div>
						<div class="form-group">
							<div class="col-xs-6 link">
								<p class="text-center remove-margin">
									<small>忘记密码？</small> <a href="javascript:void(0)"><small>找制作人</small></a>
								</p>
							</div>
							<div class="col-xs-6 link">
								<p class="text-center remove-margin">
									<small>还没注册?</small> <a href="javascript:void(0)"><small>管理员不支持注册</small></a>
								</p>
							</div>
						</div>
					</form>
				</div>
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