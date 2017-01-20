<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page language="java" import="java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en" ng-app="UeditorApp">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>优质课程网站</title>
<link href="framework/bootstrap-3.0.3/css/bootstrap.min.css"
	rel="stylesheet">
<link href="css/sample.css" rel="stylesheet" type="text/css" />
<link href="utf8-jsp/themes/default/css/ueditor.css" rel=stylesheet>
<script src="framework/bootstrap-3.0.3/js/jquery.min.js"></script>
<script src="framework/bootstrap-3.0.3/js/bootstrap.min.js"></script>
</head>

<body ng-controller="CTRL" onload="disptime();">
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
				<div class="col-md-2 col-sm-1"></div>
				<div class="col-md-8 col-sm-4.5">
					<div class="col-md-12 col-sm-6">
						<div class="input-group">
							<span class="input-group-addon glyphicon glyphicon-user">文章主题:</span>
							<input type="text" class="form-control" ng-model="content_aname" />
						</div>
					</div>
					<div class="col-md-12 col-sm-6">
						<span class="glyphicon glyphicon-user" style="font-size: 20px;">文章内容↓</span>
					</div>
					<div class="col-md-12 col-sm-6">
						<br> <br>
					</div>
					<div class="col-md-12 col-sm-6">
						<div class="ueditor" ng-model="content_article"
							config="_textConfig"></div>
					</div>
				</div>
				<div class="col-md-2 col-sm-1"></div>
				<!-- 分离 -->
				<div class="col-md-12 col-sm-9">
					<div class="col-md-3 col-sm-1.5">
						<span class="glyphicon glyphicon-user">预览效果</span>
					</div>
					<div class="col-md-6 col-sm-3">
						<div class="input-group">
							<span class="input-group-addon glyphicon glyphicon-user">文章主题:</span>
							<input type="text" class="form-control" id="aname"
								ng-model="content_aname" readonly />
						</div>
					</div>
					<div class="col-md-3 col-sm-1.5"></div>
					<div class="col-md-6 col-sm-3">
						<div class="input-group">
							<span class="input-group-addon glyphicon glyphicon-user">作者:</span>
							<input type="text" class="form-control" id="atype"
								value="${luser}" readonly />
						</div>
					</div>
					<div class="col-md-6 col-sm-3">
						<div class="input-group">
							<span class="input-group-addon glyphicon glyphicon-time">时间:</span>
							<input type="text" class="form-control" id="atime" name="atime"
								value="<%=new java.util.Date()%>" readonly />
						</div>
					</div>
					<div class="col-md-12 col-sm-6">
						<textarea ng-model="content_article" id="ainfo"
							class="form-control" rows="3" readonly></textarea>
					</div>
					<div class="col-md-4 col-sm-2"></div>
					<div class="col-md-4 col-sm-2">
						<button id="publish" type="button" class="btn btn-success">发布</button>
					</div>
					<div class="col-md-4 col-sm-2"></div>
				</div>
			</div>
		</div>
	</div>
	<!-- 主体 阶段结束 -->
	<!-- ng+editor js部分 -->
	<script type="text/javascript" src="utf8-jsp/ueditor.config.js"></script>
	<script type="text/javascript" src="utf8-jsp/ueditor.all.js"></script>
	<script type="text/javascript"
		src="angular-ueditor-master/angular.min.js"></script>
	<script type="text/javascript"
		src="angular-ueditor-master/dist/angular-ueditor.js"></script>
	<script type="text/javascript">
		angular.module('UeditorApp', [ "ng.ueditor" ]).controller(
				"CTRL",
				[
						"$scope",
						function($S) {
							$S._textConfig = {
								//这里可以选择自己需要的工具按钮名称,此处仅选择如下五个
								toolbars : [ [ 'fullscreen', 'source', '|',
										'undo', 'redo', '|', 'bold', 'italic',
										'underline', 'strikethrough',
										'superscript', 'subscript',
										'removeformat', 'formatmatch',
										'autotypeset', 'blockquote',
										'pasteplain', '|', 'forecolor',
										'backcolor', 'insertorderedlist',
										'insertunorderedlist', 'selectall',
										'cleardoc', '|', 'rowspacingtop',
										'rowspacingbottom', 'lineheight', '|',
										'customstyle', 'paragraph',
										'fontfamily', 'fontsize', '|',
										'directionalityltr',
										'directionalityrtl', 'indent', '|',
										'justifyleft', 'justifycenter',
										'justifyright', 'justifyjustify' ] ],
								//focus时自动清空初始化时的内容
								autoClearinitialContent : false,
								//关闭字数统计
								wordCount : false,
								//关闭elementPath
								elementPathEnabled : false
							}
						} ]);
	</script>
	<!-- 时间自动生成代码 -->
	<script language="javascript">
		function disptime() {
			var time = new Date(); //获得当前时间
			var year = time.getYear();//获得年、月、日
			var month = time.getMonth();
			var day = time.getDay();
			var hour = time.getHours(); //获得小时、分钟、秒 
			var minute = time.getMinutes();
			var second = time.getSeconds();
			var apm = "AM"; //默认显示上午: AM 
			if (hour > 12) //按12小时制显示 
			{
				hour = hour - 12;
				apm = "PM";
			}
			if (minute < 10) //如果分钟只有1位，补0显示 
				minute = "0" + minute;
			if (second < 10) //如果秒数只有1位，补0显示 
				second = "0" + second;
			/*设置文本框的内容为当前时间*/
			//document.atime.value =year+"年"+month+"月"+day+"日 "+hour+":"+minute+":"+second+" "+apm; 
			/*设置定时器每隔1秒（1000毫秒），调用函数disptime()执行，刷新时钟显示*/
			var myTime = setTimeout("disptime()", 1000);
		}
	</script>
	<!-- ng end -->
	<!-- jq ajax 开始-->
	<script type="text/javascript">
		$("#publish").click(function() {
			//这里书写登录相关后台处理，例如: Ajax请求添加
			var url = "Addarticle.action";
			$.post(url, {
				aname : $("#aname").val(),
				atype : $("#atype").val(),
				ainfo : $("#ainfo").val(),
				atime : $("#atime").val(),
				aup : 0,
				adown : 0
			}, function(data) {
				alert("添加中!!");
				var o = eval("(" + data + ")");
				if (o != null) {
					alert("添加成功");
					location.href = "redirect:showarticle.action";
				}
				if (o == null) {
					alert("值错误");
				}
			});
		});
	</script>
	<!-- 尾部 开始 -->
	<div class="col-md-12 col-sm-6"
		style="position: fixed; left: 0; bottom: 0; _position: absolute; _margin-top: expression(this.style.pixelHeight + document.documentElement.scrollTop);">
		<jsp:include page="foot.jsp"></jsp:include>
	</div>
	<!-- 尾部阶段 结束 -->
</body>
</html>