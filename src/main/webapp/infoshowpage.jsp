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
				<div class="panel-group" id="accordion">
					<div class="panel panel-default">
						<div class="panel-heading">
							<h4 class="panel-title">
								<a data-toggle="collapse" data-parent="#accordion"
									href="#collapseOne"> 点击进行搜索 </a>
							</h4>
						</div>
						<div id="collapseOne" class="panel-collapse collapse in">
							<div class="panel-body">
								<form action="cnameSearch.action">
									<div class="input-group">
										<span class="input-group-addon">
											<button
												class="btn-default btn-block glyphicon glyphicon-search"
												type="submit">Go!</button>
										</span> <input type="text" id="cname" name="cname"
											class="form-control">
									</div>
								</form>
							</div>
						</div>
					</div>
					<div class="panel panel-default">
						<div class="panel-heading">
							<h4 class="panel-title">
								<a data-toggle="collapse" data-parent="#accordion"
									href="#collapseTwo"> 全内容展示 </a>
							</h4>
						</div>
						<div id="collapseTwo" class="panel-collapse collapse">
							<div class="panel-body">
								<c:forEach items="${infos}" var="infos">
									<a href="${infos.id}_search.action">${infos.cname}</a>
								</c:forEach>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-md-9 col-sm-4.5">
				<table class="table table-hover">
					<c:forEach items="${infos}" var="infos">
						<tr>
							<td>
								<table>
									<tr>
										<th width="400px"><span class="label label-primary">${infos.ctype}</span>
											<br></th>
									</tr>
									<tr>
										<td><a href="${infos.id}_search.action">${infos.cname}</a>
										</td>
									</tr>
									<tr>
										<td><a href="${infos.id}_search.action">${infos.cinfof}</a>
										</td>
									</tr>
								</table>
							</td>
						</tr>
					</c:forEach>
					<!-- 分页功能 start -->
					<tr>
						<td><font size="2">共 ${page.totalPageCount} 页 </font> <font
							size="2">第 ${page.pageNow} 页 </font> <a
							href="showInfoss.action?pageNow=1">首页</a> <c:choose>
								<c:when test="${page.pageNow - 1 > 0}">
									<a href="showInfoss.action?pageNow=${page.pageNow - 1}">上一页</a>
								</c:when>
								<c:when test="${page.pageNow - 1 <= 0}">
									<a href="showInfoss.action?pageNow=1">上一页</a>
								</c:when>
							</c:choose> <c:choose>
								<c:when test="${page.totalPageCount==0}">
									<a href="showInfoss.action?pageNow=${page.pageNow}">下一页</a>
								</c:when>
								<c:when test="${page.pageNow + 1 < page.totalPageCount}">
									<a href="showInfoss.action?pageNow=${page.pageNow + 1}">下一页</a>
								</c:when>
								<c:when test="${page.pageNow + 1 >= page.totalPageCount}">
									<a href="showInfoss.action?pageNow=${page.totalPageCount}">下一页</a>
								</c:when>
							</c:choose> <c:choose>
								<c:when test="${page.totalPageCount==0}">
									<a href="showInfoss.action?pageNow=${page.pageNow}">尾页</a>
								</c:when>
								<c:otherwise>
									<a href="showInfoss.action?pageNow=${page.totalPageCount}">尾页</a>
								</c:otherwise>
							</c:choose></td>
					</tr>
					<!-- 分页功能 End -->
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