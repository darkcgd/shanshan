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
		<title>培训课程记录</title>
		<base href="<%=basePath%>">
		<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no" />
		<link rel="stylesheet" type="text/css" href="css/common.css"/>
		<link rel="stylesheet" type="text/css" href="css/header.css"/>
		<link rel="stylesheet" type="text/css" href="css/coach.css"/>
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
        		<div class="title">培训课程记录</div>
        		<span class="h-lt" style="cursor:pointer" onclick="window.history.go(-1)"><i class="h-bk"></i></span>
        		<a class="h-rt" href="#"></a>
    		</div>
		</header>
		<div class="sec">
			<ul>
				<li>
					<a href="views/record/pxjl2.jsp">
					<div class="left">
						<img src="img/05.jpg"/>
						<!--<div class="tip">注册专享</div>-->
					</div>
					<div class="right">
						<p class="title">
							<span class="size">活动名称1</span>
							<span class="time">2017/08/07</span>
						</p>
						<p class="zw">
							培训详情培训详情培训详情培训详情培训详情
						</p>
					</div>
					</a>
				</li>
				
				<li>
					<a href="views/intro2.jsp">
					<div class="left">
						<img src="img/05.jpg"/>
						<!--<div class="tip">VIP专享</div>-->
					</div>
					<div class="right">
						<p class="title">
							<span class="size">活动名称1</span>
							<span class="time">2017/08/07</span>
						</p>
						<p class="zw">
							培训详情培训详情培训详情培训详情培训详情
						</p>
					</div>
					</a>
				</li>
				
				<li>
					<a href="views/intro2.jsp">
					<div class="left">
						<img src="img/blog.png"/>
					</div>
					<div class="right">
						<p class="title">
							<span class="size">活动名称1</span>
							<span class="time">2017/08/07</span>
						</p>
						<p class="zw">
							培训详情培训详情培训详情培训详情培训详情
						</p>
					</div>
					</a>
				</li>
			</ul>
		</div>
	</body>
</html>
