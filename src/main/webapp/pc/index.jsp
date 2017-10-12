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
<title>山善后台管理登录</title>
<base href="<%=basePath%>">
<link rel="shortcut icon" href="pc/images/favicon.ico" />
<link href="pc/css/css.css" type="text/css" rel="stylesheet" />
<script src="static/js/jquery-3.2.1.min.js" type="text/javascript" charset="utf-8"></script>
<script type="text/javascript">
   $(document).ready(function(){
	   var userName=sessionStorage.getItem("user_name");
	   var pwd=sessionStorage.getItem("pwd_name");
	   if(userName==null||pwd.length==null){
		   window.location.href="pc/login.jsp";
	   }
   })
</script>
</head>
<!--框架样式-->
<frameset rows="95,*,30" cols="*" frameborder="no" border="0" framespacing="0">
<!--top样式-->
	<frame src="pc/model/top.jsp" name="" scrolling="no" noresize id="topframe" title="topframe" />
<!--contact样式-->
	<frameset id="attachucp" framespacing="0" border="0" frameborder="no" cols="194,12,*" rows="*">
		<frame scrolling="auto" noresize="" frameborder="no" name="leftFrame" src="pc/left/userleft.jsp"></frame>
		<frame id="leftbar" scrolling="no" noresize="" name="switchFrame" src="pc/model/swich.jsp"></frame>
		<frame scrolling="auto" noresize="" border="0" name="mainFrame" src="pc/main/indexmain.jsp"></frame>
	</frameset>
<!--bottom样式-->
	<frame src="pc/model/bottom.jsp" name="bottomFrame" scrolling="No" noresize="noresize" id="bottomFrame" title="bottomFrame" />
</frameset><noframes></noframes>
<!--不可以删除-->
</html>