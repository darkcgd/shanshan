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
        	<a  onFocus="this.blur()" class="admin-out" onclick="checkCookie()">注销</a>
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
        <a href="pc/left/indexleft.jsp" target="leftFrame" onFocus="this.blur()">后台首页</a>
        <a href="pc/left/userleft.jsp" target="leftFrame" onFocus="this.blur()">用户管理</a>
        <a href="pc/left/lanmuleft.jsp" target="leftFrame" onFocus="this.blur()">栏目管理</a>
        <a href="pc/left/xinxileft.jsp" target="leftFrame" onFocus="this.blur()">信息管理</a>
        <a href="pc/left/liuyanleft.jsp" target="leftFrame" onFocus="this.blur()">留言管理</a>
        <a href="pc/left/fujianleft.jsp" target="leftFrame" onFocus="this.blur()">附件管理</a>
        <a href="pc/left/zhandianleft.jsp" target="leftFrame" onFocus="this.blur()">站点管理</a>
         </td>
      </tr>
    </table></td>
  </tr>
</table>
</body>
 <script type="text/javascript">
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
 //清除cookie  
function clearCookie(name) {  
    setCookie(name, "", -1);
}  
function checkCookie() {
    var user = getCookie("c_name");
    if (user != "") {
   	 alert("不是吧！你真的要退出吗！" + user);
   	 window.parent.frames.location.href = "<%=path%>/pc/login.jsp";
    } /* else {
        user = prompt("Please enter your name:", "");
        if (user != "" && user != null) {
            setCookie("username", user, 365);
        } 
    }  */
}

</script>
</html>