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
		<title>技术咨询</title>
	    <base href="<%=basePath%>">
		<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no" />
		<link rel="stylesheet" type="text/css" href="css/common.css"/>
		<link rel="stylesheet" type="text/css" href="css/header.css"/>
		<link rel="stylesheet" type="text/css" href="css/service.css"/>
		<script src="js/jquery-1.7.1.min.js" type="text/javascript" charset="utf-8"></script>
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

	</script>
	<body>
		<header>
    		<div class="head">
        		<div class="title">技术咨询</div>
        		<span class="h-lt" style="cursor:pointer" onclick="window.history.go(-1)"><i class="h-bk"></i></span>
        		<a class="h-rt" href="#"></a>
    		</div>
		</header>
		
		<div class="cont">
			<p class="time">2017-04-24 09:38</p>
			
			<div class="people">
				<nav class="hh">
						<img src="img/05.jpg"/>					
				</nav>
				<p class="name">重蹈覆辙</p>
				
				<div class="pll">
					<p>噢，再来一条</p>
				</div>
			</div>
	        <div class="replay">
				<nav class="hh">
						<img src="img/05.jpg"/>					
				</nav>
				<p class="name">重蹈覆辙</p>
				
				<div class="pll">
					<p>噢，再来一条</p>
				</div>
			</div>
			<div class="people">
				<nav class="hh">
						<img src="img/05.jpg"/>					
				</nav>
				<p class="name">重蹈覆辙</p>
				
				<div class="pll">
					<p>您好，有什么能帮到您</p>
				</div>
			</div>
			<div class="kb">
				<div class="picc">
					<input type="file" class="upFile">
				</div>
			<div class="write">
    			<input type="text" name="content"  placeholder="在这里写说什么吧" class="upWrite"/>
				<!--<button onclick="reply_to(this);">发送</button>-->
    		</div>
    		<img class="send" src="img/send.png" alt="" onclick="reply_to(this)">
			</div>

    	</div>

		
	</body>
</html>
