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
<html lang="en" ng-app="UeditorApp">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>优质课程网站</title>
<link href="../framework/bootstrap-3.0.3/css/bootstrap.min.css"
	rel="stylesheet">
<link href="../css/sample.css" rel="stylesheet" type="text/css" />
<link href="../utf8-jsp/themes/default/css/ueditor.css" rel=stylesheet>
<script src="../framework/bootstrap-3.0.3/js/jquery.min.js"></script>
<script src="../framework/bootstrap-3.0.3/js/bootstrap.min.js"></script>
</head>
<body ng-controller="CTRL">
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
				<div class="col-md-2 col-sm-1"></div>
				<div class="col-md-8 col-sm-4.5">
					<div class="col-md-12 col-sm-6">
						<div class="input-group">
							<span class="input-group-addon glyphicon glyphicon-certificate">资料主题:</span>
							<input type="text" class="form-control" ng-model="content_cname" />
						</div>
					</div>
					<div class="col-md-12 col-sm-6">
						<div class="input-group">
							<span class="input-group-addon glyphicon glyphicon-tag">资料类型:</span>
							<input type="text" class="form-control" ng-model="content_ctype" />
						</div>
					</div>
					<div class="col-md-12 col-sm-6">
						<span class="glyphicon glyphicon-user" style="font-size: 20px;">资料内容↓</span>
					</div>
					<div class="col-md-12 col-sm-6">
						<br> <br>
					</div>
					<div class="col-md-12 col-sm-6">
						<div class="ueditor" ng-model="content_infof" config="_textConfig"></div>
					</div>
					<div class="col-md-12 col-sm-6">
						<div class="ueditor" ng-model="content_infos" config="_textConfig"></div>
					</div>
					<div class="col-md-12 col-sm-6">
						<div class="ueditor" ng-model="content_infot" config="_textConfig"></div>
					</div>
				</div>
				<div class="col-md-2 col-sm-1"></div>
				<!-- 分离 -->
				<div class="col-md-12 col-sm-9">
					<form action="addinfo.action">
						<div class="col-md-3 col-sm-1.5">
							<span class="glyphicon glyphicon-user">预览效果</span>
						</div>
						<div class="col-md-6 col-sm-3"></div>
						<div class="col-md-3 col-sm-1.5"></div>
						<div class="col-md-6 col-sm-3">
							<div class="input-group">
								<span class="input-group-addon glyphicon glyphicon-certificate">资料主题:</span>
								<input type="text" class="form-control" id="cname" name="cname"
									ng-model="content_cname" readonly />
							</div>
						</div>
						<div class="col-md-6 col-sm-3">
							<div class="input-group">
								<span class="input-group-addon glyphicon glyphicon-tag">资料类型:</span>
								<input type="text" class="form-control" id="ctype" name="ctype"
									ng-model="content_ctype" readonly />
							</div>
						</div>
						<div class="col-md-12 col-sm-6">
							<textarea ng-model="content_infof" id="cinfof" name="cinfof"
								class="form-control" rows="3" readonly></textarea>
						</div>
						<div class="col-md-12 col-sm-6">
							<textarea ng-model="content_infos" id="cinfos" name="cinfos"
								class="form-control" rows="3" readonly></textarea>
						</div>
						<div class="col-md-12 col-sm-6">
							<textarea ng-model="content_infot" id="cinfot" name="cinfot"
								class="form-control" rows="3" readonly></textarea>
						</div>
						<div class="col-md-12 col-sm-6">
							<button type="submit" class="btn btn-success">新增</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	<!-- 主体 阶段结束 -->
	<!-- 尾部 开始 -->
	<jsp:include page="foot.jsp"></jsp:include>
	<!-- 尾部阶段 结束 -->
	<!-- ng+editor js部分 -->
	<script type="text/javascript" src="../utf8-jsp/ueditor.config.js"></script>
	<script type="text/javascript" src="../utf8-jsp/ueditor.all.js"></script>
	<script type="text/javascript"
		src="../angular-ueditor-master/angular.min.js"></script>
	<script type="text/javascript"
		src="../angular-ueditor-master/dist/angular-ueditor.js"></script>
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
</body>
</html>