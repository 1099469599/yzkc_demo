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
<link href="css/login.css" rel="stylesheet" type="text/css" />
<script src="framework/bootstrap-3.0.3/js/jquery.min.js"></script>
<script src="framework/bootstrap-3.0.3/js/bootstrap.min.js"></script>
</head>
<body>
	<!-- 头部开始阶段 -->
	<!-- 头部 阶段结束 -->
	<jsp:include page="navigation.jsp"></jsp:include>
	<!-- 主体阶段开始 -->
	<div class="col-md-12 col-sm-6">
		<div class="col-md-3 col-sm-1.5"></div>
		<div class="col-md-6 col-sm-3">
			<div class="loginpanel">
				<i id="loading" class="hidden fa fa-spinner fa-spin bigicon"></i>
				<h2>
					<span class="fa fa-quote-left "></span> 登录 <span
						class="fa fa-quote-right "></span>
				</h2>
				<div>
					<div class="input-group">
						<span class="input-group-addon"><span
							class="glyphicon glyphicon-user"> </span></span> <input id="luser"
							type="text" class="form-control" placeholder="登录账号"
							onkeypress="check_values();">
					</div>
					<div class="input-group">
						<span class="input-group-addon"><span
							class="glyphicon glyphicon-leaf"></span></span> <input id="lpassword"
							type="password" class="form-control" placeholder="输入密码"
							onkeypress="check_values();">
					</div>

					<div class="buttonwrapper">
						<button id="submits" class="btn btn-warning loginbutton">
							<span class="fa fa-check"></span>
						</button>
						<span id="lockbtn" class="fa fa-lock lockbutton redborder"></span>
					</div>
				</div>
			</div>
		</div>
		<div class="col-md-3 col-sm-1.5"></div>
	</div>
	<!-- jquery判断 -->
	<script type="text/javascript">
    function check_values() {
        if ($("#luser").val().length != 0 && $("#lpassword").val().length != 0) {
            $("#submits").animate({ left: '0' , duration: 'slow'});;
            $("#lockbtn").animate({ left: '260px' , duration: 'slow'});;
        }
    }		
	$("#submits").click(function(){
		$('#loading').removeClass('hidden');
		//这里书写登录相关后台处理，例如: Ajax请求用户名和密码验证
		var url="loginuser.action";
		$.post(url,{luser:$("#luser").val(),lpassword:$("#lpassword").val()},function(data){
			alert("登陆中!!");
			var o=eval("("+data+")");
			if(o!= null){
				location.href="showInfoss.action";
			}if(o==null){
				alert("帐号或者密码错误");
			}
		});
	});
</script>
	<!-- jquery end -->
	<!-- 主体 阶段结束 -->
	<!-- 尾部 开始 -->
	<div class="col-md-12 col-sm-6"
		style="position: fixed; left: 0; bottom: 0; _position: absolute; _margin-top: expression(this.style.pixelHeight + document.documentElement.scrollTop);">
		<jsp:include page="foot.jsp"></jsp:include>
	</div>
	<!-- 尾部阶段 结束 -->
</body>
</html>