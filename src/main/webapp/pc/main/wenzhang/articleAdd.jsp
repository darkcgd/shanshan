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

			<tr>
				<input type="hidden" name="userId" value="" />
				<td width="10%" class="tableleft">标题</td>
				<td><input type="text" id="title" value="" /></td>			
			</tr>
			<tr>
				<td class="tableleft">发布时间</td>
				<td><input type="text" value="" class="date" id="cre"/></td>
			</tr>
			<tr>
				<td class="tableleft">开始时间</td>
				<td><input type="text" value="" class="date"/></td>				
			</tr>
			<tr>
				<td class="tableleft">结束时间</td>
				<td><input type="text" value="" class="date"/></td>					
			</tr>
		    <tr>
				<td class="tableleft">是否有相关活动报名</td>
				<td><select>
				     <option><option>
				     <option>是<option>
				     <option>否<option>			     
				</select></td>
			</tr>	
			<tr>
				<td class="tableleft">用户等级可看</td>
				<td><select>
				     <option>A级用户<option>
				     <option>B级用户<option>
				     <option>C级用户<option>
				</select></td>
			</tr>
			<tr>
				<td class="tableleft">内容</td>
				<td> 
				 <div id="editor">			       
			     </div> 
			    <button id="btn1">获取html</button>
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
    //符文本编辑器设置
    var E = window.wangEditor
    var editor = new E('#editor')
   // editor.customConfig.uploadFileName = 'uploadPic';
    //editor.customConfig.uploadImgMaxLength = 5;
       editor.customConfig.uploadImgServer = 'upload'
       editor.customConfig.uploadImgHeaders = {
         'Accept' : 'multipart/form-data'
    	 };
      editor.customConfig.customUploadImg = function (files, insert) {
    	    // files 是 input 中选中的文件列表
    	    alert(files);
    	    // insert 是获取图片 url 后，插入到编辑器的方法
             
    	    // 上传代码返回结果之后，将图片插入到编辑器中
    	    insert(imgUrl)
    	}
    editor.create();
    document.getElementById("saveInfo").addEventListener('click', function () {
        // 读取 html
        alert(editor.txt.html());
        var title=$("#title").val();
        alert(title);   
    
    }, false);
  
    //时间控件
    $('.date').datetimepicker({
		 language: 'zh-CN',//显示中文
		 format: 'yyyy-mm-dd',//显示格式
		 minView: "month",//设置只显示到月份
		 initialDate: new Date(),//初始化当前日期
		 autoclose: true,//选中自动关闭
		 todayBtn: true//显示今日按钮
		 }) 
	//保证时间控件不会被副文本控件影响
     var zIndex = parseInt(this.element.parents().filter(function(){
    		    return $(this).css('z-index') !== 'auto';
    		    }).first().css('z-index'))  +10;
    		        
    </script>
</html>