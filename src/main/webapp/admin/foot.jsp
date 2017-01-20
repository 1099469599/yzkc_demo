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
</head>
<body>
	<div class="col-md-12 col-sm-6"
		style="bottom: 0; background-image: url(../image/foot.jpg); background-size: 100% 100%; opacity: 0.5; filter: alpha(opacity = 50); -ms-filter: alpha(opacity = 50); height: atuo px;">
		<center style="font-family: 微软雅黑;">
			<div class="col-md-12 col-sm-6">
				<a href="#" title="关于我们">关于我们</a> <a href="#" title="人才招聘">人才招聘</a>
				<a href="#" title="讲师招募">讲师招募</a> <a href="#" title="联系我们">联系我们</a>
			</div>
			<div class="col-md-12 col-sm-6">
				<span class="glyphicon glyphicon-align-justify">友情链接：</span> <a
					href="http://hao.360.cn" target="_blank" title="360导航">360导航</a> <a
					href="http://www.php-z.com/" target="_blank" title="PHP站中文网">PHP站中文网</a>
				<a href="http://www.hao123.com" target="_blank" title="hao123">hao123</a>
				<a href="http://www.lagou.com" target="_blank" title="拉勾网">拉勾网</a> <a
					href="http://www.admin10000.com/" target="_blank" title="web开发者">web开发者</a>
				<a href="/about/friendly" title="友情链接">更多...</a>
			</div>
			<div class="footer-copyright">Copyright © 2016 test.com All
				Rights Reserved | 备案none</div>
			<div
				style="text-align: center; margin-top: -10px; padding-bottom: 10px;">
			</div>
		</center>
	</div>
</body>
</html>