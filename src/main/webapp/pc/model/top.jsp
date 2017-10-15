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
<script src="static/js/jquery-3.2.1.min.js" type="text/javascript" charset="utf-8"></script>
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
        	<a  class="admin-out" onclick="deleteSession()">注销</a>
            <a href="pc/index.jsp" target="top" onFocus="this.blur()" class="admin-home">管理首页</a>
        	<a href="pc/index.jsp" target="_blank" onFocus="this.blur()" class="admin-index">网站首页</a>       	
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
        <a href="pc/left/userleft.jsp" target="leftFrame" onFocus="this.blur()">用户管理</a>
        <a href="pc/left/articleleft.jsp" target="leftFrame" onFocus="this.blur()">文章管理</a>
        <a href="pc/left/activityleft.jsp" target="leftFrame" onFocus="this.blur()">活动管理</a>
        <a href="pc/left/repairsleft.jsp" target="leftFrame" onFocus="this.blur()">报修管理</a>
        <a href="pc/left/serviceleft.jsp" target="leftFrame" onFocus="this.blur()">客服管理</a>
        <a href="pc/left/trainleft.jsp" target="leftFrame" onFocus="this.blur()">培训管理</a>
         </td>
      </tr>
    </table></td>
  </tr>
</table>
</body>
<script type="text/javascript">
 function deleteSession(){
	 alert("您确定要退出？");
	 sessionStorage.clear("user_name"); 	 
	 sessionStorage.clear("pwd_name");	 
	 window.parent.frames.location.href = "<%=path%>/pc/login.jsp";
 }
</script>
</html>