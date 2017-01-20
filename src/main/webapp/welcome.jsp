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
<link href="css/copy.css" rel="stylesheet">
<script src="framework/bootstrap-3.0.3/js/jquery.min.js"></script>
<!--[if IE 6]>
			<script type='text/javascript' src='framework/bootstrap-3.0.3/js/8a-min.js'></script>
			<script languange="javascript">
				DD_belatedPNG.fix('*');
			</script>  
	<![endif]-->
</head>
<body>
	<div id="bg1" class="bg"
		style="position: absolute; top: 0px; left: 0px; width: 100%; height: 100%; background: url('images/1.jpg') center no-repeat;"></div>
	<div id="bg2" class="bg"
		style="position: absolute; top: 0px; left: 0px; width: 100%; height: 100%; background: url('images/2.jpg') center no-repeat; display: none;"></div>
	<div id="bg3" class="bg"
		style="position: absolute; top: 0px; left: 0px; width: 100%; height: 100%; background: url('images/3.gif') center no-repeat; display: none;"></div>
	<div id="bg4" class="bg"
		style="position: absolute; top: 0px; left: 0px; width: 100%; height: 100%; background: url('images/4.png') center no-repeat; display: none;"></div>
	<div id="bg5" class="bg"
		style="position: absolute; top: 0px; left: 0px; width: 100%; height: 100%; background: url('images/5.jpg') center no-repeat; display: none;"></div>
	<div id="bg6" class="bg"
		style="position: absolute; top: 0px; left: 0px; width: 100%; height: 100%; background: url('images/6.jpg') center no-repeat; display: none;"></div>
	<div id="dny"
		style="position: absolute; top: 0px; left: 0px; width: 0px; height: 0px; background: url('images/themebg.png') repeat; display:;"></div>

	<div
		style="position: absolute; top: 0px; left: 0px; width: 100%; height: 100%;">
		<!-- 头部开始 -->
		<div style="width: 1000px; height: 80px; margin: 0 auto;">
			<div id="tag"
				style="float: left; height: 55px; margin-top: 20px; width: 5px; background: #fff; font-size: 0px;"></div>
			<div style="float: left; width: 570px; height: 100%">
				<div style="width: 100%; height: 40px;">
					<div style="color: #fff; margin-left: 20px;">
						<div
							style="font-size: 10px; margin-top: 22px; float: left; margin-left: 0px;">服务热线：</div>
						<div
							style="font-size: 19px; margin-top: 15px; float: left; line-height: 19px;">
							<em>520-33-44</em>
						</div>
					</div>
				</div>
				<div style="width: 100%; height: 40px;">
					<div style="width: 3px; float: left; height: 100%"></div>
					<div id="menu1" _index="1" class="menu" _url="welcome.jsp">
						<div class="menu_txt1">首页</div>
						<div class="menu_txt2">Home</div>
					</div>
					<div id="menu2" _index="2" class="menu" _url="admin/index.jsp">
						<div class="menu_txt1">管理员</div>
						<div class="menu_txt2">Manager</div>
					</div>
					<div id="menu3" _index="3" class="menu"
						_url="showarticlesss.action">
						<div class="menu_txt1">文章区</div>
						<div class="menu_txt2">Article</div>
					</div>
					<div id="menu4" _index="4" class="menu" _url="showInfoss.action">
						<div class="menu_txt1">资料区</div>
						<div class="menu_txt2">Information</div>
					</div>
					<div id="menu5" _index="5" class="menu" _url="#">
						<div class="menu_txt1">关于我们</div>
						<div class="menu_txt2">About Us</div>
					</div>
					<div id="menu6" _index="6" class="menu" _url="#">
						<div class="menu_txt1">帮助</div>
						<div class="menu_txt2">Help</div>
					</div>
				</div>
			</div>
			<div style="float: left; width: 273px; height: 100%">
				<div style="width: 100%; height: 45px;"></div>
				<div
					style="width: 100%; height: 32px; background: url('images/setbg-topbg.png') no-repeat;">
					<div class="searchbox">
						<div id="inputbox"
							style="background: url('images/search-bg.png') no-repeat;">
							<form id="frmSearch" name="frmSearch" method="post"
								action="cnameSearch.action" target="_blank">
								<input type="text" id="cname" name="cname" value="Search"
									class="birds" /> <input type="image"
									src="images/search_icon.png" name="submit"
									style="width: 16px; height: 16px; border: 0; cursor: pointer;"
									align="absmiddle" title="搜索">
							</form>
						</div>
					</div>
				</div>
			</div>
			<div id="logo"
				style="width: 128px; height: 100%; background: url('images/header_band.png') no-repeat; float: right; cursor: pointer;"
				onclick="window.open('http://www.lanrenzhijia.com')"></div>
		</div>
		<!-- 头部结束 -->
		<div
			style="width: 100%; height: auto; position: absolute; top: 80px; left: 0px; bottom: 100px;">
			<div id="theme"
				style="width: 1000px; height: 100%; margin: 0 auto; position: relative;">
				<div style="width: 100px; height: 60px;"></div>
				<div
					style="width: 487px; height: 181px; position: relative; margin-top: 0px;">
					<div id="theme1" class="theme theme_select"
						style="background: url('images/boxbg1.png') repeat;"
						onclick="doShow(1)" _index="1">
						<div class="theme_tag" style="display: block"></div>
						<div class="theme_txt1">XML 教程</div>
						<div class="theme_txt2"
							style="color: #102662; text-shadow: 0px 1px 0px #316BD5;">XML
							指可扩展标记语言（eXtensible Markup Language）。</div>
					</div>
					<div id="theme2" class="theme"
						style="margin-left: 5px; background: url('images/boxbg2.png') repeat;"
						onclick="doShow(2)" _index="2">
						<div class="theme_tag"></div>
						<div class="theme_txt1">MongoDB 教程</div>
						<div class="theme_txt2"
							style="color: #00470d; text-shadow: 0px 1px 0px #31CD5E;">
							MongoDB <br> 是一个基于分布式文件存储的数据库。
						</div>
					</div>
					<div id="theme3" class="theme"
						style="margin-left: 5px; background: url('images/boxbg3.png') repeat;"
						onclick="doShow(3)" _index="3">
						<div class="theme_tag"></div>
						<div class="theme_txt1">SQLite 教程</div>
						<div class="theme_txt2"
							style="color: #081f67; text-shadow: 0px 1px 0px #6298E9;">SQLite
							是一个软件库。</div>
					</div>
					<div id="theme4" class="theme"
						style="margin-top: 5px; background: url('images/boxbg4.png') repeat;"
						onclick="doShow(4)" _index="4">
						<div class="theme_tag"></div>
						<div class="theme_txt1">Mysql 教程</div>
						<div class="theme_txt2"
							style="color: #466a11; text-shadow: 0px 1px 0px #B9DE69;">Mysql是最流行的关系型数据库管理系统。</div>
					</div>
					<div id="theme5" class="theme"
						style="margin-top: 5px; margin-left: 5px; background: url('images/boxbg5.png') repeat;"
						onclick="doShow(5)" _index="5">
						<div class="theme_tag"></div>
						<div class="theme_txt1">SQL 教程</div>
						<div class="theme_txt2"
							style="color: #063c74; text-shadow: 0px 1px 0px #5DB7E9;">SQL
							是用于访问和处理数据库的标准的计算机语言。</div>
					</div>
					<div id="theme6" class="theme"
						style="margin-top: 5px; margin-left: 5px; background: url('images/boxbg6.png') repeat;"
						onclick="doShow(6)" _index="6">
						<div class="theme_tag"></div>
						<div class="theme_txt1">JavaScript</div>
						<div class="theme_txt2"
							style="color: #2a6507; text-shadow: 0px 1px 0px #A2E75C;">JavaScript
							是 Web 的编程语言。</div>
					</div>

					<div id="show1" class="show"
						style="top: 0px; left: 0px; background: url('images/boxbg1.png') repeat;">
						<div id="img1"
							style="width: 150px; height: 100%; position: absolute; left: 0px; top: 0px; background: #fff; display: none;">
							<div
								style="position: absolute; width: 144px; height: 175px; top: 3px; left: 3px; background: url('images/showimg1.jpg') center no-repeat"></div>
						</div>
						<div class="show_tag" style="top: 10px; left: 160px;"></div>
						<div class="show_close" style="left: 462px; top: 0px;"
							onclick="doClose(1)"></div>
						<div class="show_txt1" style="top: 10px; left: 170px;">XML
							教程</div>
						<div class="show_txt2" style="top: 60px; left: 160px;">
							XML <br> 指可扩展标记语言（eXtensible Markup Language）。
						</div>
						<div class="show_more"
							style="right: 252px; top: 145px; background: url('images/morebg.png') repeat;">
							<form action="cnameSearch.action">
								<input type="image" src="images/search_icon.png" name="submit"
									style="width: 16px; height: 16px; border: 0; cursor: pointer;"
									align="absmiddle" title="搜索"> <input type="hidden"
									id="cname" name="cname" value="XML" />
							</form>
						</div>
					</div>
					<div id="show2" class="show"
						style="top: 0px; left: 164px; background: url('images/boxbg2.png') repeat;"
						_left="164" _top="0">
						<div id="img2"
							style="width: 150px; height: 100%; position: absolute; right: 337px; top: 0px; background: #fff; display: none;">
							<div
								style="position: absolute; width: 144px; height: 175px; top: 3px; left: 3px; background: url('images/showimg2.jpg') center no-repeat"></div>
						</div>
						<div class="show_tag" style="top: 10px; right: 322px;"></div>
						<div class="show_close" style="left: 462px; top: 0px;"
							onclick="doClose(2)"></div>
						<div class="show_txt1" style="top: 10px; right: 7px;">MongoDB
							教程</div>
						<div class="show_txt2" style="top: 60px; right: 7px;">
							MongoDB <br> 是一个基于分布式文件存储的数据库。
						</div>
						<div class="show_more"
							style="right: 252px; top: 145px; background: url('images/morebg.png') repeat;">
							<form action="cnameSearch.action">
								<input type="image" src="images/search_icon.png" name="submit"
									style="width: 16px; height: 16px; border: 0; cursor: pointer;"
									align="absmiddle" title="搜索"> <input type="hidden"
									id="cname" name="cname" value="MongoDB" />
							</form>
						</div>
					</div>
					<div id="show3" class="show"
						style="top: 0px; right: 0px; background: url('images/boxbg3.png') repeat;">
						<div id="img3"
							style="width: 150px; height: 100%; position: absolute; right: 337px; top: 0px; background: #fff; display: none;">
							<div
								style="position: absolute; width: 144px; height: 175px; top: 3px; left: 3px; background: url('images/showimg3.gif') center no-repeat"></div>
						</div>
						<div class="show_tag" style="top: 10px; right: 322px;"></div>
						<div class="show_close" style="right: 0px; top: 0px;"
							onclick="doClose(3)"></div>
						<div class="show_txt1" style="top: 10px; right: 7px;">SQLite
							教程</div>
						<div class="show_txt2" style="top: 60px; right: 7px;">
							SQLite 是一个软件库。</div>
						<div class="show_more"
							style="right: 252px; top: 145px; background: url('images/morebg.png') repeat;">
							<form action="cnameSearch.action">
								<input type="image" src="images/search_icon.png" name="submit"
									style="width: 16px; height: 16px; border: 0; cursor: pointer;"
									align="absmiddle" title="搜索"> <input type="hidden"
									id="cname" name="cname" value="SQLite" />
							</form>
						</div>
					</div>
					<div id="show4" class="show"
						style="bottom: 0px; left: 0px; background: url('images/boxbg4.png') repeat;">
						<div id="img4"
							style="width: 150px; height: 100%; position: absolute; left: 0px; bottom: 0px; background: #fff; display: none;">
							<div
								style="position: absolute; width: 144px; height: 175px; top: 3px; left: 3px; background: url('images/showimg4.png') center no-repeat"></div>
						</div>
						<div class="show_tag" style="bottom: 138px; left: 160px;"></div>
						<div class="show_close" style="left: 462px; bottom: 161px;"
							onclick="doClose(4)"></div>
						<div class="show_txt1" style="bottom: 141px; left: 170px;">MySQL
							教程</div>
						<div class="show_txt2" style="bottom: 21px; left: 160px;">
							Mysql是最流行的关系型数据库管理系统。</div>
						<div class="show_more"
							style="right: 252px; top: 145px; background: url('images/morebg.png') repeat;">
							<form action="cnameSearch.action">
								<input type="image" src="images/search_icon.png" name="submit"
									style="width: 16px; height: 16px; border: 0; cursor: pointer;"
									align="absmiddle" title="搜索"> <input type="hidden"
									id="cname" name="cname" value="MySQL" />
							</form>
						</div>
					</div>
					<div id="show5" class="show"
						style="bottom: 0px; left: 164px; background: url('images/showbg5.png') repeat;"
						_left="164" _bottom="0">
						<div id="img5"
							style="width: 150px; height: 100%; position: absolute; right: 337px; bottom: 0px; background: #fff; display: none;">
							<div
								style="position: absolute; width: 144px; height: 175px; top: 3px; left: 3px; background: url('images/showimg5.jpg') center no-repeat"></div>
						</div>
						<div class="show_tag" style="bottom: 138px; right: 322px;"></div>
						<div class="show_close" style="left: 462px; bottom: 161px;"
							onclick="doClose(5)"></div>
						<div class="show_txt1" style="bottom: 141px; right: 7px;">SQL
							教程</div>
						<div class="show_txt2" style="bottom: 21px; right: 7px;">
							SQL 是用于访问和处理数据库的标准的计算机语言。</div>
						<div class="show_more"
							style="right: 252px; top: 145px; background: url('images/morebg.png') repeat;">
							<form action="cnameSearch.action">
								<input type="image" src="images/search_icon.png" name="submit"
									style="width: 16px; height: 16px; border: 0; cursor: pointer;"
									align="absmiddle" title="搜索"> <input type="hidden"
									id="cname" name="cname" value="SQL" />
							</form>
						</div>
					</div>
					<div id="show6" class="show"
						style="bottom: 0px; right: 0px; background: url('images/boxbg6.png') repeat;">
						<div id="img6"
							style="width: 150px; height: 100%; position: absolute; right: 337px; bottom: 0px; background: #fff; display: none;">
							<div
								style="position: absolute; width: 144px; height: 175px; top: 3px; left: 3px; background: url('images/showimg6.jpg') center no-repeat"></div>
						</div>
						<div class="show_tag" style="bottom: 138px; right: 322px;"></div>
						<div class="show_close" style="right: 0px; bottom: 161px;"
							onclick="doClose(6)"></div>
						<div class="show_txt1" style="bottom: 141px; right: 7px;">JavaScript</div>
						<div class="show_txt2" style="bottom: 21px; right: 7px;">
							JavaScript 是 Web 的编程语言。</div>
						<div class="show_more"
							style="right: 252px; top: 145px; background: url('images/morebg.png') repeat;">
							<form action="cnameSearch.action">
								<input type="image" src="images/search_icon.png" name="submit"
									style="width: 16px; height: 16px; border: 0; cursor: pointer;"
									align="absmiddle" title="搜索"> <input type="hidden"
									id="cname" name="cname" value="JavaScript" />
							</form>
						</div>
					</div>
				</div>
				<div style="width: 140px; margin-top: 5px; height: 56px;">
					<div id="btn1" onclick="doChange(1)" class="btn btn_select"
						style="background: url('images/bg-small.png') repeat;"></div>
					<div id="btn2" onclick="doChange(2)" class="btn"
						style="margin-left: 4px; background: url('images/boxbg2.png') repeat;"></div>
					<div id="btn3" onclick="doChange(3)" class="btn"
						style="margin-left: 4px; background: url('images/boxbg3.png') repeat;"></div>
					<div id="btn4" onclick="doChange(4)" class="btn"
						style="margin-left: 4px; background: url('images/boxbg4.png') repeat;"></div>
					<div id="btn5" onclick="doChange(5)" class="btn"
						style="margin-top: 4px; background: url('images/boxbg6.png') repeat;"></div>
					<div id="btn6" onclick="doChange(6)" class="btn"
						style="margin-top: 4px; margin-left: 4px; background: url('images/boxbg5.png') repeat;"></div>
				</div>


			</div>
		</div>
		<!-- 底部开始 -->
		<div
			style="width: 100%; height: 90px; position: absolute; left: 0px; bottom: 0px;">
			<div
				style="width: 100%; height: 60px; background: url('images/navtab-bg.png') repeat-x;">
				<div style="width: 1000px; margin: 0 auto;">
					<div id="tab1" _index="1" class="tab">
						<div class="tab_txt1">关于我们</div>
						<div class="tab_txt2">About us</div>
					</div>
					<div id="tab2" _index="2" class="tab">
						<div class="tab_txt1">人才招聘</div>
						<div class="tab_txt2">Person Need</div>
					</div>
					<div id="tab3" _index="3" class="tab">
						<div class="tab_txt1">讲师招募</div>
						<div class="tab_txt2">Teacher Need</div>
					</div>
					<div id="tab4" _index="4" class="tab">
						<div class="tab_txt1">联系我们</div>
						<div class="tab_txt2">Chat us</div>
					</div>
					<div style="width: 230px; height: 60px; float: right;">
						<div class="box_icon">
							<div
								style="width: 100%; height: 100%; background: url('images/weibo-qq-icon.png') center no-repeat; float: left; cursor: pointer;"
								onclick="window.open('#')" title="腾讯微博"></div>
						</div>
						<div class="box_icon">
							<div
								style="width: 100%; height: 100%; background: url('images/weibo-sina-icon.png') center no-repeat; float: left; cursor: pointer;"
								onclick="window.open('#')" title="新浪微博"></div>
						</div>
					</div>
				</div>
			</div>
			<div style="width: 100%; height: 30px; background: #000000">
				<div style="width: 1000px; margin: 0 auto;">
					<div
						style="color: #999999; text-align: center; line-height: 30px; float: left;">Copyright
						© 2016 test.com All Rights Reserved | 备案none</div>
				</div>
			</div>
		</div>
	</div>
	<!-- 底部结束 -->
	<iframe id="msgiframe" name="msgiframe" style="display: none"></iframe>
	<script type="text/javascript">
		var speed = 8000;//主题切换速度
		var speed2 = 300;//主题说明显示速度
		var speed3 = 400;//背景移动速度
		var bgi = 1;
		var BgMar;
		var msgword = "最多100个字符";
		var msgword2 = "请在此输入内容，我们会尽快与您联系。";
		$(document)
				.ready(
						function() {

							//TAB事件绑定
							$(".tab").bind("mouseenter", function() {
								var index = $(this).attr("_index");
								showTab(index);
							}).bind("mouseleave", function() {
								var index = $(this).attr("_index");
								hideTab(index);
							});
							$(".tablist").bind("mouseenter", function() {
								var index = $(this).attr("_index");
								showTab(index);
							}).bind("mouseleave", function() {
								var index = $(this).attr("_index");
								hideTab(index);
							});

							//关闭按钮效果
							$(".show_close")
									.bind(
											"mouseover",
											function() {
												$(this)
														.css("background",
																"url('images/icon_close_click.png') center no-repeat");
											})
									.bind(
											"mouseout",
											function() {
												$(this)
														.css("background",
																"url('images/icon_close.png') center no-repeat");
											});
							//主题鼠标浮动效果
							$(".theme")
									.bind(
											"mouseover",
											function() {
												var _index = $(this).attr(
														"_index");
												$(this)
														.css(
																"background",
																"url('images/boxbg"
																		+ _index
																		+ "-hover.png') repeat");
											})
									.bind(
											"mouseout",
											function() {
												var _index = $(this).attr(
														"_index");
												$(this)
														.css(
																"background",
																"url('images/boxbg"
																		+ _index
																		+ ".png') repeat");
											});

							BgMar = setInterval("doChange(0)", speed);
							if (navigator.userAgent.indexOf("MSIE 6.0") > 0) {
								setTimeout(setPosition, 10);
							} else {
								setPosition();
							}

						});
		var resizeTimer = null;
		$(window).resize(function() {
			//setPosition();
			if (resizeTimer)
				clearTimeout(resizeTimer);
			resizeTimer = setTimeout("setPosition()", 100);
		});

		var tindex = 1;
		var showindex = 0;
		var currentindex = 1;
		//切换操作
		function doChange(index) {
			if (index == 0) {
				tindex++;
			} else {
				tindex = index;
				clearInterval(BgMar);
				changeTheme(tindex);
				BgMar = setInterval("doChange(0)", speed);
				return;
			}
			if (tindex > 6) {
				tindex = 1;
			}
			changeTheme(tindex);
		}
		//切换操作执行
		function changeTheme(index) {
			$(".theme").removeClass("theme_select");
			$("#theme" + currentindex).css("background",
					"url('images/boxbg" + currentindex + ".png') repeat");
			$(".theme").find(".theme_tag").hide();
			$("#theme" + index).addClass("theme_select");
			$("#theme" + index).find(".theme_tag").show();
			//$(".btn").removeClass("btn_select");
			//$("#btn"+index).addClass("btn_select");
			if (currentindex == 5) {
				$("#btn" + currentindex).css("background",
						"url('images/boxbg6.png') repeat");
			} else if (currentindex == 6) {
				$("#btn" + currentindex).css("background",
						"url('images/boxbg5.png') repeat");
			} else {
				$("#btn" + currentindex).css("background",
						"url('images/boxbg" + currentindex + ".png') repeat");
			}

			$("#btn" + index).css("background",
					"url('images/bg-small.png') repeat");
			//$('body').css("background","url('/main/images/"+index+".jpg') center no-repeat");
			var w1 = $(window).width();
			var w2 = w1 - w1 * 2;

			$("#bg" + index).stop();
			$("#bg" + currentindex).stop();

			if (currentindex < index) {
				$("#bg" + index).show().css("left", w1 - 20).animate({
					left : 0
				}, speed3, null, function() {
					//showimg(index);
				});
				$("#bg" + currentindex).animate({
					left : w2
				}, speed3, null, function() {
					$(this).hide();
				});
			}
			if (currentindex > index) {
				$("#bg" + index).show().css("left", w2 + 20).animate({
					left : 0
				}, speed3, null, function() {
					//showimg(index);
				});
				$("#bg" + currentindex).animate({
					left : w1
				}, speed3, null, function() {
					$(this).hide();
				});
			}
			//if(currentindex==index) setTimeout("showimg("+index+")",speed2);

			currentindex = index;
			if (showindex != 0) {
				speed2 = 0;
				$("#show" + showindex).find(".show_close").click();
				$("#theme" + index).click();
				speed2 = 300;
			}
		}
		//动画缩放并显示缩略图
		function showimg(index) {
			$("#dny").css({
				top : 0,
				left : 0,
				width : '100%',
				height : '100%'
			}).show().animate({
				left : $("#tag").position().left,
				top : 140,
				width : 150,
				height : 181
			}, 300, null, function() {
				$(this).hide();
				if (showindex != 0)
					$("#img" + index).fadeIn(200);
			});
		}

		//显示主题说明
		function doShow(index) {
			if (speed2 != 0)
				doChange(index);
			setTimeout("showimg(" + index + ")", speed3);
			if (index == 2) {
				$("#show" + index).show().animate({
					width : 487,
					height : 181,
					top : 0,
					left : 0
				}, speed2, null, function() {
					$(".theme").hide()
				});
			} else if (index == 5) {
				$("#show" + index).show().animate({
					width : 487,
					height : 181,
					bottom : 0,
					left : 0
				}, speed2, null, function() {
					$(".theme").hide()
				});
			} else {
				$("#show" + index).show().animate({
					width : 487,
					height : 181
				}, speed2, null, function() {
					$(".theme").hide()
				});
			}
			showindex = index;
		}
		//关闭主题说明
		function doClose(index) {
			$(".theme").show();
			if (index == 2) {
				var t = $("#show" + index).attr("_top");
				var l = $("#show" + index).attr("_left");
				$("#show" + index).animate({
					width : 159,
					height : 88,
					top : t,
					left : l
				}, speed2, null, function() {
					$("#show" + index).hide();
				});
			} else if (index == 5) {
				var b = $("#show" + index).attr("_bottom");
				var l = $("#show" + index).attr("_left");
				$("#show" + index).animate({
					width : 159,
					height : 88,
					bottom : b,
					left : l
				}, speed2, null, function() {
					$("#show" + index).hide();
				});
			} else {
				$("#show" + index).animate({
					width : 159,
					height : 88
				}, speed2, null, function() {
					$("#show" + index).hide();
				});
			}
			$("#img" + index).hide();
			showindex = 0;
		}
		//菜单事件绑定
		$(".menu").bind("mouseenter", function() {
			var index = $(this).attr("_index");
			showMenu(index);
		}).bind("mouseleave", function() {
			var index = $(this).attr("_index");
			hideMenu(index);
		}).bind("click", function() {
			var url = $(this).attr("_url");
			window.open(url);
		});
		;
		$(".menulist").bind("mouseenter", function() {
			var index = $(this).attr("_index");
			showMenu(index);
		}).bind("mouseleave", function() {
			var index = $(this).attr("_index");
			hideMenu(index);
		});
		$(".menuitem").bind("mouseover", function() {
			$(this).addClass("menuitem_hover");
		}).bind("mouseout", function() {
			$(this).removeClass("menuitem_hover");
		}).bind("click", function() {
			var url = $(this).attr("_url");
			window.open(url);
		});
	</script>

	<!-- Google Code for &#32593;&#31449;&#35775;&#23458; Remarketing List -->
	<script type="text/javascript">
		/* <![CDATA[ */
		var google_conversion_id = 1071958855;
		var google_conversion_language = "en";
		var google_conversion_format = "3";
		var google_conversion_color = "ffffff";
		var google_conversion_label = "UlXjCMmt6QIQx5aT_wM";
		var google_conversion_value = 0;
		/* ]]> */
	</script>
	<script type="text/javascript"
		src="http://www.googleadservices.com/pagead/conversion.js">
		
	</script>
	<noscript>
		<div style="display: inline;">
			<img height="1" width="1" style="border-style: none;" alt=""
				src="http://www.googleadservices.com/pagead/conversion/1071958855/?label=UlXjCMmt6QIQx5aT_wM&amp;guid=ON&amp;script=0" />
		</div>
	</noscript>
</body>
</html>