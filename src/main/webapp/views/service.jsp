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
		<meta charset="UTF-8">
		<title>客服</title>
		<base href="<%=basePath%>">
		<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no" />
		<link rel="stylesheet" type="text/css" href="css/common.css"/>
		<link rel="stylesheet" type="text/css" href="css/header.css"/>
		<link rel="stylesheet" type="text/css" href="css/service.css"/>
		<script src="js/jquery-1.7.1.min.js" type="text/javascript" charset="utf-8"></script>
		<script src="pc/js/webim.config.js" type="text/javascript" charset="utf-8"></script>
		<script src="pc/js/strophe-1.2.8.min.js" type="text/javascript" charset="utf-8"></script>
		<script src="pc/js/websdk-1.4.11.js" type="text/javascript" charset="utf-8"></script>
		
	</head>
	<script type="text/javascript">
		    (function (doc, win) {
        var docEl = doc.documentElement,
            resizeEvt = 'orientationchange' in window ? 'orientationchange' : 'resize',
            recalc = function () {
                var clientWidth = docEl.clientWidth;
                if (!clientWidth) return;
                if(clientWidth>=640){
                    docEl.style.fontSize = '27px';
                }else{
                    docEl.style.fontSize = 27 * (clientWidth / 640) + 'px';
                }
            };

        if (!doc.addEventListener) return;
        win.addEventListener(resizeEvt, recalc, false);
        doc.addEventListener('DOMContentLoaded', recalc, false);
    })(document, window);
    $(document).ready(function(){
    	var token= localStorage.getItem("c_token")
		var userId= localStorage.getItem("userId");	
    	if(userId!=null||""){
    		$.ajax({
    			type : "GET", //用GET方式传输
				dataType : "json", //数据格式:JSON
				url : 'user/getUserInfo', //目标地址
			    data : {userId:userId,token:token},
				success : function(msg) {
					if(msg.code==200){
						var datas=msg.data;
				        localStorage.setItem("Name_nick",datas.userName);
				        localStorage.setItem("phone",datas.phone);				        
						console.log(datas.userName);
					}
					}	
    		})
    		
    		//查询客服
    		$.ajax({
    			type : "GET", //用GET方式传输
				dataType : "json", //数据格式:JSON
				url : 'user/getServiceList', //目标地址
			    data : {userId:userId,token:token},
				success : function(msg) {			
					if(msg.code==200){						
					var datas=msg.data;
				    localStorage.setItem("Name_User",datas.userName);
				    var phone=datas.phone==null?"nameisnot":datas.phone;
				    localStorage.setItem("Name_nick",phone);
				    console.log(datas.userName);
				    $("#serviceUser").text("客服"+datas.userName);
					}
					}	
    		})
    	}
    	
    })

	</script>
	<body>
		<header>
    		<div class="head">
        		<div class="title">客服</div>
        		<span class="h-lt" style="cursor:pointer" onclick="window.history.go(-1)"><i class="h-bk"></i></span>
        		<a class="h-rt" href="#"></a>
    		</div>
		</header>
		
		<div class="cont">
			<p class="time" id="nowTime"></p>
			
			<div class="people">
				<nav class="hh">
						<img src="img/05.jpg"/>					
				</nav>
				<p class="name" id="serviceUser">
				</p>				
				<div class="pll">
					<p>请问有什么需要帮您？</p>
				</div>
			</div>
	       <div class="replay">
				<!--  <nav class="hh">
						<img src="img/05.jpg"/>					
				</nav>
				<p class="name">重蹈覆辙</p>
				
				<div class="pll">
					<p></p>
				</div>-->
			</div> 
			<div class="kb">
				<div class="picc">
					<input type="file" class="upFile">
				</div>
			<div class="write">
    			<input type="text" id="content" name="content"  placeholder="在这里写说什么吧" class="upWrite"/>
				<!-- <button onclick="reply_to(this);">发送</button> -->
    		</div>
    		<img class="send" src="img/send.png" alt="" onclick="replyto()">
			</div>
    	</div>		
	</body>
	<script type="text/javascript">	
	 var  Name= localStorage.getItem("phone");
	 var  nickName=localStorage.getItem("Name_nick");
	 function  getNowtime(){
		var date = new Date();
		Y = date.getFullYear() + '-';
		M = (date.getMonth()+1 < 10 ? '0'+(date.getMonth()+1) : date.getMonth()+1) + '-';
		D = date.getDate() + ' ';
		h = date.getHours() + ':';
		m = date.getMinutes() ;
	    if(m<10){
	    	m="0"+m;
	    }
	    NowTime=Y+M+D+h+m;
	    return NowTime;
	}
     $("#nowTime").text(getNowtime());
	
	//连接
	var conn = new WebIM.connection({
	    isMultiLoginSessions: WebIM.config.isMultiLoginSessions,
	    https: typeof WebIM.config.https === 'boolean' ? WebIM.config.https : location.protocol === 'https:',
	    url: WebIM.config.xmppURL,
	    heartBeatWait: WebIM.config.heartBeatWait,
	    autoReconnectNumMax: WebIM.config.autoReconnectNumMax,
	    autoReconnectInterval: WebIM.config.autoReconnectInterval,
	    apiUrl: WebIM.config.apiURL,
	    isAutoLogin: true,
	    isDebug: true
	});
	conn.listen({
	    onOpened: function ( message ) {          //连接成功回调
	        // 如果isAutoLogin设置为false，那么必须手动设置上线，否则无法收消息
	        // 手动上线指的是调用conn.setPresence(); 如果conn初始化时已将isAutoLogin设置为true
	        // 则无需调用conn.setPresence();             
	    },  
	    onClosed: function ( message ) {},         //连接关闭回调
	    onTextMessage: function ( message ) {
	    	$(".replay").append("<nav class='hh'>"+
	    			"<img src='img/05.jpg'/></nav>"+
	    			"<p class='name'>"+nickName+"</p>"+
					"<div class='pll'>"+
						"<p></p>"+
				    "</div>");		
	    },    //收到文本消息
	    onEmojiMessage: function ( message ) {},   //收到表情消息
	    onPictureMessage: function ( message ) {}, //收到图片消息
	    onCmdMessage: function ( message ) {},     //收到命令消息
	    onAudioMessage: function ( message ) {},   //收到音频消息
	    onLocationMessage: function ( message ) {},//收到位置消息
	    onFileMessage: function ( message ) {},    //收到文件消息
	    onVideoMessage: function (message) {
	        var node = document.getElementById('privateVideo');
	        var option = {
	            url: message.url,
	            headers: {
	              'Accept': 'audio/mp4'
	            },
	            onFileDownloadComplete: function (response) {
	                var objectURL = WebIM.utils.parseDownloadResponse.call(conn, response);
	                node.src = objectURL;
	            },
	            onFileDownloadError: function () {
	                console.log('File down load error.')
	            }
	        };
	        WebIM.utils.download.call(conn, option);
	    },   //收到视频消息
	    onPresence: function ( message ) {},       //处理“广播”或“发布-订阅”消息，如联系人订阅请求、处理群组、聊天室被踢解散等消息
	    onRoster: function ( message ) {},         //处理好友申请
	    onInviteMessage: function ( message ) {},  //处理群组邀请
	    onOnline: function () {},                  //本机网络连接成功
	    onOffline: function () {},                 //本机网络掉线
	    onError: function ( message ) {},          //失败回调
	    onBlacklistUpdate: function (list) {       //黑名单变动
	        // 查询黑名单，将好友拉黑，将好友从黑名单移除都会回调这个函数，list则是黑名单现有的所有好友信息
	        console.log(list);
	    },
	    onReceivedMessage: function(message){},    //收到消息送达服务器回执
	    onDeliveredMessage: function(message){},   //收到消息送达客户端回执
	    onReadMessage: function(message){},        //收到消息已读回执
	    onCreateGroup: function(message){},        //创建群组成功回执（需调用createGroupNew）
	    onMutedMessage: function(message){}        //如果用户在A群组被禁言，在A群发消息会走这个回调并且消息不会传递给群其它成员
	});
	//注册
	
			var options = { 
		    username: Name,
		    password: Name,
		    nickname: nickName,
		    appKey: WebIM.config.appkey,
		    success: function () {
		    	  	
		    },  
		    error: function () {
		    }, 
		    apiUrl: WebIM.config.apiURL
		  }; 
		  conn.registerUser(options);
		  //登陆
		  var options = { 
				  apiUrl: WebIM.config.apiURL,
				  user: Name,
				  pwd: Name,
				  appKey: WebIM.config.appkey
				};
				conn.open(options);
		  
		// 单聊发送文本消息
		 function replyto(){
			  var txt=$("#content").attr("value");
		      var sendPrivateText = function () {
		      var id = conn.getUniqueId();                 // 生成本地消息id
		      var msg = new WebIM.message('txt', id);      // 创建文本消息
		      msg.set({
		          msg: txt,                  // 消息内容
		          to:"" ,                    // 接收消息对象（用户id）
		          roomType: false,
		          success: function (id, serverMsgId) {
		              console.log('send private text Success');
		          },
		          fail: function(e){
		              console.log("Send private text error");
		          }
		      });
		      msg.body.chatType = 'singleChat';
		      conn.send(msg.body);
		  };
		}
	</script>
</html>
