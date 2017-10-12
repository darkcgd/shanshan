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
		<title>个人中心</title>
		<base href="<%=basePath%>">
		<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no" />
		<link rel="stylesheet" type="text/css" href="css/common.css"/>
		<link rel="stylesheet" type="text/css" href="css/header.css"/>
		<link rel="stylesheet" type="text/css" href="css/me.css"/>
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
        		<div class="title">个人中心</div>
        		<span class="h-lt" style="cursor:pointer" onclick="window.history.go(-1)"><i class="h-bk"></i></span>
        		<a class="h-rt" href="#"></a>
    		</div>
		</header>
		<div class="section">
			
		</div>
		<ul class="infor">
			
		</ul>
		
		<!--<div class="find">
			<a href="find.html">
				<span class="left">
					找回密码
				</span>
				<span class="right">
					<img src="img/right.png"/>
				</span>
			</a>
		</div>-->
	</body>
	<script type="text/javascript">
	$(document).ready(function(){ 
		var token= localStorage.getItem("c_token");
		var userId= localStorage.getItem("userId");
		$.ajax({
			type : "GET", //用GET方式传输
			dataType : "json", //数据格式:JSON
			url : 'user/getUserInfo', //目标地址
			data : {userId:userId,token:token},
			success : function(msg) {
				var datas=msg.data;
					$(".section").append("<div class='photo'><img src='img/05.jpg'/></div><span>用户名-"+datas.userName+"</span>");				 
			}
		});
	}); 
	</script>
	<script type="text/javascript">
	$(document).ready(function(){ 
		var token= localStorage.getItem("c_token");
		var userId= localStorage.getItem("userId");
		$.ajax({
			type : "GET", //用GET方式传输
			dataType : "json", //数据格式:JSON
			url : 'user/getUserInfo', //目标地址
			data : {userId:userId,token:token},
			success : function(msg) {
				var datas=msg.data;
				var userName=(datas.userName==''||datas.userName==null)?"未填写":datas.userName;
				var company=(datas.company==''||datas.company==null)?"未填写":datas.company;
				var positionName=(datas.positionName==''||datas.positionName==null)?"未填写":datas.positionName;
				var phone=(datas.phone==''||datas.phone==null)?"未填写":datas.phone;
					$(".infor").append("<li><span class='left'>姓名</span><span class='right'>"+datas.userName+"</span></li>"+
					"<li><span class='left'>归属分公司</span><span class='right'>"+datas.company+"</span></li>"+
					"<li><span class='left'>岗位</span><span class='right'>"+datas.positionName+"</span></li>"+
					"<li><span class='left'>联系方式</span><span class='right'>"+datas.phone+"</span></li>");			
					 
			}
		});
	}); 
	</script>
</html>