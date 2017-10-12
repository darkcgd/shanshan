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
<!-- <link rel="stylesheet" href="pc/css/page.css" type="text/css"> -->
<script src="static/js/jquery-3.2.1.min.js" type="text/javascript" charset="utf-8"></script>
<!--  <script src="pc/js/vue.js" type="text/javascript" charset="utf-8"></script>-->
<style>
body{overflow-x:hidden; background:#f2f0f5; padding:15px 0px 10px 5px;}
#searchmain{ font-size:12px;}
#search{ font-size:12px; background:#548fc9; margin:10px 10px 0 0; display:inline; width:100%; color:#FFF; float:left}
#search form span{height:40px; line-height:40px; padding:0 0px 0 10px; float:left;}
#search form input.text-word{height:24px; line-height:24px; width:180px; margin:8px 0 6px 0; padding:0 0px 0 10px; float:left; border:1px solid #FFF;}
#search form input.text-but{height:24px; line-height:24px; width:55px; background:url(pc/images/main/list_input.jpg) no-repeat left top; border:none; cursor:pointer; font-family:"Microsoft YaHei","Tahoma","Arial",'宋体'; color:#666; float:left; margin:8px 0 0 6px; display:inline;}
#search a.add{ background:url(pc/images/main/add.jpg) no-repeat -3px 7px #548fc9; padding:0 10px 0 26px; height:40px; line-height:40px; font-size:14px; font-weight:bold; color:#FFF; float:right}
#search a:hover.add{ text-decoration:underline; color:#d2e9ff;}
#main-tab{ border:1px solid #eaeaea; background:#FFF; font-size:12px;}
#main-tab th{ font-size:12px; background:url(pc/images/main/list_bg.jpg) repeat-x; height:32px; line-height:32px;}
#main-tab td{ font-size:12px; line-height:40px;}
#main-tab td a{ font-size:12px; color:#548fc9;}
#main-tab td a:hover{color:#565656; text-decoration:underline;}
.bordertop{ border-top:1px solid #ebebeb}
.borderright{ border-right:1px solid #ebebeb}
.borderbottom{ border-bottom:1px solid #ebebeb}
.borderleft{ border-left:1px solid #ebebeb}
.gray{ color:#dbdbdb;}
td.fenye{ padding:10px 0 0 0; text-align:right;}
.bggray{ background:#f9f9f9}
</style>
</head>
<body>
<!--main_top-->
<table width="99%" border="0" cellspacing="0" cellpadding="0" id="searchmain">
  <tr>
    <td width="99%" align="left" valign="top">您的位置：用户管理</td>
  </tr>
  <tr>
    <td align="left" valign="top">
    <table width="100%" border="0" cellspacing="0" cellpadding="0" id="search">
  		<tr>
   		 <td width="90%" align="left" valign="middle">
	         <form method="post" action="">
	         <span>管理员：</span>
	         <input type="text" name="" value="" class="text-word">
	         <input name="" type="button" value="查询" class="text-but">
	         </form>
         </td>
  		  <td width="10%" align="center" valign="middle" style="text-align:right; width:150px;"><a href="add.html" target="mainFrame" onFocus="this.blur()" class="add">新增管理员</a></td>
  		</tr>
	</table>
    </td>
  </tr>
  <tr>
    <td align="left" valign="top">
    <table width="100%" border="0" cellspacing="0" cellpadding="0" id="main-tab">
      <tr>
        <th align="center" valign="middle" class="borderright">编号</th>
        <th align="center" valign="middle" class="borderright">管理帐号</th>
        <th align="center" valign="middle" class="borderright">权限</th>
        <th align="center" valign="middle" class="borderright">锁定</th>
        <th align="center" valign="middle" class="borderright">最后登录</th>
        <th align="center" valign="middle">操作</th>
      </tr>
      <tr onMouseOut="this.style.backgroundColor='#ffffff'" onMouseOver="this.style.backgroundColor='#edf5ff'">
        <td align="center" valign="middle" class="borderright borderbottom">1</td>
        <td align="center" valign="middle" class="borderright borderbottom">admin</td>
        <td align="center" valign="middle" class="borderright borderbottom">创始人</td>
        <td align="center" valign="middle" class="borderright borderbottom">已锁定</td>
        <td align="center" valign="middle" class="borderright borderbottom">2013-04-26 11:00:59</td>
        <td align="center" valign="middle" class="borderbottom"><a href="add.html" target="mainFrame" onFocus="this.blur()" class="add">编辑</a><span class="gray">&nbsp;|&nbsp;</span><a href="add.html" target="mainFrame" onFocus="this.blur()" class="add">删除</a></td>
      </tr>
     
    </table></td>
    </tr>
  <tr>
    <td align="left" valign="top" class="fenye">11 条数据 1/1 页&nbsp;&nbsp;<a href="#" target="mainFrame" onFocus="this.blur()">首页</a>&nbsp;&nbsp;<a href="#" target="mainFrame" onFocus="this.blur()">上一页</a>&nbsp;&nbsp;<a href="#" target="mainFrame" onFocus="this.blur()">下一页</a>&nbsp;&nbsp;<a href="#" target="mainFrame" onFocus="this.blur()">尾页</a></td>
  </tr>
</table>
<script type="text/javascript">alert(11);
$(document).ready(function(){
	alert(11);
    $.ajax({
	type : "GET",
	dataType : "json",
	url : "article/articleList",		
	success : function(msg) {
           var data=msg.datas;
           //添加信息
           for(var i in datas){ 
        	   alert(i);
    $(".tableborder").append("<tr bgcolor='#FFFFFF' onmouseout='this.style.background Color='"'#ffffff'"' onmouseover='this.style.backgroundColor="'#C3EFFF'"'>"+ 
		            	      "<td><div align='center'>"+ 
		            	          "<input name='id[]' type='checkbox' id='id[]' value=''>"+
		            			  "<input name='infoid[]' type='hidden' value='"+datas[i].articleId+"'>"+
		            	          "</div>"+
		            	      "</td>"+
		            	      "<td height='25'> <div align='center'>"+datas[i].title+"</div></td>"+                        
		            	      "<td height='25'> <div align='center'> 文章</div></td>"+
		            	      "<td height='25'> <div align='center'> 文章</div></td>"+
		            	      "<td height='25'> <div align='center'>"+
		            	           "<a href='pc/main/xinximain/articleAdd.jsp'>设置已过期</a>|"+  
		            	           "<a href='pc/main/xinximain/articleAdd.jsp'>删除</a>| "+ 
		            	           "<a href='pc/main/xinximain/articleAdd.jsp'>查看详情</a>"+ 
		            	      "</td>"+
		            	  "</tr>");
                       }
	             }
            });

}); </script>
</body>
<script type="text/javascript">
alert(11);
$(document).ready(function(){
	alert(11);
    $.ajax({
	type : "GET",
	dataType : "json",
	url : "article/articleList",		
	success : function(msg) {
           var data=msg.datas;
           //添加信息
           for(var i in datas){ 
        	   alert(i);
    $(".tableborder").append("<tr bgcolor='#FFFFFF' onmouseout='this.style.background Color='"'#ffffff'"' onmouseover='this.style.backgroundColor="'#C3EFFF'"'>"+ 
		            	      "<td><div align='center'>"+ 
		            	          "<input name='id[]' type='checkbox' id='id[]' value=''>"+
		            			  "<input name='infoid[]' type='hidden' value='"+datas[i].articleId+"'>"+
		            	          "</div>"+
		            	      "</td>"+
		            	      "<td height='25'> <div align='center'>"+datas[i].title+"</div></td>"+                        
		            	      "<td height='25'> <div align='center'> 文章</div></td>"+
		            	      "<td height='25'> <div align='center'> 文章</div></td>"+
		            	      "<td height='25'> <div align='center'>"+
		            	           "<a href='pc/main/xinximain/articleAdd.jsp'>设置已过期</a>|"+  
		            	           "<a href='pc/main/xinximain/articleAdd.jsp'>删除</a>| "+ 
		            	           "<a href='pc/main/xinximain/articleAdd.jsp'>查看详情</a>"+ 
		            	      "</td>"+
		            	  "</tr>");
                       }
	             }
            });

}); 
	//分页部分开始
	/*  var newlist = new Vue({
	    el: '#app',
	    data: {
	      current_page: 1, //当前页
	      pages: 50, //总页数
	      changePage:'',//跳转页
	      nowIndex:0
	    },
	    computed:{
	       show:function(){
	           return this.pages && this.pages !=1
	       },
	       pstart: function() {
	         return this.current_page == 1;
	       },
	       pend: function() {
	         return this.current_page == this.pages;
	       },
	       efont: function() {
	         if (this.pages <= 7) return false;
	         return this.current_page > 5
	       },
	       ebehind: function() {
	         if (this.pages <= 7) return false;
	         var nowAy = this.indexs;
	         return nowAy[nowAy.length - 1] != this.pages;
	       },
	       indexs: function() {

	         var left = 1,
	           right = this.pages,
	           ar = [];
	         if (this.pages >= 7) {
	           if (this.current_page > 5 && this.current_page < this.pages - 4) {
	             left = Number(this.current_page) - 3;
	             right = Number(this.current_page) + 3;
	           } else {
	             if (this.current_page <= 5) {
	               left = 1;
	               right = 7;
	             } else {
	               right = this.pages;

	               left = this.pages - 6;
	             }
	           }
	         }
	         while (left <= right) {
	           ar.push(left);
	           left++;
	         }
	         return ar;
	       },
	     },
	    methods: {
	      jumpPage: function(id) {
	        this.current_page = id;
	      },
	    },

	  }) 
	 //分页部分结束 */

	
/* function CheckAll(form){
  for (var i=0;i<form.elements.length;i++)
    {
    var e = form.elements[i];
    if (e.name != 'chkall'){
       e.checked = form.chkall.checked;
    }
    }
  } 


 function GetSelectId(form)
{
  var ids='';
  var dh='';
  for (var i=0;i<form.elements.length;i++)
  {
	var e = form.elements[i];
	if (e.name == 'id[]')
	{
	   if(e.checked==true)
	   {
       		ids+=dh+e.value;
			dh=',';
	   }
	}
  }
  return ids;
}
 function PushInfoToSp(form){
	var id='';
	id=GetSelectId(form);
	if(id=='')
	{
		alert('请选择要推送的信息');
		return false;
	}
	window.open('');
} */

</script>

</html>
