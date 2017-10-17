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
		<title>活动信息</title>
		<base href="<%=basePath%>">
		<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no" />
		<link rel="stylesheet" type="text/css" href="css/common.css"/>
		<link rel="stylesheet" type="text/css" href="css/header.css"/>
		<link rel="stylesheet" type="text/css" href="css/active.css"/>
		<script src="js/jquery-1.7.1.min.js" type="text/javascript" charset="utf-8"></script>
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
        		<div class="title">活动信息</div>
        		<span class="h-lt" style="cursor:pointer" onclick="window.history.go(-1)"><i class="h-bk"></i></span>
        		<a class="h-rt" href="#"></a>
    		</div>
		</header>
		<div class="section">
			<ul>
			</ul>
		</div>
	</body>
	<script type="text/javascript">
	//页面加载时执行
		$(document).ready(function(){ 
			var token= localStorage.getItem("c_token")
			var userId= localStorage.getItem("userId");	
			$.ajax({
				type : "GET", //用GET方式传输
				dataType : "json", //数据格式:JSON
				url : 'activity/activityList', //目标地址
			    data : "",
				success : function(msg) {			
					var datas=msg.data.list;
					for(var i in datas){
						var title=datas[i].title==null?"":datas[i].title;
						var startTime=datas[i].startTime==null?"":datas[i].startTime; 
						var content=datas[i].content==null?"":datas[i].content;
						$("ul").append("<li class='now'>"+
								           "<a value='"+datas[i].relatePermissionUserType+"' name='"+datas[i].activityId+"'>"+
								              "<div class='left'><img src='img/05.jpg'/><div class='tip' value='"+datas[i].relatePermissionUserType+"'></div></div>"+
								              "<div class='right'><p class='title'>"+
								                  "<span class='size'>"+title+"</span>"+
								                  "<span class='time'>"+startTime+"</span></p>"+
								              "<p class='zw'>"+content+"</p></div></a></li>");			
					}	
					// alert(11);
					 $("ul .tip").each(function(){
						 //注册专享与vip区别
						 if($(this).attr("value")<=1){
							 $(this).removeAttr("class");
						 }
						 if($(this).attr("value")==3||$(this).attr("value")==2){
							 $(this).text("");
							 $(this).text("注册专享");
						 }
						 if($(this).attr("value")>=3){
							 $(this).text("");
							 $(this).text("VIP专享");
						 }
						  });
					 $.ajax({
							type : "GET", //用GET方式传输
							dataType : "json", //数据格式:JSON
							url : 'user/getUserInfo', //目标地址
							//data : "dealType=" + dealType + "&uid=" + uid + "&code=" + code,
							data : {userId:userId,token:token},
							success : function(msg) {	
								if(msg.code==100){
									if(msg.msg=="登录信息失效,请重新登录"){
										alert(msg.msg);
										window.location.href="views/login.jsp";
									}
									
								}
								if(msg.code==200){
									var userData=msg.data;
									//跳转地址区分
									 $("ul a").each(function(){
										 if($(this).attr("value")<=userData.userType){
											 var activityId=$(this).attr("name");
											 $(this).attr({href:"views/active/introActive.jsp?activityId="+activityId});
										 }
									 });
								}
							}
					 });
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
