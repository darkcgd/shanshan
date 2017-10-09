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
		<meta charset="utf-8" />
		<meta id="viewport" name="viewport" content="width=device-width; initial-scale=1.0;  minimum-scale=1.0; maximum-scale=2.0" />
		<meta name="format-detection" content="telephone=no">
		<script type="text/javascript" src="js/jquery-1.7.1.min.js" ></script>
		<link rel="stylesheet" href="css/style.css" />
		<link rel="stylesheet" href="css/common.css" />
		
		<title>山善公众号</title>
		<base href="<%=basePath%>">
		<style>
			.MainIndex{background: #FFFFFF; position: fixed; width: 100%; bottom: 0%; left: 0%; border-top: 1px solid #d8d8d8;}
			.ZD{ font-size: 14px; line-height: 40px; color:#484848;display: block;width: 100%;}
			.ss .ZD{border-top: 1px solid #d8d8d8;border-right:1px solid #d8d8d8;}
			.sb .ZD{border-top: 1px solid #d8d8d8;border-right:1px solid #d8d8d8;}
			.sa .ZD{border-top: 1px solid #d8d8d8;border-left: 1px solid #d8d8d8;}
			.sa,.sb,.ss{display: none;}
		</style>
	</head>
	
	<body>
		<!--<div class="Register">
			<a class="LeftIcon" href="javascript:history.go(-1);"><img src="img/leftjt.png"></a>
			<span>兰亭会</span>
			<div style="clear:both;"></div>
	    </div>-->
		
		<div class="MainIndex">
		  <table width="100%">
		  	 <tr align="center" style="border-top: 1px solid #d8d8d8;">
		  	 	<td width="33%" style="border-right:1px solid #d8d8d8; position: relative; float: left;" >
		  	 	<a href="javascript:;" class="ZD">内容精选</a>
		  	 		<div class="ss" style=" position: absolute; bottom: 40px; left: 0; width: 100%; text-align: center;" >
		  	 			<a href="views/active/active.jsp" class="ZD">活动信息</a>
		  	 			<a href="views/equipment/sbxx.jsp" class="ZD">产品资料</a>
		  	 			<a href="views/article/article.jsp" class="ZD">技术文章</a>
		  	 		</div>
		  	 	</td>
		  	 	<td width="33%" style="border-right:1px solid #d8d8d8; position: relative; float: left;">
		  	 	<a href="javascript:;" class="ZD">技术服务</a>
		  	 	<div class="sb" style=" position: absolute; bottom: 40px; left: 0; width: 100%; text-align: center;" >
		  	 			<a href="views/coach.jsp" class="ZD">培训课程</a>
		  	 			<a href="views/jask.jsp" class="ZD">技术咨询</a>
		  	 			<a href="views/require.jsp" class="ZD">故障报修</a>
		  	 		</div>
		  	 	</td>
		  	 	<td width="33%" style=" position: relative; float: left;">
		  	 	<a href="javascript:;" class="ZD">个人中心</a>
		  	 	<div class="sa" style=" position: absolute; bottom: 40px; left: 0; width: 100%; text-align: center;" >
		  	 			<a href="views/aboutss.jsp" class="ZD">关于山善</a>
		  	 			<a href="views/service.jsp" class="ZD">联系我们</a>
		  	 			<a href="views/myrecord.jsp" class="ZD">我的记录</a>
		  	 			<a href="views/login.jsp" class="ZD">注册登录</a>
		  	 		</div>
		  	 	</td>
		  	 </tr>
		  </table>
		</div>
	</body>
	<script type="text/javascript">
		$('td').click(function(){
		$(this).children('div').toggle();
		})
		
	</script>
</html>
