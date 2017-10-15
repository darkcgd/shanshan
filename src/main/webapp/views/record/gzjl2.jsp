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
		<title>设备维修</title>
		<base href="<%=basePath%>">
		<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no" />
		<link rel="stylesheet" type="text/css" href="css/common.css"/>
		<link rel="stylesheet" type="text/css" href="css/header.css"/>
		<link rel="stylesheet" type="text/css" href="css/calendar.css"/>
		<link rel="stylesheet" type="text/css" href="css/require.css"/>
		<script src="js/jquery-1.7.1.min.js" type="text/javascript" charset="utf-8"></script>
		<script src="js/uploadPreview.js" type="text/javascript" charset="utf-8"></script>
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
        		<div class="title">设备维修</div>
        		<span class="h-lt" style="cursor:pointer" onclick="window.history.go(-1)"><i class="h-bk"></i></span>
        		<a class="h-rt" href="#"></a>
    		</div>
		</header>
		<div class="section">
			
		</div>
	</body>
<script type="text/javascript">
	$(document).ready(function(){ 
		 function getUrlParam(name) {
		   var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)"); //构造一个含有目标参数的正则表达式对象
		   var r = window.location.search.substr(1).match(reg); //匹配目标参数
		   if (r != null) return unescape(r[2]); return null; }//返回参数值
	       var repairId= getUrlParam('repairId');
		   alert(repairId);
		$.ajax({
			type : "GET", //用GET方式传输
			dataType : "json", //数据格式:JSON
			url : 'faultRepair/faultRepairList', //目标地址
			 data:"repairId="+repairId,
	      success:function(msg){
				   var  datas=msg.data.list;
				   alert(datas.machineToolBrand);
				   $(".section").append("<ul class='infor'>"+
							"<li>"+
							"<span class='left'>机床品牌</span>"+
							"<input type='text' class='right' value='"+datas.machineToolBrand+"' readonly='readonly'>"+
						"</li>"+
						"<li>"+
							"<span class='left'>机床机型</span>"+
							"<input type='text' class='right' value='"+datas.machineToolModel+"' readonly='readonly'>"+
						"</li>"+
						"<li>"+
							"<span class='left'>S/N</span>"+
							"<input type='text' class='right' value='"+datas.machineToolSn+"' readonly='readonly'>"+
						"</li>"+
						"<li>"+
							"<span class='left'>联系人</span>"+
							"<input type='text' class='right' value='"+datas.contactsName+"' readonly='readonly'>"+
						"</li>"+
						"<li>"+
							"<span class='left'>联系电话</span>"+
							"<input type='text' class='right' value='"+datas.contactsPhone+"' readonly='readonly'>"+
						"</li>"+
						"<div class='date'>"+
							"<div class='na'>"+
								"<span>故障描述</span>"+
							"</div>"+
							"<div class='can'>"+
								"<textarea placeholder='"+datas.des+"' readonly='readonly'></textarea>"+
							"</div>"+
						"</div>"+
						"<div class='date'>"+
							"<div class='na'>"+
								"<span>上传图片（请上传机床铭牌，报警画面等）</span>"+
							"</div>"+
							"<div class='oamg'>"+
								"<div class='omg'>"+
									"<img src='img/blog.png' class='sa'/>"+
								"</div>"+
								"<div class='omg'>"+
									"<img src='img/blog.png' class='sa'/>"+
								"</div>"+
								"<div class='omg'>"+
									"<img src='img/blog.png' class='sa'/>"+
								"</div>"+
							"</div>"+
						"</div></ul>");
					   
					   }
				   });
			   
		});
	
	</script>
</html>
