<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>技术文章</title>
<base href="<%=basePath%>">
<meta name="viewport"
	content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no" />
<link rel="stylesheet" type="text/css" href="css/common.css" />
<link rel="stylesheet" type="text/css" href="css/header.css" />
<link rel="stylesheet" type="text/css" href="css/article.css" />
<link rel="stylesheet" type="text/css" href="css/takeswiper.css" />
<script src="js/jquery-1.7.1.min.js" type="text/javascript"
	charset="utf-8"></script>
<script type="text/javascript" src="js/jquery.event.drag-1.5.min.js"></script>
<script type="text/javascript" src="js/jquery.touchSlider.js"></script>
</head>
<script type="text/javascript">
		    (function (doc, win) {
        var docEl = doc.documentElement,
            resizeEvt = 'orientationchange' in window ? 'orientationchange' : 'resize',
            recalc = function () {
                var clientWidth = docEl.clientWidth;
                if (!clientWidth) return;
                if(clientWidth>=640){
                    docEl.style.fontSize = '27px';
                }else{
                    docEl.style.fontSize = 27 * (clientWidth / 640) + 'px';
                }
            };

        if (!doc.addEventListener) return;
        win.addEventListener(resizeEvt, recalc, false);
        doc.addEventListener('DOMContentLoaded', recalc, false);
    })(document, window);

	</script>
<body>
	<header>
	<div class="head">
		<div class="title">技术文章</div>
		<span class="h-lt" style="cursor: pointer"
			onclick="window.history.go(-1)"><i class="h-bk"></i></span> <a
			class="h-rt" href="#"></a>
	</div>
	</header>
	<div class="section">
		<div class="search">
			<div class="left">
				<div class="oo">
					<img src="img/sea.png" />
				</div>
				<input type="text" placeholder="搜索文章" />
			</div>
			<div class="right">
				<span>分类</span>
			</div>
		</div>
	</div>

	<div class="main_visual">
		<div class="flicking_con"></div>
		<div class="main_image">
			<ul>
				<li><img src="img/banner1.png" class="img_3"></li>
				<li><img src="img/banner.png" class="img_3"></li>
			</ul>
			<a href="javascript:;" id="btn_prev"></a> <a href="javascript:;"
				id="btn_next"></a>
		</div>
	</div>
	<ul class="oul">
	</ul>

	<div class="mask">
				<div class="bot">
					<div class="tt">
						<span class="no">取消</span>
						<span class="tap">文字分类</span>
						<span class="yes">确定</span>
					</div>
					<div class="big">
					<div class="part">
						<div class="tat">加工应用</div>
						<span>加工中心</span>
						<span>车削中心</span>
						<span>其他机床</span>
						<span>其他</span>
					</div>
					<div class="part">
						<div class="tat">维修保养</div>
						<span>加工中心</span>
						<span>车削中心</span>
					</div>
					<div class="part">
						<div class="tat">其他</div>
					</div>
				</div>
				</div>
			</div>

</body>
<script src="js/takeswiper.js" type="text/javascript" charset="utf-8"></script>
<script type="text/javascript">
	//页面加载时执行
		$(document).ready(function(){ 
			var token= localStorage.getItem("c_token");
			var userId= localStorage.getItem("userId");
			$.ajax({
				type : "GET", //用GET方式传输
				dataType : "json", //数据格式:JSON
				url : 'user/getUserInfo', //目标地址
				//data : "dealType=" + dealType + "&uid=" + uid + "&code=" + code,
				data : {userId:userId,token:token},
				success : function(msg) {
					if(msg.code==100){
						alert(msg.msg);
					}
					if(msg.code==200){						
						var userData=msg.data;
						//relatePermissionUserType可看用户等级1A 2B 3C 4客服 5专家
						var relatePermissionUserType=userData.userType;
						alert(relatePermissionUserType);
						$.ajax({
							type : "GET", //用GET方式传输
							dataType : "json", //数据格式:JSON
							url : 'article/articleList', //目标地址
							//data : "dealType=" + dealType + "&uid=" + uid + "&code=" + code,
							data : "relatePermissionUserType"+relatePermissionUserType,
							success : function(msg) {
								var datas=msg.datas;
								for(var i in datas){
								     $(".oul").append("<li class='now'><a  href='views/article/introduce.jsp?articleId="+datas[i].articleId+"'><div class='left'><img src='img/05.jpg'/><div class='tip'>注册专享</div></div><div class='right'><p class='title'><span class='size'>"+datas[i].title+"</span><span class='time'>"+datas[i].createTime+"</span></p><p class='zw'>"+datas[i].content+"</p><span class='c"+datas[i].tagId+"'>"+datas[i].categoryName+"</span></div></a></li>");
								    }
							}
						});
					}
					
				}
			});		
		}); 
	    //点击事件
		$('.part span').click(function(){
			$(this).addClass('focus');
			$(this).siblings('span').removeClass('focus');
			$(this).parent().siblings('.part').children('span').removeClass('focus');
		});		
		$('.tt .yes').click(function(){
			$('.mask').hide();
		})
		
		$('.tt .no').click(function(){
			$('.mask').hide();
		})
		
		$('.search .right').click(function(){
			$('.mask').show();
		})
	</script>
</html>
