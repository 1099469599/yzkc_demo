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
			<form class="form-horizontal" method="post" action="addluser.action">
				<fieldset>
					<legend>用户注册</legend>
					<div class="form-group">
						<input type="hidden" name="lid" /> <label for="luser">用户名:</label>
						<!-- 为每个需要的元素添加required -->
						<input type="text" id="luser" name="luser" class="required"
							placeholder="用户名至少为6位" />
					</div>
					<div class="form-group">
						<label for="lpassword">密 码:</label> <input type="password"
							id="lpassword" name="lpassword" class="required"
							placeholder="请输入至少6位密码" />
					</div>
					<div class="form-group">
						<label for="personinfo">个人资料:</label> <input type="text"
							id="ldetail" name="ldetail" />
					</div>
					<input type="hidden" id="limage" value="image/bs.png" />
					<div class="sub">
						<input type="submit" value="提交" id="submit-button"
							class="btn-success" /> <input type="button" value="验证" id="send"
							class="btn-warning" /> <input type="reset" id="res"
							class="btn-danger" />
					</div>
				</fieldset>
			</form>
		</div>
		<div class="col-md-3 col-sm-1.5"></div>
	</div>

	<script type="text/javascript">
$(function(){
    
    $("#submit-button").attr("disabled", true);
    $("form :input.required").each(function(){
        var $required = $("<strong class='high'> *</strong>"); //创建元素
        $(this).parent().append($required); //然后将它追加到文档中
    });
     //文本框失去焦点后
    $('form :input').blur(function(){
         var $parent = $(this).parent();
         $parent.find(".formtips").remove();
         //验证用户名
         if( $(this).is('#luser') ){
                if( this.value=="" || this.value.length < 6 ){
                    var errorMsg = '请输入至少6位的用户名.';
                    $parent.append('<span class="formtips onError">'+errorMsg+'</span>');
                }
                if( this.value=="" || this.value.length > 12 ){
                    var errorMsg = '请输入少于12位的用户名.';
                    $parent.append('<span class="formtips onError">'+errorMsg+'</span>');
                }
                else{
                    var okMsg = '输入正确.';
                    $parent.append('<span class="formtips onSuccess">'+okMsg+'</span>');
                }
         }
         //验证
         if( $(this).is('#lpassword') ){
            if( this.value=="" || this.value.length < 6 ){
                var errorMsg = '请输入至少6位的密码.';
                  $parent.append('<span class="formtips onError">'+errorMsg+'</span>');
            }else{
                  var okMsg = '输入正确.';
                  $parent.append('<span class="formtips onSuccess">'+okMsg+'</span>');
            }
         }
    }).keyup(function(){
       $(this).triggerHandler("blur");
    }).focus(function(){
         $(this).triggerHandler("blur");
    });//end blur

    
    //提交，最终验证。
     $('#send').click(function(){
            $("form :input.required").trigger('blur');
            var numError = $('form .onError').length;
            if(numError){
                return false;
            } 
            alert("通过验证成功.");
            $("#submit-button").removeAttr("disabled");
     });

    //重置
     $('#res').click(function(){
            $(".formtips").remove(); 
     });
})
</script>
	<!-- 主体 阶段结束 -->
	<!-- 尾部 开始 -->
	<div class="col-md-12 col-sm-6"
		style="position: fixed; left: 0; bottom: 0; _position: absolute; _margin-top: expression(this.style.pixelHeight + document.documentElement.scrollTop);">
		<jsp:include page="foot.jsp"></jsp:include>
	</div>
	<!-- 尾部阶段 结束 -->
</body>
</html>