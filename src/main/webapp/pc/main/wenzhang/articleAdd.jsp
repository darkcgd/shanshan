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
<script src="static/js/jquery-3.2.1.min.js" type="text/javascript"
	charset="utf-8"></script>
<script src="static/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
<script src="pc/editor/release/wangEditor.js"></script>
<script src="pc/js/bootstrap-datetimepicker.min.js"></script>
<script src="pc/js/bootstrap-datetimepicker.zh-CN.js"></script>

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

#search a.add {
	background: url(pc/images/main/add.jpg) no-repeat -3px 7px #548fc9;
	padding: 0 10px 0 26px;
	height: 40px;
	line-height: 40px;
	font-size: 14px;
	font-weight: bold;
	color: #FFF;
	float: right
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
                <input type="hidden" name="aticleId" value="" />
			<tr>			
				<td width="10%" class="tableleft">标题</td>
				<td><input type="text" id="title" value="" /></td>			
			</tr>
			<tr>
				<td width="10%" class="tableleft">作者</td>
				<td><input type="text" id="author" value="" /></td>			
			</tr>
			<tr>
				<td width="10%" class="tableleft">分类名称</td>
				<td>
			        <select   id="bigClass">
			           <option>加工应用<option>
				       <option>维修保养<option>
				       <option>其他<option>	
			        </select>
			        <select   id="smallClass"></select>
				</td>			
			</tr>
			<tr>
				<td width="10%" class="tableleft">推荐/头条</td>
				<td><select id="tagId">
				     <option value="1">推荐<option>
				     <option value="2">头条<option>
				</select></td>			
			</tr>
			<tr>
				<td class="tableleft">发布时间</td>
				<td><input type="text" value="" class="date" id="createTime"/></td>
			</tr>
			<tr>
				<td class="tableleft">开始时间</td>
				<td><input type="text" value="" class="date" id="startTime"/></td>				
			</tr>
			<tr>
				<td class="tableleft">结束时间</td>
				<td><input type="text" value="" class="date" id="endTime"/></td>					
			</tr>
		    <tr>
				<td class="tableleft">是否有相关活动报名</td>
				<td><select id="relateActivityId">
				     <option value="1">是<option>
				     <option value="0">否<option>					     		     
				</select></td>
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
				<td class="tableleft">内容</td>
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
			url : 'article/saveOpUpdate', //目标地址
			data : JSON.stringify(GetJsonData()),
			error: function(XMLHttpRequest){  
			     alert( "Error: " + XMLHttpRequest.responseText);  
			   }  ,
			success : function(msg) {
				alert(msg.errorCode);
				}
				//发送验证返回信息
		});
    });
    $("#bigClass option").click(function(){	
  	  if($(this).text()=="加工应用"){
  	    	$("#smallClass").html("");
  	    	$("#smallClass").append("<option>加工中心</option>"+
  	    			                "<option>车削中心</option>"+
  	    			                "<option>其他机床</option>"+
  	    			                "<option>其他</option>");
  	    	}
  	    	if($(this).text()=="维修保养"){ 	    		
  	    		$("#smallClass").html("");
  	    		$("#smallClass").append("<option>加工中心</option>"+
                                        "<option>车削中心</option>");
  	    	}if($(this).text().length==13||$(this).text()=="其他"||$(this).text().length==12){
  	    		$("#smallClass").html("");
  	    	}
    });
  
    //符文本编辑器设置
    var E = window.wangEditor
    var editor = new E('#editor')
   // editor.customConfig.uploadFileName = 'uploadPic';
    //editor.customConfig.uploadImgMaxLength = 5;
       //editor.customConfig.uploadImgServer = 'article/upload'
        editor.customConfig.uploadImgHeaders = {
         'Accept' : 'multipart/form-data'
    	 };  
      /* editor.customConfig.customUploadImg = function (files, insert) {
    	    // files 是 input 中选中的文件列表
    	    alert(files);
    	    // insert 是获取图片 url 后，插入到编辑器的方法
             
    	    // 上传代码返回结果之后，将图片插入到编辑器中
    	    insert(imgUrl)
    	} */
    editor.customConfig.uploadImgShowBase64 = true ; 
    editor.create();  
    function GetJsonData() {
    	var content=editor.txt.html();
    	var title=$("#title").val();
        var author=$("#author").val();
        var categoryName=$("#smallClass").find("option:selected").text();
        var tagId=$("#tagId").find("option:selected").val();
        var createTime=$("#createTime").val();
        var startTime=$("#startTime").val();
        var endTime=$("#endTime").val();
        var relateActivityId=$("#relateActivityId").find("option:selected").val();
        var relatePermissionUserType=$("#relatePermissionUserType").find("option:selected").val();
        var json = {
        	    title:title,
				author:author,
				content:content,
				categoryName:categoryName,
				tagId:tagId,
				createTime:createTime,
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