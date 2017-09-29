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
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>后台管理登录界面</title>
    <base href="<%=basePath%>">
    <link href="pc/css/alogin.css" rel="stylesheet" type="text/css" />
    <script src="js/jquery-1.7.1.min.js" type="text/javascript" charset="utf-8"></script>
</head>
<body>
    <form id="form1" runat="server" action="" method="post">
    	
    <div class="Main">
        <div class="main1">
		    	<img src="pc/images/login/logo1.gif" alt="" style="width: 150px;" />
		</div>		
        <ul>
            <li class="top"></li>
            <li class="top2"></li>
            <li class="topA"></li>
            <li class="topB"></li>
            <li class="topC"></li>
            <li class="topD">
                <ul class="login">
                    <li><span class="left login-text">用户名：</span> <span style="left">
                        <input id="userName" type="text" class="txt" name="userName"/>  
                     
                    </span></li>
                    <li><span class="left login-text">密码：</span> <span style="left">
                       <input id="pwd" type="password" class="txt" name="pwd" />  
                    </span></li>
					
                </ul>
            </li>
            <li class="topE"></li>
            <li class="middle_A"></li>
            <li class="middle_B"></li>
            <li class="middle_C">
            <span class="btn">
            	<a href="javascript:void(0);" onclick="denglu();"><input  name="" type="image" src="pc/images/login/btnlogin.gif" /></a>
            </span></li>
            <li class="middle_D"></li>
            <li class="bottom_A"></li>
            <li class="bottom_B">山善后台管理系统</li>
        </ul>
    </div>
    </form>
</body>
</html>
<script type="text/javascript">
function denglu(){
	var userName=$("#username").val();
	
	var pwd=$("#pwd").val();
	$.ajax({
		type:"GET",
		dataType: "text",
		url: '/adminLogin',
		data: {userName:userName,pwd:pwd},
		
		//error: function (XMLHttpReuest,textStatus, errorThrown){},
		success: function (msg){
			alert(msg.msg);
			if(msg.code==100){
				alert(msg.msg);
			}else{
				var data=msg.data;
				if(data.userType==4){
					window.location.href="pc/index.jsp";
				}
			}
			
		}
	});
}
</script>