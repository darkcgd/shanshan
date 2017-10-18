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
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>主要内容区main</title>
<base href="<%=basePath%>">
<link href="pc/css/css.css" type="text/css" rel="stylesheet" />
<link href="pc/css/main.css" type="text/css" rel="stylesheet" />
<link rel="shortcut icon" href="pc/images/main/favicon.ico" />
 <link rel="stylesheet" href="pc/css/page.css" type="text/css"> 
<!-- <link rel="stylesheet" href="pc/css/page.css" type="text/css"> -->
<script src="static/js/jquery-3.2.1.min.js" type="text/javascript" charset="utf-8"></script>
<!--  <script src="pc/js/vue.js" type="text/javascript" charset="utf-8"></script>-->

</head>
<body>
<script type="text/javascript">	
$(document).ready(function(){ 
		 function getUrlParam(name) {
		 var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)"); //构造一个含有目标参数的正则表达式对象
		 var r = window.location.search.substr(1).match(reg); //匹配目标参数
		 if (r != null) return unescape(r[2]); return null; }//返回参数值
	     var verifyUserId= getUrlParam('verifyUserId');
		 var userId= sessionStorage.getItem("userId");
		 var token= sessionStorage.getItem("c_token");
		 $.ajax({
			type : "GET", //用GET方式传输
			dataType : "json", //数据格式:JSON
			url : 'user/verifyUser', //目标地址
			data : {
				userId:userId,
				token:token,
				verifyUserId:verifyUserId
				},
			success : function(msg) {
				 if(msg.code==100){
					alert("审核失败");
			    	  $('#myModal').modal('show');
					  $(".modal-body").text(msg.msg);
				} 
				if(msg.code==200){
					  alert("审核成功");
					window.location.href = "<%=path%>/pc/main/user/userlist.jsp";
				
		}	 
		
  }
})
});


	</script>
</html>