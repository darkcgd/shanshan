<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>test</title>
<%
	pageContext.setAttribute("APP_PATH", request.getContextPath());
%>
<!-- web路径：
不以/开始的相对路径，找资源，以当前资源的路径为基准，经常容易出问题。
以/开始的相对路径，找资源，以服务器的路径为标准(http://localhost:3306)；需要加上项目名
		http://localhost:3306/crud
 -->
<script type="text/javascript"
	src="${APP_PATH }/static/js/jquery-3.2.1.min.js"></script>
<link
	href="${APP_PATH }/static/bootstrap-3.3.7-dist/css/bootstrap.min.css"
	rel="stylesheet">
<link href="${APP_PATH }/css/login.css" rel="stylesheet">
<script
	src="${APP_PATH }/static/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
</head>
<body>

	<div class="container">
		<div class="row">
			 <form id="myform" name="myform" method="post" onsubmit="return sumbitTest();"   
      action="RegisterAction.action">  
    <table>  
        <tr>  
            <td>姓名:</td>  
            <td> <input type="text" name="name" /> </td>  
        </tr>  
        <tr>  
            <td>性别:</td>  
            <td>  
                <input type="radio" name="sex" value="1"> 男  
                <input type="radio" name="sex" value="0"> 女  
            </td>  
        </tr>  
        <tr>  
            <td>年龄:</td>  
            <td>  
                <select name="age">  
                    <option value="20">20</option>  
                    <option value="21">21</option>  
                    <option value="22">22</option>  
                </select>  
            </td>  
        </tr>  
        <tr>  
            <td colspan="2">  
                <input type="submit" value="Submit普通提交">  
                <input type="button" id="ajaxBtn" value="AJAX提交" />  
                <input type="button" id="jqueryBtn" value="jQuery提交" />  
                <input type="button" id="jsBtn" value="JS提交" />  
                <input type="submit" value="onSubmit提交" />  
            </td>  
        </tr>  
    </table>  
</form>  
		</div>
	</div>
	<script type="text/javascript">
	 $(function() {  
	        //ajax提交  
	        $("#ajaxBtn").click(function() {  
	            var params = $("#myform").serialize();  
	            alert("successparams: " + params);  
	            /* $.ajax( {  
	                type : "POST",  
	                url : "RegisterAction.action",  
	                data : params,  
	                success : function(msg) {  
	                    alert("success: " + msg);  
	                }  
	            });   */
	        })  
	  
	        //jQuery提交  
	        $("#jqueryBtn").click(function(){  
	            $("#myform").submit();  
	        })  
	  
	        //js提交   
	        $("#jsBtn").click(function(){  
	            document.myform.action="RegisterAction.action";     
	            document.myform.submit();     
	        })  
	    })  
	    function sumbitTest(){  
	        return true; //return false则不会提交   
	    }  
	</script>

</body>
</html>