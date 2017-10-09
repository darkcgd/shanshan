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
		<title>山善</title>
		<base href="<%=basePath%>">
		<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no" />
		<link rel="stylesheet" type="text/css" href="css/common.css"/>
		<link rel="stylesheet" type="text/css" href="css/header.css"/>
		<link rel="stylesheet" type="text/css" href="css/tuijian.css"/>
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
        		<div class="title">技术文章</div>
        		<span class="h-lt" style="cursor:pointer" onclick="window.history.go(-1)"><i class="h-bk"></i></span>
        		<a class="h-rt" href="#"></a>
    		</div>
		</header>
		<div class="section">
			<p class="title">
				北京推出防伪技术
			</p>
			<p class="time"><span>2017/08/27</span><span>作者：王维</span></p>
			<span class="cc">推荐</span>
		</div>
		
		<div class="zw">
			<p>白色家电分为空调、冰箱、洗衣机、部分厨房电器等，早期这些家电大多是白色的外观，因此得名。目前中国大陆是世界上最大的白色家电生产基地。这一行业与我们的生活息息相关，并具有周期性行业的特征。</p>
			<p>接下来，我们开始正式对白色家电行业进行分析：</p>
			<p>一、白色家电行业的整体投资价值，如下图：</p>
			<img src="img/u42.png"/>
			<p>图中，我们对比了白色家电行业上市公司与整体A股的营业总收入同比增长率和历年来的平均每股收益。</p>
			<p>可以看出白色家电行业相较于整体A股在营业收入方面更具弹性，在整体A股营业收入加速增长时，白色家电行业的营业收入增长更快；而当整体A股的营业收入增速下滑时，白色家电行业的营业收入增速也会更快下滑。</p>
			
		</div>
		
		<p class="to">
			<a href="views/article/tj.jsp">
				相关活动报名
			</a>
		</p>
		
	</body>
<script type="text/javascript">
	function searchArticle() {	
		$.ajax({
			type : "GET", //用GET方式传输
			dataType : "json", //数据格式:JSON
			url : '', //目标地址
			//data : "dealType=" + dealType + "&uid=" + uid + "&code=" + code,
			data : "",
			success : function(msg) {
			}
		});
	}
</script>
</html>
