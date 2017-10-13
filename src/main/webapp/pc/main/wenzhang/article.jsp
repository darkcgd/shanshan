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
 <link rel="stylesheet" href="pc/css/page.css" type="text/css"> 
<script src="static/js/jquery-3.2.1.min.js" type="text/javascript" charset="utf-8"></script>

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
    <td width="99%" align="left" valign="top">您的位置：文章列表</td>
  </tr>
  <tr>
    <td align="left" valign="top">
    <table width="100%" border="0" cellspacing="0" cellpadding="0" id="search">
  		<tr>
   		 <td width="90%" align="left" valign="middle">
	         <form method="post" action="">
	         <span>标题：</span>
	         <input type="text" name="" value="" id="keywordTitle" class="text-word">
	         <input name="" type="button" value="查询"  class="text-but" onclick="searchAticle();">
	         </form>
         </td>
  		  <td width="10%" align="center" valign="middle" style="text-align:right; width:150px;"><a href="pc/main/wenzhang/articleAdd.jsp" target="mainFrame" onFocus="this.blur()" class="add">添加文章</a></td>
  		</tr>
	</table>
    </td>
  </tr>
  <tr>
    <td align="left" valign="top">
    <table width="100%" border="0" cellspacing="0" cellpadding="0" id="aticleList">
      <tr>
        <th align="center" valign="middle" class="borderright">编号</th>
        <th align="center" valign="middle" class="borderright">标题</th>
        <th align="center" valign="middle" class="borderright">用户等级可见</th>
        <th align="center" valign="middle" class="borderright">状态</th> 
        <th align="center" valign="middle" class="borderright">阅读量</th>        
        <th align="center" valign="middle">操作</th>
      </tr>   
    </table> 
</table>
<!-- 分页 -->
  <div id="app">
    <div>
      <div class="page"  v-show="show">
        <div class="pagelist">
          <span class="jump" :class="{disabled:pstart}" @click="{current_page--}">上一页</span>
          <span v-show="current_page>5" class="jump" @click="jumpPage(1)">1</span>
          <span class="ellipsis"  v-show="efont">...</span>
          <span class="jump" v-for="num in indexs" :class="{bgprimary:current_page==num}" @click="jumpPage(num)">{{num}}</span>
          <span class="ellipsis"  v-show="ebehind">...</span>
          <span :class="{disabled:pend}" class="jump" @click="{current_page++}">下一页</span>
          <span v-show="current_page<pages-4" class="jump" @click="jumpPage(pages)">{{pages}}</span>
          <span class="jumppoint">跳转到：</span>
          <span class="jumpinp"><input type="text" v-model="changePage"></span>
          <span class="jump gobtn" @click="jumpPage(changePage)">GO</span>
        </div>
      </div>
    </div>
  </div> 
