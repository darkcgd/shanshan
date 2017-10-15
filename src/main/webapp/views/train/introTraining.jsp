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
		<title>培训课程</title>
		<base href="<%=basePath%>">
		<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no" />
		<link rel="stylesheet" type="text/css" href="css/common.css"/>
		<link rel="stylesheet" type="text/css" href="css/header.css"/>
		<link rel="stylesheet" type="text/css" href="css/introduce.css"/>
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
        		<div class="title">培训课程</div>
        		<span class="h-lt" style="cursor:pointer" onclick="window.history.go(-1)"><i class="h-bk"></i></span>
        		<a class="h-rt" href="#"></a>
    		</div>
		</header>
		<div class="section">
			<p class="title">				
			</p>
			<p class="time"></p>
		</div>
		<div class="infor">			
		</div>
		
		<div class="tj">
			<a href="views/article/tj.jsp">报名参与</a>
		</div>
		<div class="to">
			<a href="views/Register.jsp">注&nbsp;册</a>
		</div>
	</body>
	<script type="text/javascript">
	$(document).ready(function(){ 
		 function getUrlParam(name) {
			   var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)"); //构造一个含有目标参数的正则表达式对象
			   var r = window.location.search.substr(1).match(reg); //匹配目标参数
			   if (r != null) return unescape(r[2]); return null; }//返回参数值
		       var trainingCourseId= getUrlParam('trainingCourseId');
			   $.ajax({
					   type:'get',
					   url:'trainingCourse/trainingCourseDetail',
					   data:"trainingCourseId="+trainingCourseId,
					   dataType:'json',
					   success:function(msg){
					   var  data=msg.data;
					   var startTime=data.startTime==null?"":data.startTime;
					   var endTime=data.endTime==null?"":data.endTime;
						$(".section .title").text("");
					   	$(".section .title").text(data.title);
						$(".section .time").text("");
						$(".section .time").text(startTime+"~"+endTime);
					    $(".infor").text("");
					    $(".infor").text(data.content);
					   }
				   });
			   
		}); 
	</script>
</html>
