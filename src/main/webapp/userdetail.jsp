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
	<jsp:include page="navigation.jsp" />
	<!-- 头部 阶段结束 -->

	<!-- 主体阶段开始 -->
	<div class="col-md-12 col-sm-6">
		<div class="col-md-3 col-sm-1.5">
			<jsp:include page="Usernavigation.jsp"></jsp:include>
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
				<div class="col-md-10 col-sm-5">
					<form action="changeuserinfo.action">
						<input type="hidden" id="lid" name="lid" value="${users.lid}">
						<div class="input-group">
							<span class="input-group-addon glyphicon glyphicon-user">帐号名字</span>
							<input type="text" id="lusername" name="lusername"
								class="form-control" value="${users.lusername}" />
						</div>
						<div class="input-group">
							<span class="input-group-addon glyphicon glyphicon-phone-alt">座机</span>
							<input type="text" id="ltelephone" name="ltelephone"
								class="form-control" value="${users.ltelephone}" />
						</div>
						<div class="input-group">
							<span class="input-group-addon glyphicon glyphicon-plane">地址</span>
							<input type="text" id="laddress" name="laddress"
								class="form-control" value="${users.laddress}" />
						</div>
						<div class="input-group">
							<span class="input-group-addon glyphicon glyphicon-plus-sign">备注</span>
							<input type="text" id="ldetail" name="ldetail"
								class="form-control" value="${users.ldetail}" />
						</div>
						<div class="input-group">
							<span class="input-group-addon glyphicon glyphicon-tags">民族</span>
							<select class="form-control" id="ltype" name="ltype">
								<option value="Han"
									${users.ltype == 'Han' ? 'selected = "selected"' : ''}>Han</option>
								<option value="Miao"
									${users.ltype == 'Miao' ? 'selected = "selected"' : ''}>Miao</option>
								<option value="Mongol"
									${users.ltype == 'Mongol' ? 'selected = "selected"' : ''}>Mongol</option>
								<option value="Australian"
									${users.ltype == 'Australian' ? 'selected = "selected"' : ''}>Australian</option>
							</select>
						</div>
						<div class="input-group">
							<span class="input-group-addon glyphicon glyphicon-tint">其他</span>
							<input type="text" id="lextra" name="lextra" class="form-control"
								value="${users.lextra}" />
						</div>
						<div class="input-group">
							<input type="Submit" class="btn btn-success" value="信息提交" />
						</div>
					</form>
				</div>
				<div class="col-md-2 col-sm-1">
					<span class="glyphicon glyphicon-users">头像显示</span> <br> <img
						src="${users.limage}" class="img-circle" />
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