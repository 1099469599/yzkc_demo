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
<link href="../framework/bootstrap-3.0.3/css/bootstrap.min.css"
	rel="stylesheet">
<link href="../css/sample.css" rel="stylesheet" type="text/css" />
<script src="../framework/bootstrap-3.0.3/js/jquery.min.js"></script>
<script src="../framework/bootstrap-3.0.3/js/bootstrap.min.js"></script>
</head>
<body>
	<!-- 头部开始阶段 -->
	<jsp:include page="Anavigation.jsp" />
	<!-- 头部 阶段结束 -->

	<!-- 主体阶段开始 -->
	<div class="col-md-12 col-sm-6">
		<div class="col-md-3 col-sm-1.5">
			<jsp:include page="adminleft.jsp"></jsp:include>
		</div>
		<div class="col-md-9 col-sm-4.5">
			<div class="col-md-12 col-sm-6">
				<div class="alert alert-success">
					<button type="button" class="close" data-dismiss="alert">×</button>
					<h4>提示!</h4>
					<strong>警告!</strong> 请注意你的个人隐私安全.
				</div>
			</div>
			<div class="col-md-12 col-sm-6">
				<table class="table table-hover table-bordered table-condensed">
					<thead>
						<tr class="success">
							<td class="col-md-1.5"><span
								class="glyphicon glyphicon-tree-conifer">文章编号</span></td>
							<td class="col-md-1.5"><span
								class="glyphicon glyphicon-tree-deciduous">文章名</span></td>
							<td class="col-md-1.5"><span
								class="glyphicon glyphicon-list-alt">文章内容</span></td>
							<td class="col-md-1.5"><span
								class="glyphicon glyphicon-time">时间</span></td>
							<td class="col-md-1.5"><span
								class="glyphicon glyphicon-hand-user">作者</span></td>
							<td class="col-md-1.5"><span
								class="glyphicon glyphicon-heart">点赞次数</span></td>
							<td class="col-md-1.5"><span
								class="glyphicon glyphicon-heart-empty">被踩次数</span></td>
							<td class="col-md-1.5"><span
								class="glyphicon glyphicon-hand-right">操作</span></td>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${articles}" var="articles">
							<tr class="info">
								<td>${articles.aid}</td>
								<td>${articles.aname}</td>
								<td>${articles.ainfo}</td>
								<td>${articles.atime}</td>
								<td>${articles.atype}</td>
								<td>${articles.aup}</td>
								<td>${articles.adown}</td>
								<td><a href="${articles.aid}_delete_article.action"
									class="btn btn-default btn-sm"> <span
										class="glyphicon glyphicon-trash"></span></a></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
			<div class="col-md-12 col-sm-6">
				<!-- 分页功能 start -->
				<font size="2">共 ${page.totalPageCount} 页 </font> <font size="2">第
					${page.pageNow} 页 </font> <a href="showarticle.action?pageNow=1">首页</a>
				<c:choose>
					<c:when test="${page.pageNow - 1 > 0}">
						<a href="showarticle.action?pageNow=${page.pageNow - 1}">上一页</a>
					</c:when>
					<c:when test="${page.pageNow - 1 <= 0}">
						<a href="showarticle.action?pageNow=1">上一页</a>
					</c:when>
				</c:choose>
				<c:choose>
					<c:when test="${page.totalPageCount==0}">
						<a href="showarticle.action?pageNow=${page.pageNow}">下一页</a>
					</c:when>
					<c:when test="${page.pageNow + 1 < page.totalPageCount}">
						<a href="showarticle.action?pageNow=${page.pageNow + 1}">下一页</a>
					</c:when>
					<c:when test="${page.pageNow + 1 >= page.totalPageCount}">
						<a href="showarticle.action?pageNow=${page.totalPageCount}">下一页</a>
					</c:when>
				</c:choose>
				<c:choose>
					<c:when test="${page.totalPageCount==0}">
						<a href="showarticle.action?pageNow=${page.pageNow}">尾页</a>
					</c:when>
					<c:otherwise>
						<a href="showarticle.action?pageNow=${page.totalPageCount}">尾页</a>
					</c:otherwise>
				</c:choose>
				<!-- 分页功能 End -->
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