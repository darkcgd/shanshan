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
<link rel="stylesheet" href="static/bootstrap-3.3.7-dist/css/bootstrap.css" type="text/css">
<link rel="stylesheet" href="pc/css/style.css" type="text/css">
<link rel="stylesheet" href="pc/css/bootstrap-datetimepicker.min.css" type="text/css">
<link rel="stylesheet" href="pc/css/wangEditor-fullscreen-plugin.css" type="text/css">
<script src="static/js/jquery-3.2.1.min.js" type="text/javascript"
	charset="utf-8"></script>
<script src="static/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
<script src="pc/editor/release/wangEditor.js"></script>
<script src="pc/js/bootstrap-datetimepicker.min.js"></script>
<script src="pc/js/bootstrap-datetimepicker.zh-CN.js"></script>
<script src="pc/js/wangEditor-fullscreen-plugin.js" type="text/javascript"
	charset="utf-8"></script>
<script type="text/javascript">
   $(document).ready(function(){
	   var userName=sessionStorage.getItem("user_name");
	   var pwd=sessionStorage.getItem("pwd_name");
	   if(userName==null||pwd.length==null){
		   window.location.href="pc/login.jsp";
	   }
   })
</script>
<style>
body {
	overflow-x: hidden;
	background: #f2f0f5;
	padding: 15px 0px 10px 5px;
}

#searchmain {
	font-size: 12px;
}

#search {
	font-size: 12px;
	background: #548fc9;
	margin: 10px 10px 0 0;
	display: inline;
	width: 100%;
	color: #FFF;
	float: left
}

#search form span {
	height: 40px;
	line-height: 40px;
	padding: 0 0px 0 10px;
	float: left;
}

#search form input.text-word {
	height: 24px;
	line-height: 24px;
	width: 180px;
	margin: 8px 0 6px 0;
	padding: 0 0px 0 10px;
	float: left;
	border: 1px solid #FFF;
}

#search form input.text-but {
	height: 24px;
	line-height: 24px;
	width: 55px;
	background: url(pc/images/main/list_input.jpg) no-repeat left top;
	border: none;
	cursor: pointer;
	font-family: "Microsoft YaHei", "Tahoma", "Arial", '宋体';
	color: #666;
	float: left;
	margin: 8px 0 0 6px;
	display: inline;
}

#customTime a.add {
	background: url(pc/images/main/add.jpg) no-repeat -3px 7px #548fc9;
	padding: 0 10px 0 26px;
	height: 40px;
	line-height: 40px;
	font-size: 14px;
	font-weight: bold;
	color: #FFF;
	float: left;
}

#search a:hover.add {
	text-decoration: underline;
	color: #d2e9ff;
}

#main-tab {
	border: 1px solid #eaeaea;
	background: #FFF;
	font-size: 12px;
}

#main-tab th {
	font-size: 12px;
	background: url(pc/images/main/list_bg.jpg) repeat-x;
	height: 32px;
	line-height: 32px;
}

#main-tab td {
	font-size: 12px;
	line-height: 40px;
}

#main-tab td a {
	font-size: 12px;
	color: #548fc9;
}

#main-tab td a:hover {
	color: #565656;
	text-decoration: underline;
}

.bordertop {
	border-top: 1px solid #ebebeb
}

.borderright {
	border-right: 1px solid #ebebeb
}

.borderbottom {
	border-bottom: 1px solid #ebebeb
}

.borderleft {
	border-left: 1px solid #ebebeb
}

.gray {
	color: #dbdbdb;
}

td.fenye {
	padding: 10px 0 0 0;
	text-align: right;
}

