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

#customTime a.add  {
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
				<td class="tableleft">培训开始时间</td>
				<td><input type="text" value="" class="date" id="startTime"/></td>				
			</tr>
			<tr>
				<td class="tableleft">培训结束时间</td>
				<td><input type="text" value="" class="date" id="endTime"/></td>					
			</tr>
			<tr>
				<td class="tableleft">培训场次(时间+场次)</td>
				<td id="customTime"><a onclick="addcustomTime();" target="mainFrame" onFocus="this.blur()" class="add">添加活动场次</a>
				    <input style="width:35%;margin-top:10px;margin-left:20px;" type="text" id="AllcustomTime" value=""/>
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
				    <input type="checkbox" name="Info[]" value=""  id="isNeedJoinDate"/>&nbsp;&nbsp;参加活动日期<br/>	
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
    $(document).ready(function(){
    	 function getUrlParam(name) {
			   var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)"); //构造一个含有目标参数的正则表达式对象
			   var r = window.location.search.substr(1).match(reg); //匹配目标参数
			   if (r != null) return unescape(r[2]); return null; 
			}//返回参数值
    	 var trainingCourseId= getUrlParam('trainingCourseId');
    	 $.ajax({
		   type:'get',
		   url:'trainingCourse/trainingCourseDetail',
		   data:"trainingCourseId="+trainingCourseId,
		   dataType:'json',
		   success:function(msg){
			   if(msg.code==200){
				    var data=msg.data;//数据
			    	var title=data.title==null?'':data.title;//标题
			        var author=data.author==null?'':data.author;			       
			        var tagId=data.tagId;
			        var startTime=data.startTime==null?'':data.startTime;
			        var endTime=data.endTime==null?'':data.endTime;
			        var customTime1=data.customTime1==null?'':data.customTime1;
			        var isNeedCompany=data.isNeedCompany;
			        var isNeedUserName=data.isNeedUserName;
			        var isNeedPhone=data.isNeedPhone;
			        var isNeedPositionName=data.isNeedPositionName;
			        var isNeedDepartmentName=data.isNeedDepartmentName;
			        var isNeedFreeLunch=data.isNeedFreeLunch;
			        var isNeedProvideAccommodation=data.isNeedProvideAccommodation;
			        var isNeedJoinDate=data.isNeedJoinDate;
			        var isNeedSource=data.isNeedSource;
			        var isNeedPhoto=data.isNeedPhoto;
			        var relatePermissionUserType=data.relatePermissionUserType==null?'':data.relatePermissionUserType;
			        var content=data.content==null?'':data.content;
			        //回填数据
			        $("#title").val(title);
			        $("#author").val(author);
			        if(tagId==0){
			        	$("#tagId input:nth-child(2)").attr({checked:'checked'});
			        }
			        if(tagId==1){
			        	$("#tagId input:nth-child(1)").attr({checked:'checked'});
			        }
			        $("#startTime").val(startTime);
			        $("#endTime").val(endTime);
			        $("#AllcustomTime").val(customTime1);
			        //复选框
			        if(isNeedCompany==1){
			        	$("#isNeedCompany").attr({checked:"checked"});
			        }
			        if(isNeedUserName==1){
			        	$("#isNeedUserName").attr({checked:"checked"});
			        }
			        if(isNeedPhone==1){
			        	$("#isNeedPhone").attr({checked:"checked"});
			        }
			        if(isNeedPositionName==1){
			        	$("#isNeedPositionName").attr({checked:"checked"});
			        }
			        if(isNeedDepartmentName==1){
			        	$("#isNeedDepartmentName").attr({checked:"checked"});
			        }
			        if(isNeedFreeLunch==1){
			        	$("#isNeedFreeLunch").attr({checked:"checked"});
			        }
			        if(isNeedProvideAccommodation==1){
			        	$("#isNeedProvideAccommodation").attr({checked:"checked"});
			        }		
			        if(isNeedJoinDate==1){
			        	$("#isNeedJoinDate").attr({checked:"checked"});
			        }
			        if(isNeedSource==1){
			        	$("#isNeedSource").attr({checked:"checked"});
			        }
			        if(isNeedPhoto==1){
			        	$("#isNeedPhoto").attr({checked:"checked"});
			        }
			        //用户等级可看
			        if(relatePermissionUserType==1){
			        	$("#relatePermissionUserType option:nth-child(0)").attr({selected:'selected'});
			        }
			        if(relatePermissionUserType==2){
			        	$("#relatePermissionUserType option:nth-child(3)").attr({selected:'selected'});
			        }
			        if(relatePermissionUserType>=3){
			        	$("#relatePermissionUserType option:nth-child(5)").attr({selected:'selected'});
			        }
			        editor.txt.html("<p>"+content+"</p>");			
			   }
		   }
    	 });
    })
    function getUrlParam(name) {
			   var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)"); //构造一个含有目标参数的正则表达式对象
			   var r = window.location.search.substr(1).match(reg); //匹配目标参数
			   if (r != null) return unescape(r[2]); return null; 
			}//返回参数值
    $("#saveInfo").click(function(){ 
        $.ajax({
			type : "POST", //用POST方式传输
			contentType: "application/json; charset=utf-8", //数据格式:JSON
			type:"json", //数据格式:JSON
			url : 'activity/saveOpUpdate', //目标地址
			data : JSON.stringify(GetJsonData()),
			error: function(XMLHttpRequest){  
			    // alert( "Error: " + XMLHttpRequest.responseText);  
			   }  ,
			success : function(msg) {
				 window.location.href="pc\\main\\train\\trainList.jsp";
				}
				//发送验证返回信息
		});
    });
    //符文本编辑器设置
    var E = window.wangEditor
    var editor = new E('#editor')
       // editor.customConfig.uploadImgShowBase64 = true ; 
        editor.customConfig.uploadImgServer = 'article/upload';
        editor.customConfig.uploadImgMaxSize = 10 * 1024 * 1024;
        editor.customConfig.uploadImgMaxLength = 5;     
        editor.create();
        E.fullscreen.init('#editor');
    //json数据
       function GetJsonData() {
    	   var trainingCourseId= getUrlParam('trainingCourseId');
    	   var title=$("#title").val();
           var author=$("#author").val();
           var tagId=$('#tagId input:radio[name="tagId"]:checked').val();
           var startTime=$("#startTime").val();
           var endTime=$("#endTime").val();
           var customTime1=$("#AllcustomTime").val();
           if($("#isNeedCompany").is(':checked'))
   		        {var isNeedCompany=1;
           	     var isNeedCompanyAddress=1;
   		        	}else{
   		        		var isNeedCompany=0
   		        		var isNeedCompanyAddress=0;
   		        	};
           if($("#isNeedUserName").is(':checked')){var isNeedUserName=1} else{var isNeedUserName=0};
           if($("#isNeedPhone").is(':checked')){var isNeedPhone=1} else{var isNeedPhone=0};
           if($("#isNeedPositionName").is(':checked')){var isNeedPositionName=1} else{var isNeedPositionName=0};
           if($("#isNeedDepartmentName").is(':checked')){var isNeedDepartmentName=1} else{var isNeedDepartmentName=0};
           if($("#isNeedFreeLunch").is(':checked')){var isNeedFreeLunch=1} else{var isNeedFreeLunch=0};
           if($("#isNeedProvideAccommodation").is(':checked')){var isNeedProvideAccommodation=1} else{var isNeedProvideAccommodation=0};
           if($("#isNeedJoinDate").is(':checked')){var isNeedJoinDate=1} else{var isNeedJoinDate=0};
           if($("#isNeedSource").is(':checked')){var isNeedSource=1} else{var isNeedSource=0};
           if($("#isNeedPhoto").is(':checked')){var isNeedPhoto=1} else{var isNeedPhoto=0};
           var relatePermissionUserType=$("#relatePermissionUserType").find("option:selected").val();
           var content=editor.txt.html();
           var json = {
        		activityId:activityId,
           	    title:title,
   				author:author,
   				tagId:tagId,
   				startTime:startTime,
   				endTime:endTime,
   				customTime1:customTime1,
   				isNeedCompany:isNeedCompany,
   				isNeedCompanyAddress:isNeedCompanyAddress,
   				isNeedUserName:isNeedUserName,
   				isNeedPhone:isNeedPhone,
   				isNeedPositionName:isNeedPositionName,
   				isNeedDepartmentName:isNeedDepartmentName,
   				isNeedFreeLunch:isNeedFreeLunch,
   				isNeedProvideAccommodation:isNeedProvideAccommodation,
   				isNeedJoinDate:isNeedJoinDate,
   				isNeedSource:isNeedSource,
   				isNeedPhoto:isNeedPhoto,
   				relatePermissionUserType:relatePermissionUserType,
   				content:content,
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