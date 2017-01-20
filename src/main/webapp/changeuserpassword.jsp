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
				<div class="col-md-12 col-sm-6">
					<fieldset>
						<legend>密码修改</legend>
						<label><input id="lid" value="${lid}" type="hidden"
							readonly /></label>
						<div class="col-md-12 col-sm-6">
							<span class="glyphicon glyphicon-user" style="font-size: 20px;">初始密码:</span>
							<input id="lpassword" type="password" class="required" />
						</div>
						<div class="col-md-12 col-sm-6">
							<span class="glyphicon glyphicon-arrow-right"
								style="font-size: 20px;">现密码:</span> <input id="lpassword2"
								type="password" class="required" />
						</div>
						<div class="col-md-12 col-sm-6">
							<button type="button" id="buttons" class="btn btn-success">提交</button>
						</div>
					</fieldset>
				</div>
			</div>
		</div>
	</div>
	<!-- jquery 判断 -->
	<script type="text/javascript">
$("form :input.required").each(function(){
    var $required = $("<strong class='high'> *</strong>"); //创建元素
    $(this).parent().append($required); //然后将它追加到文档中
});
 //文本框失去焦点后
$('form :input').blur(function(){
     var $parent = $(this).parent();
     $parent.find(".formtips").remove();
     //验证密码
     if( $(this).is('#lpassword') ){
            if( this.value=="" || this.value.length < 6 ){
                var errorMsg = '请输入至少6位的密码.';
                $parent.append('<span class="formtips onError">'+errorMsg+'</span>');
            }
            if( this.value=="" || this.value.length > 12 ){
                var errorMsg = '请输入少于12位的密码.';
                $parent.append('<span class="formtips onError">'+errorMsg+'</span>');
            }
            else{
                var okMsg = '输入正确.';
                $parent.append('<span class="formtips onSuccess">'+okMsg+'</span>');
            }
     }
     //验证重复
     if( $(this).is('#lpassword2') ){
         if( this.value=="" || this.value.length < 6 ){
             var errorMsg = '请输入至少6位的密码.';
             $parent.append('<span class="formtips onError">'+errorMsg+'</span>');
         }
         if( this.value=="" || this.value.length > 12 ){
             var errorMsg = '请输入少于12位的密码.';
             $parent.append('<span class="formtips onError">'+errorMsg+'</span>');
         }
         else{
             var okMsg = '输入正确.';
             $parent.append('<span class="formtips onSuccess">'+okMsg+'</span>');
         }
     }
}).keyup(function(){
   $(this).triggerHandler("blur");
}).focus(function(){
     $(this).triggerHandler("blur");
});//end blur
	
	$("#buttons").click(function(){
		//这里书写登录相关后台处理，例如: Ajax请求用户名和密码验证
		var url="changelpassword.action";
		$.post(url,{lid:$("#lid").val(),lpassword:$("#lpassword").val(),lpassword2:$("#lpassword2").val()},function(data){
			alert("修改中!!");
			var o=eval("("+data+")");
			if(o!= null){
				alert("修改成功");
			}else{
				alert("修改错误");
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