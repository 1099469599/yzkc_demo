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
</head>
<body>


	<!-- 主体阶段开始 -->
	<div class="col-md-12 col-sm-6">
		<div class="panel-group" id="accordion">
			<div class="panel panel-default">
				<div class="panel-heading">
					<h4 class="panel-title">
						<a data-toggle="collapse" data-parent="#accordion"
							href="#collapseOne"> 管理界面 </a>
					</h4>
				</div>
				<div id="collapseOne" class="panel-collapse collapse in">
					<div class="panel-body">
						<div class="accordion-inner">
							<a href="adminmanager.jsp"><span
								class="glyphicon glyphicon-home" style="font-size: 18px;">首页</span></a>
						</div>
						<div class="accordion-inner">
							<a href="admindetail.jsp"><span
								class="glyphicon glyphicon-user" style="font-size: 18px;">个人信息</span></a>
						</div>
						<div class="accordion-inner">
							<a href="adminchangepassword.jsp"><span
								class="glyphicon glyphicon-pencil" style="font-size: 18px;">管理员密码修改</span></a>
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
						<div class="accordion-inner">
							<a href="showarticle.action"><span
								class="glyphicon glyphicon-link" style="font-size: 18px;">文章管理</span></a>
						</div>
						<div class="accordion-inner">
							<a href="showuserinfo.action"><span
								class="glyphicon glyphicon-random" style="font-size: 18px;">用户管理</span></a>
						</div>
						<div class="accordion-inner">
							<a href="admininfo.action"><span
								class="glyphicon glyphicon-send" style="font-size: 18px;">资料管理</span></a>
						</div>
						<div class="accordion-inner">
							<a href="searchcomment.action"><span
								class="glyphicon glyphicon-comment" style="font-size: 18px;">评论管理</span></a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- 主体 阶段结束 -->

</body>
</html>