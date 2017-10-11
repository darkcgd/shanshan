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
		<title>山善</title>
		<base href="<%=basePath%>">
		<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no" />
		<link rel="stylesheet" type="text/css" href="css/common.css"/>
		<link rel="stylesheet" type="text/css" href="css/header.css"/>
		<link rel="stylesheet" type="text/css" href="css/tuijian.css"/>
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
        		<div class="title">技术文章</div>
        		<span class="h-lt" style="cursor:pointer" onclick="window.history.go(-1)"><i class="h-bk"></i></span>
        		<a class="h-rt" href="#"></a>
    		</div>
		</header>
		<div class="section">
			<p class="title">
			</p>
			<p class="time"><span id="time"></span><span id="author"></span></p>
			<span id="tagId"></span>
		</div>		
		<div class="zw">		
		</div>
		
		<p class="to">
			<a>
			</a>
		</p>
	</body>
<script type="text/javascript">
	$(document).ready(function(){ 
		 function getUrlParam(name) {
			   var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)"); //构造一个含有目标参数的正则表达式对象
			   var r = window.location.search.substr(1).match(reg); //匹配目标参数
			   if (r != null) return unescape(r[2]); return null; }//返回参数值
		       var articleId= getUrlParam('articleId');
			   $.ajax({
					   type:'get',
					   url:'article/articleDetail',
					   data:"articleId="+articleId,
					   dataType:'json',
					   success:function(msg){
					   var  data=msg.datas;
						$(".section .title").text("");
					   	$(".section .title").text(data.title);
						$(".section .time #time").text("");
						$(".section .time #time").text(data.createTime.substr(0,10)+"~"+data.updateTime.substr(0,10));
						$(".section .time #author").text("");
						$(".section .time #author").text("作者:"+data.author);					
						if(data.tagId==1){							
							$(".section  #tagId").addClass("cc");
							$(".section  #tagId").text("");
							$(".section  #tagId").text("推荐");
						}
						if(data.tagId==2){
							$(".section  #tagId").removeClass("cc").addClass('ca');
							$(".section  #tagId").text("");
							$(".section  #tagId").text("头条");
						}
						$(".zw").text("");
						$(".zw").text(data.content);
						if(data.relateActivityId==1){
							$(".to a").text("相关活动报名");
							var token= localStorage.getItem("c_token")
							var userId= localStorage.getItem("userId");	
							 $.ajax({
									type : "GET", //用GET方式传输
									dataType : "json", //数据格式:JSON
									url : 'user/getUserInfo', //目标地址
									//data : "dealType=" + dealType + "&uid=" + uid + "&code=" + code,
									data : {userId:userId,token:token},
									success : function(msg) {								
										if(msg.code==200){
											var userData=msg.data;
											//跳转地址区分
											if(userData.userType>=2){
											$(".to a").attr({href:"views/article/tj.jsp?userId="+userId});
											}
										}
									}
							 });	
							
						}
						
					   }
				   });
			   
		}); 
     $(function(){
    	 $(".to a").click(function(){
    	 });
     });
	</script>
</html>