.bggray {
	background: #f9f9f9
}
</style>
</head>
<body>
	<form>
		<table class="table table-bordered table-hover definewidth m10">           
			<tr>			
				<td width="10%" class="tableleft">标题</td>
				<td><input type="text" id="title" value="" style="width:30%"/></td>			
			</tr>
			<tr>
				<td width="10%" class="tableleft">发布者</td>
				<td><input type="text" id="author" value="" /></td>			
			</tr>
			<tr>
				<td width="10%" class="tableleft">是否置顶</td>
				<td id="tagId">
				  是&nbsp;&nbsp;<input type="radio" name="tagId"  value="1" checked="checked"/>
				  否&nbsp;&nbsp;<input type="radio" name="tagId"  value="0" />
				</td>			
			</tr>
			<tr>
				<td class="tableleft">活动开始时间</td>
				<td><input type="text" value="" class="date" id="startTime"/></td>				
			</tr>
			<tr>
				<td class="tableleft">活动结束时间</td>
				<td><input type="text" value="" class="date" id="endTime"/></td>					
			</tr>
			<tr>
				<td class="tableleft">活动场次(时间+场次)</td>
				<td id="customTime"><a onclick="addcustomTime();" target="mainFrame" onFocus="this.blur()" class="add">添加活动场次</a>
				    <input style="display:none;width:35%;margin-top:10px;margin-left:20px;" type="text" id="AllcustomTime" value=""/>
				</td>					
			</tr>
		    <tr>
				<td class="tableleft">需要提交的报名信息</td>
				<td id="joinActiveInfo">
				    <input type="checkbox"  id="joinActiveInfoAll" onclick="chkAll(this)"  />&nbsp;&nbsp;全选<br/>
				    <input type="checkbox" name="Info[]" value=""  id="isNeedCompany"/>&nbsp;&nbsp;公司信息<br/>
				    <input type="checkbox" name="Info[]" value=""  id="isNeedUserName"/>&nbsp;&nbsp;姓名<br/>
				    <input type="checkbox" name="Info[]" value=""  id="isNeedPhone"/>&nbsp;&nbsp;手机号<br/>
				    <input type="checkbox" name="Info[]" value=""  id="isNeedPositionName"/>&nbsp;&nbsp;职位<br/>
				    <input type="checkbox" name="Info[]" value=""  id="isNeedDepartmentName"/>&nbsp;&nbsp;部门<br/>
				    <input type="checkbox" name="Info[]" value=""  id="isNeedFreeLunch"/>&nbsp;&nbsp;是否需要免费午餐<br/>
				    <input type="checkbox" name="Info[]" value=""  id="isNeedProvideAccommodation"/>&nbsp;&nbsp;是否需要提供住宿<br/>
				    <input type="checkbox" name="Info[]" value=""  id=isNeedJoinDate/>&nbsp;&nbsp;参加活动日期<br/>	
				    <input type="checkbox" name="Info[]" value=""  id="isNeedSource"/>&nbsp;&nbsp;活动信息来源<br/>
				    <input type="checkbox" name="Info[]" value=""  id="isNeedPhoto"/>&nbsp;&nbsp;照片<br/>			
				</td>							
			</tr>	
			<tr>
				<td class="tableleft">用户等级可看</td>
				<td><select id="relatePermissionUserType">
				     <option value="1">A级用户<option>
				     <option value="2">B级用户<option>
				     <option value="3">C级用户<option>
				</select></td>
			</tr>
			<tr>
				<td class="tableleft">活动内容</td>
				<td> 
				 <div id="editor">			       
			     </div> 
			    </td>
			</tr>
			<tr>
				<td class="tableleft"></td>
				<td>
					<button id="saveInfo"  class="btn btn-primary" type="button">保存</button>
					&nbsp;&nbsp;
					<button type="reset" class="btn btn-success">重置</button>
				</td>
			</tr>
		</table>
</form>   
</body>
 <!-- 注意， 只需要引用 JS，无需引用任何 CSS ！！！-->
    <script type="text/javascript" src="pc/editor/release/wangEditor.js"></script>
    <script type="text/javascript">
    $("#saveInfo").click(function(){ 
        $.ajax({
			type : "POST", //用POST方式传输
			contentType: "application/json; charset=utf-8", //数据格式:JSON
			type:"json", //数据格式:JSON
			url : 'activity/saveOpUpdate', //目标地址
			data : JSON.stringify(GetJsonData()),
			error: function(XMLHttpRequest){  
			     //alert( "Error: " + XMLHttpRequest.responseText);  
			   }  ,
			success : function(msg) {
			 window.location.href="pc//main//houdong//activeList.jsp";
				}
				//发送验证返回信息
		});
    });
    //提交活动信息复选框全选功能    
  function chkAll(obj){
	var objs = document.getElementsByName('Info[]');
    for (var i = objs.length - 1; i >= 0; i--) {
      objs[i].checked = obj.checked;
    };
  }
    //添加活动场次功能
    function addcustomTime(){
    	$("#AllcustomTime").show();
    }
    //符文本编辑器设置
    var E = window.wangEditor
    var editor = new E('#editor')
       // editor.customConfig.uploadImgShowBase64 = true ; 
        editor.customConfig.uploadImgServer = 'article/upload';
        editor.customConfig.uploadImgMaxSize = 10 * 1024 * 1024;
        editor.customConfig.uploadImgMaxLength = 5;     
        editor.create();
        E.fullscreen.init('#editor');
    function GetJsonData() {   	
    	var title=$("#title").val();
        var author=$("#author").val();
        var categoryName=$("#smallClass").find("option:selected").text();
        var tagId=$("#tagId").find("option:selected").val();
        var startTime=$("#startTime").val();
        var endTime=$("#endTime").val();
        var relateActivityId=$("#IdSelect").find("option:selected").text();
        var relatePermissionUserType=$("#relatePermissionUserType").find("option:selected").val();
        var content=editor.txt.html();
        var json = {
        	    title:title,
				author:author,
				content:content,
				categoryName:categoryName,
				tagId:tagId,
				startTime:startTime,
				endTime:endTime,
				relateActivityId:relateActivityId,
				relatePermissionUserType:relatePermissionUserType
        };
        return json;
    }
    //时间控件
    $('.date').datetimepicker({
		 language: 'zh-CN',//显示中文
		 format: 'yyyy-mm-dd',//显示格式
		 minView: "month",//设置只显示到月份
		 initialDate: new Date(),//初始化当前日期
		 autoclose: true,//选中自动关闭
		 todayBtn: true//显示今日按钮
		 }) 
    </script>
</html>