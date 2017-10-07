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
<title>后台页面头部</title>
<base href="<%=basePath%>">
<link href="pc/css/css.css" type="text/css" rel="stylesheet" />
</head>
<body onselectstart="return false" oncontextmenu=return(false) style="overflow-x:hidden;">
<!--禁止网页另存为-->
<noscript><iframe scr="*.htm"></iframe></noscript>
<!--禁止网页另存为-->
<table width="100%" border="0" cellspacing="0" cellpadding="0" id="header">
  <tr>
    <td rowspan="2" align="left" valign="top" id="logo"><img src="pc/images/login/logo1.gif" width="74" height="64"></td>
    <td align="left" valign="bottom">
    <table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td align="left" valign="bottom" id="header-name">山善后台管理</td>
        <td align="right" valign="top" id="header-right">
        	<a href="pc/login.jsp" target="topFrame" onFocus="this.blur()" class="admin-out">注销</a>
            <a href="pc/indexmain.jsp" target="top" onFocus="this.blur()" class="admin-home">管理首页</a>
        	<a href="pc/indexmain.jsp" target="_blank" onFocus="this.blur()" class="admin-index">网站首页</a>       	
            <span>
<!-- 日历 -->
<SCRIPT type=text/javascript src="js/clock.js"></SCRIPT>
<SCRIPT type=text/javascript>showcal();</SCRIPT>
            </span>
        </td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td align="left" valign="bottom">
	<table width="100%" border="0" cellspacing="0" cellpadding="0" class="sdmenu">
      <tr class="collapsed">
        <td align="left" valign="top" id="header-admin">后台管理系统</td>
        <td align="left" valign="bottom" id="header-menu">
        <a href="pc/main/indexmain.jsp" target="mainFrame" onFocus="this.blur()" id="menuon">后台首页</a>
        <a href="pc/main/usermain.jsp" target="mainFrame" onFocus="this.blur()">用户管理</a>
        <a href="pc/main/lanmumain.jsp" target="mainFrame" onFocus="this.blur()">栏目管理</a>
        <a href="pc/main/xinximain.jsp" target="mainFrame" onFocus="this.blur()">信息管理</a>
        <a href="pc/main/liuyanmain.jsp" target="mainFrame" onFocus="this.blur()">留言管理</a>
        <a href="pc/main/fujianmain.jsp" target="mainFrame" onFocus="this.blur()">附件管理</a>
        <a href="pc/main/zhandianmain.jsp" target="mainFrame" onFocus="this.blur()">站点管理</a>
         </td>
      </tr>
    </table></td>
  </tr>
</table>
 
</body>
</html>