</body> 
<script src="static/js/jquery-3.2.1.min.js" type="text/javascript" charset="utf-8"></script>
<script src="pc/js/vue.js" type="text/javascript" charset="utf-8"></script>
<script type="text/javascript">
//分页部分开始
var newlist = new Vue({
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
	 //分页部分结束
	 //列表加载
 $(document).ready(function(){
$.ajax({
	type : "GET",
	dataType : "json",
	url : "article/getArticleList",
	data:"",
	success : function(msg) {
		if(msg.code==200){
           var data=msg.data.list;         
           //添加信息
           for(var i in data){
        	  //标题
        	  var title=data[i].title==null?"":data[i].title;        	 
        	  //用户等级可看
        	   var relatePermissionUserType="";
        	   if(data[i].relatePermissionUserType==1){
        		   relatePermissionUserType="A级用户";
        	   }
        	   if(data[i].relatePermissionUserType==2){
        		   relatePermissionUserType="B级用户";
        	   }
        	   if(data[i].relatePermissionUserType>=3){
        		   relatePermissionUserType="C级用户";
        	   }
        	   //是否过期
        	   var status="";
        	   if(data[i].status==11){
        		   status="已过期";
        	   }
        	   if(data[i].status==10){
        		   status="未过期";
        	   }
        	   //阅读量
        	   var readCount=data[i].readCount==null?0:data[i].readCount;
        	   //
        	   //设置过期
        	   var isoverdue="";
        	   if(data[i].status==10){
        		   isoverdue="设置已过期";
        	   }
        	   if(data[i].status==11){
        		   isoverdue="设置未过期";
        	   }
 $("#aticleList").append("<tr onMouseOut='this.style.backgroundColor='#ffffff'' onMouseOver='this.style.backgroundColor='#edf5ff''>"+		          
		           "<td align='center' valign='middle' class='borderright borderbottom'>"+data[i].articleId+"</td>"+
		           "<td align='center' valign='middle' class='borderright borderbottom'>"+title+"</td>"+
	               "<td align='center' valign='middle' class='borderright borderbottom'>"+relatePermissionUserType+"</td>"+
	               "<td align='center' valign='middle' class='borderright borderbottom'>"+status+"</td>"+
	               "<td align='center' valign='middle' class='borderright borderbottom'>"+readCount+"</td>"+	               
	               "<td align='center' valign='middle' class='borderbottom' id='changeStatus'>"+
	                   "<a href='javascript:void(0);' target='mainFrame' onFocus='this.blur()' onclick='changeStatus(this);' class='status' value='"+data[i].status+"'>"+isoverdue+"</a><span class='gray'>&nbsp;|&nbsp;</span>"+
	                   "<a href='javascript:void(0);' target='mainFrame' onFocus='this.blur()' onclick='deleteAticle(this);' class='add'>删除</a><span class='gray'>&nbsp;|&nbsp;</span>"+
	                   "<a href='javascript:void(0);' target='mainFrame' onFocus='this.blur()' onclick='updateAticle(this);' class='add'>查看详情</a>"+
	               "</td>"+
              "</tr>");
           
                       }
		}
	             }
   }); 
 })  
   //设置是否过期
   function changeStatus(val){
	  var  changeStatus=$(val).attr("value")==10?11:10;	
	  var  changeArticleId=$(val).parent().prevAll("td:eq(4)").text();	//文章ID
	 $.ajax({
				type : "POST", //用POST方式传输
				contentType: "application/json; charset=utf-8",
				url : 'article/saveOpUpdate', //目标地址
				type:"json", //数据格式:JSON
				data : JSON.stringify({articleId:changeArticleId,status:changeStatus}),
				error: function(XMLHttpRequest){  
				     //alert( "Error: " + XMLHttpRequest.responseText);  
				   }  ,
				success : function(msg) {
					if(msg.code==200){
						//成功时
					  var  changeStatusAfter=$(val).attr("value")==10?11:10;
					  $(val).attr({value:changeStatusAfter});
					  var overdueText=$(val).parent().prevAll("td:eq(1)").text()=="未过期"?"已过期":"未过期";//过期名称
					  var statusText=$(val).text()=='设置未过期'?'设置已过期':'设置未过期';//a标签名称改变;		     
					      $(val).parent().prevAll("td:eq(1)").text("");				    
					      $(val).parent().prevAll("td:eq(1)").text(overdueText);			    			
					      $(val).text("");
					      $(val).text(statusText);
					}
					if(msg.code==100){
						alert(msg.msg)
					}
				}	
				   
			}); 
	
	 
   };
   //删除功能
   function deleteAticle(val){
	  var  changeStatus=13;
	  var  changeArticleId=$(val).parent().prevAll("td:eq(4)").text();	//文章ID
	 $.ajax({
				type : "POST", //用POST方式传输
				contentType: "application/json; charset=utf-8",				
				type:"json", //数据格式:JSON
				url : 'article/saveOpUpdate', //目标地址
				data : JSON.stringify({articleId:changeArticleId,status:changeStatus}),
				error: function(XMLHttpRequest){  
				   }  ,
				success : function(msg) {
				       if(msg.code==200){
				    	   window.location.reload(true); 
				       }
					}
					//发送验证返回信息
			}); 
	
	 
   };
    //模糊查询
    function searchAticle(){
     var title=$("#keywordTitle").val();
     $.ajax({
    		type : "GET",//get提交
    		dataType : "json",//json格式
    		url : "article/getArticleList",
    		data:{title:title},
    		success : function(msg) {
    			if(msg.code==200){
    				$("#aticleList tr:gt(0)").remove();
    	           var data=msg.data.list;         
    	           //添加信息
    	           for(var i in data){
    	        	  //标题
    	        	  var title=data[i].title==null?"":data[i].title;        	 
    	        	  //用户等级可看
    	        	   var relatePermissionUserType="";
    	        	   if(data[i].relatePermissionUserType==1){
    	        		   relatePermissionUserType="A级用户";
    	        	   }
    	        	   if(data[i].relatePermissionUserType==2){
    	        		   relatePermissionUserType="B级用户";
    	        	   }
    	        	   if(data[i].relatePermissionUserType>=3){
    	        		   relatePermissionUserType="C级用户";
    	        	   }
    	        	   //是否过期
    	        	   var status="";
    	        	   if(data[i].status==11){
    	        		   status="已过期";
    	        	   }
    	        	   if(data[i].status==10){
    	        		   status="未过期";
    	        	   }
    	        	   //阅读量
    	        	   var readCount=data[i].readCount==null?0:data[i].readCount;
    	        	   //
    	        	   //设置过期
    	        	   var isoverdue="";
    	        	   if(data[i].status==10){
    	        		   isoverdue="设置已过期";
    	        	   }
    	        	   if(data[i].status==11){
    	        		   isoverdue="设置未过期";
    	        	   }
    	 $("#aticleList").append("<tr onMouseOut='this.style.backgroundColor='#ffffff'' onMouseOver='this.style.backgroundColor='#edf5ff''>"+		          
    			           "<td align='center' valign='middle' class='borderright borderbottom'>"+data[i].articleId+"</td>"+
    			           "<td align='center' valign='middle' class='borderright borderbottom'>"+title+"</td>"+
    		               "<td align='center' valign='middle' class='borderright borderbottom'>"+relatePermissionUserType+"</td>"+
    		               "<td align='center' valign='middle' class='borderright borderbottom'>"+status+"</td>"+
    		               "<td align='center' valign='middle' class='borderright borderbottom'>"+readCount+"</td>"+	               
    		               "<td align='center' valign='middle' class='borderbottom' id='changeStatus'>"+
    		                   "<a href='javascript:void(0);' target='mainFrame' onFocus='this.blur()' onclick='changeStatus(this);' class='status' value='"+data[i].status+"'>"+isoverdue+"</a><span class='gray'>&nbsp;|&nbsp;</span>"+
    		                   "<a href='javascript:void(0);' target='mainFrame' onFocus='this.blur()' onclick='deleteAticle(this);' class='add'>删除</a><span class='gray'>&nbsp;|&nbsp;</span>"+
    		                   "<a href='javascript:void(0);' target='mainFrame' onFocus='this.blur()' onclick='updateAticle(this);' class='add'>查看详情</a>"+
    		               "</td>"+
    	              "</tr>");
    	           
    	                       }

    		             }
    		}
    	   }); 
    }
    
    //查看详情，详情页可修改内容
    function  updateAticle(text){
    	var articleId=$(text).parent().prevAll("td:eq(4)").text();
    	window.location.href="pc/main/wenzhang/articleUpdate.jsp?articleId="+articleId;
    }
            
</script>

</html>
