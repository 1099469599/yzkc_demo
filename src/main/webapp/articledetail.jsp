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
			<c:forEach items="${articles}" var="articles">
				<div class="col-md-6 col-sm-3">
					<input id="selectcomid" value="${articles.aid}" type="hidden">
					<span class="glyphicon glyphicon-tag">题目：</span>${articles.aname}
				</div>
				<div class="col-md-3 col-sm-1.5">
					<span class="glyphicon glyphicon-user">作者：</span>${articles.atype}
				</div>
				<div class="col-md-3 col-sm-1.5">
					<span class="glyphicon glyphicon-time">时间：</span>${articles.atime}
				</div>
				<div class="col-md-3 col-sm-1.5"></div>
				<div class="col-md-6 col-sm-3" style="padding-top: 20px;">
					${articles.ainfo}</div>
				<div class="col-md-3 col-sm-1.5"></div>
			</c:forEach>
		</div>
		<div class="col-md-12 col-sm-6">
			<div class="panel-group" id="accordion">
				<div class="panel panel-default">
					<div class="panel-heading">
						<h4 class="panel-title">
							<a data-toggle="collapse" data-parent="#accordion"
								href="#collapseOne"> 进行评论 </a>
						</h4>
					</div>
					<div id="collapseOne" class="panel-collapse collapse in">
						<div class="panel-body">
							<form action="addcomment.action">
								<input name="comname" value="${luser}" type="hidden">
								<c:forEach items="${articles}" var="articles">
									<input name="comid" value="${articles.aid}" type="hidden">
								</c:forEach>
								<input name="comimage" value="${limage}" type="hidden">
								<input name="cominfo" id="cominfo">
								<button type="submit" class="btn btn-success">评论提交</button>
							</form>
						</div>
					</div>
				</div>
				<div class="panel panel-default">
					<div class="panel-heading">
						<h4 class="panel-title">
							<a data-toggle="collapse" data-parent="#accordion"
								href="#collapseTwo" id="select"> 查看评论 </a>
						</h4>
					</div>
					<div id="collapseTwo" class="panel-collapse collapse">
						<div class="panel-body">
							<form action="showcomment.action">
								<c:forEach items="${articles}" var="articles">
									<input name="comid" value="${articles.aid}" type="hidden">
								</c:forEach>
								<button type="submit" class="btn btn-successs">跳转评论内容页面</button>
							</form>
						</div>
					</div>
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