<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
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
		<link rel="stylesheet" type="text/css" href="css/me2.css"/>
		<link rel="stylesheet" type="text/css" href="css/LArea.css"/>
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
		
		<div class="find qiye">
				<a href="javascript:;">
					<span class="left">
						企业信息
					</span>
					<span class="right">
						<img src="img/right.png"/>
					</span>
				</a>
			</div>
		
		<ul class="infor">
			
		</ul>
		
		<div class="abt">
			<div class="find">
				<a href="views/service.jsp">
					<span class="left">
						客服
					</span>
					<span class="right">
						<img src="img/right.png"/>
					</span>
				</a>
			</div>
			<div class="find">
				<a href="views/aboutss.jsp">
					<span class="left">
						关于山善
					</span>
					<span class="right">
						<img src="img/right.png"/>
					</span>
				</a>
			</div>
			<div class="find">
				<a href="views/Register.jsp">
					<span class="left">
						注册
					</span>
					<span class="right">
						<img src="img/right.png"/>
					</span>
				</a>
			</div>
		</div>
	</body>
	<script src="js/LAreaData1.js"></script>
	  <script src="js/LAreaData2.js"></script>
	  <script src="js/LArea.js"></script>
	<script type="text/javascript">
		$('.qiye').click(function(){
			$('.infor').slideToggle();
		})
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
				var a="";
				if(datas.userType==1){
					 a="A等级会员";
				}if(datas.userType==2){
					 a="B等级会员";
				}if(datas.userType==3){
					 a="C等级会员";
				}if(datas.userType==4){
					 a="客服";
				}if(datas.userType==5){
					 a="技术专家";
				}
				var userType=a;
					$(".section").append("<div class='tip' id='yy'><a href='views/replace.jsp'><div class='laba'><img src='img/tip.png'/></div><p>完善信息可以获取更多的服务</p><div class='mm'><img src='img/right.png'/></div></a></div><div class='photo'><img src='img/05.jpg' class='phh'/><img src='img/hy.png' class='hy' /></div><span>"+userType+"-"+datas.userName+"</span>");				 
				var yin=document.getElementById("yy");
				if (datas.userType==3||datas.userType==4||datas.userType==5) {
					 yin.style.display='none';	
				}else{
					 yin.style.display='block';	
			   }
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
				var company=(datas.company==''||datas.company==null)?"未填写":datas.company;
				var provincesCities=(datas.provincesCities==''||datas.provincesCities==null)?"未填写":datas.provincesCities;
				var sex=(datas.sex==''||datas.sex==null)?"未填写":datas.sex;
				var positionName=(datas.positionName==''||datas.positionName==null)?"未填写":datas.positionName;
				var phone=(datas.phone==''||datas.phone==null)?"未填写":datas.phone;
				var email=(datas.email==''||datas.email==null)?"未填写":datas.email;
				var industry=(datas.industry==''||datas.industry==null)?"未填写":datas.industry;
				var equipmentType=(datas.equipmentType==''||datas.equipmentType==null)?"未填写":datas.provincesCities;
					$(".infor").append("<li><span class='left'>公司全称</span><span class='right'>"+company+"</span>" +
						"</li><li><span class='left'>公司所在省/市</span><span class='right'>"+provincesCities+"</span>" +
						"</li><li><span class='left'>性别</span><span class='right'>"+sex+"</span>" +
						"</li><li><span class='left'>部门</span><span class='right'>未填写</span>" +
						"</li><li><span class='left'>职务</span><span class='right'>"+positionName+"</span>" +
						"</li><li><span class='left'>手机号码</span><span class='right'>"+phone+"</span>" +
						"</li><li><span class='left'>公司邮箱</span><span class='right'>"+email+"</span>" +
						"</li><li><span class='left'>所属行业</span><span class='right'>"+industry+"</span>" +
						"</li><li><span class='left'>设备类型</span><span class='right'>"+equipmentType+"</span></li>");
			}
		});
	}); 
	</script>
</html>
