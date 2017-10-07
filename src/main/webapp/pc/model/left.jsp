<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>左侧导航menu</title>
<link href="/shanshan/pc/css/css.css" type="text/css" rel="stylesheet" />
<script type="text/javascript" src="js/sdmenu.js"></script>
<script src="/shanshan/static/js/jquery-3.2.1.min.js" type="text/javascript" charset="utf-8"></script>
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
body{overflow-x:hidden; background:url(/shanshan/pc/images/main/leftbg.jpg) left top repeat-y #f2f0f5; width:194px;}
</style>
</head>
<body onselectstart="return false;" ondragstart="return false;" oncontextmenu="return false;">
<div id="left-top">
	<div><img src="/shanshan/pc/images/main/member.gif" width="44" height="44" /></div>
    <span>用户：<b class="c_name"></b><br>角色：超级管理员</span>
</div>
    <div style="float: left" id="my_menu" class="sdmenu">
      <div class="collapsed">
        <span>个人中心</span>
        <a href="main.jsp" target="mainFrame" onFocus="this.blur()">后台首页</a>
        <a href="main_list.jsp" target="mainFrame" onFocus="this.blur()">列表页</a>
        <a href="main_info.jsp" target="mainFrame" onFocus="this.blur()">列表详细页</a>
        <a href="main_message.jsp" target="mainFrame" onFocus="this.blur()">留言页</a>
        <a href="main_menu.jsp" target="mainFrame" onFocus="this.blur()">栏目管理</a>
      </div>
      <div>
        <span>客服中心</span>
        <a href="main.jsp" target="mainFrame" onFocus="this.blur()">分组权限</a>
        <a href="main_list.jsp" target="mainFrame" onFocus="this.blur()">级别权限</a>
        <a href="main_info.jsp" target="mainFrame" onFocus="this.blur()">角色管理</a>
        <a href="main.jsp" target="mainFrame" onFocus="this.blur()">自定义权限</a>
      </div>
      <div>
        <span>分组管理</span>
        <a href="main.jsp" target="mainFrame" onFocus="this.blur()">分组权限</a>
        <a href="main_list.jsp" target="mainFrame" onFocus="this.blur()">级别权限</a>
        <a href="main_info.jsp" target="mainFrame" onFocus="this.blur()">角色管理</a>
        <a href="main.jsp" target="mainFrame" onFocus="this.blur()">自定义权限</a>
      </div>
      <div>
        <span>系统设置</span>
        <a href="main.jsp" target="mainFrame" onFocus="this.blur()">分组权限</a>
        <a href="main_list.jsp" target="mainFrame" onFocus="this.blur()">级别权限</a>
        <a href="main_info.jsp" target="mainFrame" onFocus="this.blur()">角色管理</a>
        <a href="main.jsp" target="mainFrame" onFocus="this.blur()">自定义权限</a>
      </div>
    </div>
</body>
<script type="text/javascript">
//会检查 document.cookie 对象中是否存有 cookie
var username=getCookie("c_name");
$(".c_name").text(username);
function getCookie(c_name)
{
if (document.cookie.length>0)
  {
  c_start=document.cookie.indexOf(c_name + "=");
  if (c_start!=-1)
    { 
    c_start=c_start + c_name.length+1 
    c_end=document.cookie.indexOf(";",c_start)
    if (c_end==-1) c_end=document.cookie.length
    return unescape(document.cookie.substring(c_start,c_end))
    } 
  }
return ""
}
//检查cookie
function checkCookie()
{
username=getCookie('username');
if (username!=null && username!="")
  {alert('Welcome again '+username+'!')}
else 
  {
  username=prompt('Please enter your name:',"");
  if (username!=null && username!="")
    {
    setCookie('username',username,365)
    }
  }
}
</script>
</html>