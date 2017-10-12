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
<title>左侧导航menu</title>
<base href="<%=basePath%>">
<link href="pc/css/css.css" type="text/css" rel="stylesheet" />
<script type="text/javascript" src="pc/js/sdmenu.js"></script>
<script src="static/js/jquery-3.2.1.min.js" type="text/javascript" charset="utf-8"></script>
<script type="text/javascript">
	// <![CDATA[
	var myMenu;
	window.onload = function() {
		myMenu = new SDMenu("my_menu");
		myMenu.init();
	};
	// ]]>
</script>
<style type=text/css>
html{ SCROLLBAR-FACE-COLOR: #538ec6; SCROLLBAR-HIGHLIGHT-COLOR: #dce5f0; SCROLLBAR-SHADOW-COLOR: #2c6daa; SCROLLBAR-3DLIGHT-COLOR: #dce5f0; SCROLLBAR-ARROW-COLOR: #2c6daa;  SCROLLBAR-TRACK-COLOR: #dce5f0;  SCROLLBAR-DARKSHADOW-COLOR: #dce5f0; overflow-x:hidden;}
body{overflow-x:hidden; background:url(pc/images/main/leftbg.jpg) left top repeat-y #f2f0f5; width:194px;}
</style>
</head>
<body onselectstart="return false;" ondragstart="return false;" oncontextmenu="return false;">
<div id="left-top">
	<div><img src="pc/images/main/member.gif" width="44" height="44" /></div>
    <span>用户：<b class="c_name"></b><br>角色：超级管理员</span>
</div>
    <div style="float: left" id="my_menu" class="sdmenu">
      <div class="collapsed">
        <span>个人中心</span>
        <a href="pc/main/indexmain.jsp" target="mainFrame" onFocus="this.blur()">后台首页</a>
        <a href="pc/main/indexmain.jsp" target="mainFrame" onFocus="this.blur()">列表页</a>
        <a href="pc/main/indexmain.jsp" target="mainFrame" onFocus="this.blur()">列表详细页</a>
        <a href="pc/main/indexmain.jsp" target="mainFrame" onFocus="this.blur()">留言页</a>
        <a href="pc/main/indexmain.jsp" target="mainFrame" onFocus="this.blur()">栏目管理</a>
      </div>
    </div>
</body>
<script type="text/javascript">

var userName=sessionStorage.getItem("user_name");
var pwd=sessionStorage.getItem("pwd_name");
if(userName!=null){
	$(".c_name").text("");
	$(".c_name").text(userName);
}
</script>
</html>