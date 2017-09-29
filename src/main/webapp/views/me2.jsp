<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta charset="UTF-8">
		<title>个人中心</title>
		<base href="<%=basePath%>">
		<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no" />
		<link rel="stylesheet" type="text/css" href="css/common.css"/>
		<link rel="stylesheet" type="text/css" href="css/header.css"/>
		<link rel="stylesheet" type="text/css" href="css/me2.css"/>
		<link rel="stylesheet" type="text/css" href="css/LArea.css"/>
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
        		<div class="title">个人中心</div>
        		<span class="h-lt" style="cursor:pointer" onclick="window.history.go(-1)"><i class="h-bk"></i></span>
        		<a class="h-rt" href="#"></a>
    		</div>
		</header>
		<div class="section">
			<div class="tip">
				<a href="replace.html">
					<div class="laba">
						<img src="img/tip.png"/>
					</div><p>完善信息可以获取更多的服务</p>
					<div class="mm">
						<img src="img/right.png"/>
					</div>
				</a>
			</div>
			<div class="photo">
				<img src="img/05.jpg" class="phh"/>
				<img src="img/hy.png" class="hy" />
			</div>
			<span>专家组-小明</span>
		</div>
		
		<div class="find qiye">
				<a href="javascript:;">
					<span class="left">
						企业信息
					</span>
					<span class="right">
						<img src="img/right.png"/>
					</span>
				</a>
			</div>
		
		<ul class="infor">
			<!--<li>
				<span class="left">用户等级</span>
				<span class="right">13级</span>
			</li>-->
			<li>
				<span class="left">公司全称</span>
				<span class="right">xxx设备制作公司</span>
			</li>
			<li>
				<span class="left">公司所在省/市</span>
				<input id="demo1" type="text" readonly placeholder="城市选择特效"  value="广东省,深圳市,南山区" class="right"/>
				<img src="img/right.png" class="righter"/>
			</li>
			<li>
				<span class="left">性别</span>
				<span class="right">女</span>
			</li>
			<li>
				<span class="left">部门</span>
				<span class="right">研发部</span>
			</li>
			<li>
				<span class="left">职务</span>
				<span class="right">工程师</span>
			</li>
			<li>
				<span class="left">手机号码</span>
				<span class="right">1654848148</span>
			</li>
			<li>
				<span class="left">公司邮箱</span>
				<span class="right">1651564156145</span>
			</li>
			<li>
				<span class="left">所属行业</span>
				<span class="right">互联网</span>
			</li>
			<li>
				<span class="left">设备类型</span>
				<span class="right">xxxx</span>
			</li>
		</ul>
		
		<div class="abt">
			<div class="find">
				<a href="service.html">
					<span class="left">
						客服
					</span>
					<span class="right">
						<img src="img/right.png"/>
					</span>
				</a>
			</div>
			<div class="find">
				<a href="aboutss.html">
					<span class="left">
						关于山善
					</span>
					<span class="right">
						<img src="img/right.png"/>
					</span>
				</a>
			</div>
			<div class="find">
				<a href="signup.html">
					<span class="left">
						注册
					</span>
					<span class="right">
						<img src="img/right.png"/>
					</span>
				</a>
			</div>
		</div>
	</body>
	<script src="js/LAreaData1.js"></script>
	  <script src="js/LAreaData2.js"></script>
	  <script src="js/LArea.js"></script>
	<script type="text/javascript">
		$('.qiye').click(function(){
			$('.infor').slideToggle();
		})
	</script>
	<script>
    var area1 = new LArea();
    area1.init({
        'trigger': '#demo1', //触发选择控件的文本框，同时选择完毕后name属性输出到该位置
        'valueTo': '#value1', //选择完毕后id属性输出到该位置
        'keys': {
            id: 'id',
            name: 'name'
        }, //绑定数据源相关字段 id对应valueTo的value属性输出 name对应trigger的value属性输出
        'type': 1, //数据源类型
        'data': LAreaData //数据源
    });
    area1.value=[1,13,3];//控制初始位置，注意：该方法并不会影响到input的value
    var area2 = new LArea();
    area2.init({
        'trigger': '#demo2',
        'valueTo': '#value2',
        'keys': {
            id: 'value',
            name: 'text'
        },
        'type': 2,
        'data': [provs_data, citys_data, dists_data]
    });
    </script>
</html>
