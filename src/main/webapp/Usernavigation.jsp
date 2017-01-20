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
</head>
<body>
	<div class="col-md-12 col-sm-6">
		<div class="panel-group" id="accordion">
			<div class="panel panel-default">
				<div class="panel-heading">
					<h4 class="panel-title">
						<a data-toggle="collapse" data-parent="#accordion"
							href="#collapseOne"> 用户管理界面 </a>
					</h4>
				</div>
				<div id="collapseOne" class="panel-collapse collapse in">
					<div class="panel-body">
						<div class="accordion-inner" style="font-size: 18px;">
							<a href="usermanager.jsp"><span
								class="glyphicon glyphicon-home">首页</span></a>
						</div>
						<div class="accordion-inner" style="font-size: 18px;">
							<a href="${lid}_searchinfo.action"><span
								class="glyphicon glyphicon-user">个人信息</span></a>
						</div>
						<div class="accordion-inner" style="font-size: 18px;">
							<a href="changeuserpassword.jsp"><span
								class="glyphicon glyphicon-pencil">密码修改</span></a>
						</div>
						<div class="accordion-inner" style="font-size: 18px;">
							<a href="userimage.jsp"><span
								class="glyphicon glyphicon-pencil">头像修改</span></a>
						</div>
					</div>
				</div>
			</div>
			<div class="panel panel-default">
				<div class="panel-heading">
					<h4 class="panel-title">
						<a data-toggle="collapse" data-parent="#accordion"
							href="#collapseTwo"> 管理员功能 </a>
					</h4>
				</div>
				<div id="collapseTwo" class="panel-collapse collapse">
					<div class="panel-body">
						<div class="accordion-inner" style="font-size: 18px;">
							<a href="userAddarticle.jsp"><span
								class="glyphicon glyphicon-comment">文章发表</span></a>
						</div>
						<div class="accordion-inner" style="font-size: 18px;">
							<a href="searchComment.action?comname=${luser}"><span
								class="glyphicon glyphicon-cog">用户自定义评论管理</span></a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>