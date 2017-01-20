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
<link href="framework/bootstrap-3.0.3/css/bootstrap.min.css"
	rel="stylesheet">
<link href="css/sample.css" rel="stylesheet" type="text/css" />
<link href="css/pagination.css" rel="stylesheet" type="text/css" />
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
			<ul class="nav nav-list well">
				<li class="nav-header">列表标题</li>
				<li class="active">
					<form action="anameSearch.action">
						<div class="input-group">
							<span class="input-group-addon">
								<button class="btn-default btn-block glyphicon glyphicon-search"
									type="submit">Go!</button>
							</span> <input type="text" id="aname" name="aname" class="form-control">
						</div>
					</form> <!-- /input-group -->
				</li>
				<li>
					<table>
						<tr>
							<td class="col-md-3 col-sm-1.5">题目</td>
							<td class="col-md-3 col-sm-1.5">作者</td>
							<td class="col-md-3 col-sm-1.5">时间</td>
							<td class="col-md-3 col-sm-1.5">点赞</td>
							<td class="col-md-3 col-sm-1.5">踩</td>
						</tr>
						<c:forEach items="${articles}" var="articles">
							<tr>
								<td class="col-md-3 col-sm-1.5"><a
									href="${articles.aid}_article.action">${articles.aname}</a></td>
								<td class="col-md-3 col-sm-1.5"><a
									href="${articles.aid}_article.action">${articles.atype}</a></td>
								<td class="col-md-2 col-sm-1"><a
									href="${articles.aid}_article.action">${articles.atime}</a></td>
								<td class="col-md-2 col-sm-1"><a
									href="${articles.aid}_${articles.aup}_changeaup.action"
									class="btn btn-default btn-sm"> <span
										class="glyphicon glyphicon-heart"></span>${articles.aup}
								</a></td>
								<td class="col-md-2 col-sm-1"><a
									href="${articles.aid}_${articles.adown}_changeadown.action"
									class="btn btn-default btn-sm"> <span
										class="glyphicon glyphicon-heart-empty"></span>${articles.adown}
								</a></td>
							</tr>
						</c:forEach>
						<!-- 分页功能 start -->
						<tr>
							<td><font size="2">共 ${page.totalPageCount} 页 </font> <font
								size="2">第 ${page.pageNow} 页 </font> <a
								href="showarticlesss.action?pageNow=1">首页</a> <c:choose>
									<c:when test="${page.pageNow - 1 > 0}">
										<a href="showarticlesss.action?pageNow=${page.pageNow - 1}">上一页</a>
									</c:when>
									<c:when test="${page.pageNow - 1 <= 0}">
										<a href="showarticlesss.action?pageNow=1">上一页</a>
									</c:when>
								</c:choose> <c:choose>
									<c:when test="${page.totalPageCount==0}">
										<a href="showarticlesss.action?pageNow=${page.pageNow}">下一页</a>
									</c:when>
									<c:when test="${page.pageNow + 1 < page.totalPageCount}">
										<a href="showarticlesss.action?pageNow=${page.pageNow + 1}">下一页</a>
									</c:when>
									<c:when test="${page.pageNow + 1 >= page.totalPageCount}">
										<a href="showarticlesss.action?pageNow=${page.totalPageCount}">下一页</a>
									</c:when>
								</c:choose> <c:choose>
									<c:when test="${page.totalPageCount==0}">
										<a href="showarticlesss.action?pageNow=${page.pageNow}">尾页</a>
									</c:when>
									<c:otherwise>
										<a href="showarticlesss.action?pageNow=${page.totalPageCount}">尾页</a>
									</c:otherwise>
								</c:choose></td>
						</tr>
						<!-- 分页功能 End -->
					</table>
				</li>
				<li class="divider"></li>
				<li><a href="welcome.html">返回</a></li>
			</ul>
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