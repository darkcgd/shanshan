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
		<title>完善个人信息</title>
		<base href="<%=basePath%>">
		<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no" />
		<link rel="stylesheet" type="text/css" href="css/common.css"/>
		<link rel="stylesheet" type="text/css" href="css/header.css"/>
		<link rel="stylesheet" type="text/css" href="css/calendar.css"/>
		<link rel="stylesheet" type="text/css" href="css/replace.css"/>
		<link rel="stylesheet" type="text/css" href="css/style.css"/>
		<link rel="stylesheet" type="text/css" href="css/LArea.css"/>
		<script src="js/jquery-1.7.1.min.js" type="text/javascript" charset="utf-8"></script>
		<script src="js/uploadPreview.js" type="text/javascript" charset="utf-8"></script>
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
        		<div class="title">完善个人信息</div>
        		<span class="h-lt" style="cursor:pointer" onclick="window.history.go(-1)"><i class="h-bk"></i></span>
        		<a class="h-rt" href="#"></a>
    		</div>
		</header>
		<div class="tip">
				<a href="views/replace.jsp">
					<div class="laba">
						<img src="img/tip.png"/>
					</div><p>完善信息可以获取更多的服务</p>
					<div class="mm">
						<img src="img/right.png"/>
					</div>
				</a>
			</div>
		<div class="into">
				<div class="left">
					<a href="javascript:;" class="red">我是山善客户</a>
				</div>
				<div class="right">
					<a href="javascript:;">非山善客户</a>
				</div>
			</div>
<!-- ****************************************我是山善客户******************************************************************** -->		
		<div class="yes">
		<ul class="infor">
			<li>
				<span class="left">所在地区（省/市）</span>
				 <input  type="text" name="provincesCities" id="provincesCities" readonly placeholder="城市选择特效"  value="广东省,深圳市,南山区" class="right"/>
				<img src="img/right.png" class="righter"/>
			</li>
			<li>
				<span class="left">公司</span>
				<input type="text" name="company" id="company" class="right" value="xxx研发公司">
			</li>
			<li>
				<span class="left">姓名</span>
				<input type="text" name="userName" id="userName" class="right" value="张小明">
			</li>
			<li>
				<span class="left">性别</span>
				<input type="text" name="sex" id="sex" class="right" value="男">
			</li>
			<li>
				<span class="left">职位</span>
				<input type="text" name="positionName" id="positionName" class="right" value="软件工程师">
				<img src="img/right.png" class="righter"/>
			</li>
			<li>
				<span class="left">手机号</span>
				<input type="text" name="phone" id="phone" class="right" value="15648411654">
			</li>
			<li>
				<span class="left">设备采购途径</span>
				<input type='text' name="buyEquipmentChannel" id="buyEquipmentChannel"  class="right select-value" value="软件">
				<img src="img/right.png" class="righter"/>
			</li>
		</ul>
		<div class="date">
			<div class="na">
				<span>设备类型（可多选）</span>
			</div>
			<div class="xz">
			<span><input type="text" name="equipmentType" id="equipmentType" class="right" placeholder="加工中心" value="加工中心"></span>
			<span><input type="text" name="equipmentType" id="equipmentType" class="right" placeholder="加工中心" value="车削机床"></span>
			<span><input type="text" name="equipmentType" id="equipmentType" class="right" placeholder="加工中心" value="转台"></span>
			<span><input type="text" name="equipmentType" id="equipmentType" class="right" placeholder="加工中心" value="其他"></span>
			</div>
			
			<div class="cand hh">
				<span>行业</span>
				<input type='text' name="industry" id="industry"  class="right select-value" placeholder="软件" value="软件">
				<img src="img/right.png" class="righter"/>
			</div>
		</div>
		
		
		<div class="date">
			<div class="na">
				<span>附加信息</span>
			</div>
			<div class="cand">
				<span class="left">推荐人</span>
				<input type="text" name="referralsName" id="referralsName" class="right" placeholder="选填，填写可加快审核速度" value="山善"/>
			</div>
			
			<div class="cand">
				<span class="left">推荐手机</span>
				<input type="text" name="referralsPhone" id="referralsPhone" class="right" placeholder="选填，填写可加快审核速度" value="123456789"/>
			</div>
			
			<div class="cand">
				<span class="left">公司邮箱</span>
				<input type="text" name="email" id="email" class="right" placeholder="选填，填写方便日后获取资料" value="123456789@qq.com"/>
			</div>
		</div>
		
		<div class="tj">
			<a href="javascript:void(0);" onclick="tijiao()">提交</a>
		</div>
			
		</div>
<!-- ****************************************非山善客户******************************************************************** -->		
		<div class="no">
			<ul class="infor">
			<li>
				<span class="left">所在地区（省/市）</span>
				 <input  type="text" name="provincesCities" id="provincesCities" readonly placeholder="城市选择特效"  value="广东省,深圳市,南山区" class="right"/>
				<img src="img/right.png" class="righter"/>
			</li>
			<li>
				<span class="left">公司</span>
				<input type="text" name="company" id="company" class="right" value="xxx研发公司">
			</li>
			<li>
				<span class="left">姓名</span>
				<input type="text" name="userName" id="userName" class="right" value="张小明">
			</li>
			<li>
				<span class="left">性别</span>
				<input type="text" name="sex" id="sex" class="right" value="男">
			</li>
			<li>
				<span class="left">职位</span>
				<input type="text" name="positionName" id="positionName" class="right" value="软件工程师">
				<img src="img/right.png" class="righter"/>
			</li>
			<li>
				<span class="left">手机号</span>
				<input type="text" name="phone" id="phone" class="right" value="15648411654">
			</li>
			<li>
				<span class="left">公司邮箱</span>
				<input type="text" name="email" id="email" class="right" value="123456789@qq.com">
			</li>
			<li class="hb">
				<span class="left">行业</span>
				<input  type="text" name="industry" id="industry" readonly placeholder="选择" class="right"  value="电子" >
				<img src="img/right.png" class="righter"/>
			</li>
		</ul>
		
		<div class="tj">
			<a href="javascript:void(0);" onclick="tijiao1()">提交</a>
		</div>
		</div>
		
		<div class="maska">
			<div class="bigg">
				<div class="bot">
					<div class="tt">
						<span class="nn">取消</span>
						<span class="tap">行业</span>
						<span class="ys">确定</span>
					</div>
					<div class="hang">
						<p>航空航天</p>
						<p>电子</p>
						<p>模具</p>
						<p>家用电器</p>
						<p>机械设备</p>
						<p>机器人</p>
						<p>汽车制造</p>
						<p>航空航天</p>
					</div>
				</div>
			</div>
		</div>
		
		<div class="maskb">
			<div class="bigg">
				<div class="bot">
					<div class="tt">
						<span class="nn">取消</span>
						<span class="tap">行业</span>
						<span class="ys">确定</span>
					</div>
					<div class="hang">
						<p>航空航天</p>
						<p>电子</p>
						<p>模具</p>
						<p>家用电器</p>
						<p>机械设备</p>
						<p>机器人</p>
						<p>汽车制造</p>
						<p>航空航天</p>
					</div>
				</div>
			</div>
		</div>
		
		
	</body>
	<script src="js/index.js" type="text/javascript" charset="utf-8"></script>
	 <script src="js/LAreaData1.js"></script>
	  <script src="js/LAreaData2.js"></script>
	  <script src="js/LArea.js"></script>
	<script type="text/javascript">
		$('.infor li').click(function(){
    	$(this).children('.slide').slideToggle();
    })
    
    $('.slide div').click(function(){
    	$(this).addClass('redd');
    	var ww=$(this).html();
    	$(this).parent().siblings('.right').text(ww);
    })
    
     $('.cand').click(function(){
    	$(this).children('.slide').slideToggle();
    })
    
    $('.slide div').click(function(){
    	$(this).addClass('redd');
    	var ww=$(this).html();
    	$(this).parent().siblings('.right').text(ww);
    })
    
    $('.into .left').click(function(){
			$('.yes').show();
			$('.no').hide();
			$(this).children('a').addClass('red');
			$('.into .right a').removeClass('red');
		})
		
		$('.into .right').click(function(){
			$('.yes').hide();
			$('.no').show();
			$(this).children('a').addClass('red');
			$('.into .left a').removeClass('red');
		})
		
		$('.hh').click(function(){
			$('.maska').show();
		})
		
		$('.maska .hang p').click(function(){
			$(this).addClass('ff');
			$(this).siblings().removeClass('ff');
			var wa=$(this).html();
			$('.hh .right').text(wa);
		})
		
		$('.hb').click(function(){
			$('.maskb').show();
		})
		
		$('.maskb .hang p').click(function(){
			$(this).addClass('ff');
			$(this).siblings().removeClass('ff');
			var wa=$(this).html();
			$('.hb .right').text(wa);
		})
		
		$('.maska .nn').click(function(){
		$('.maska').hide();
		})
		
		$('.maska .ys').click(function(){
		$('.maska').hide();
		})
		
		$('.maskb .nn').click(function(){
		$('.maskb').hide();
		})
		
		$('.maskb .ys').click(function(){
		$('.maskb').hide();
		})
    
	</script>
	
	
	<script type="text/javascript">
	 $('.nn').click(function(){
    	$('.mPicker').addClass('hide');
    })
    
    $('.xz span').click(function(){
    	$(this).addClass('rr');
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
    <!-- ****************************************************************************************************************** -->
     <script type="text/javascript">
    function tijiao() {
    	alert("已经进来了");
    	var provincesCities = $("#provincesCities").val();
    	var company = $("#company").val();
    	var userName = $("#userName").val();
    	var sex = $("#sex").val();
    	var positionName = $("#positionName").val();
		var phone = $("#phone").val();
		var buyEquipmentChannel = $("#buyEquipmentChannel").val();
		var equipmentType = $("#equipmentType").val();
		var industry = $("#industry").val();
		var referralsName = $("#referralsName").val();
		var referralsPhone = $("#referralsPhone").val();
		var email = $("#email").val();
		$.ajax({
			type : "GET", //用GET方式传输
			dataType : "json", //数据格式:JSON
			url : 'user/updateUserInfo', //目标地址
			data : {
				provincesCities : provincesCities,
				company : company,
				userName : userName,
				sex : sex,
				positionName : positionName,
				phone : phone,
				buyEquipmentChannel : buyEquipmentChannel,
				equipmentType : equipmentType,
				industry : industry,
				referralsName : referralsName,
				referralsPhone : referralsPhone,
				email : email,	
			},
			success : function(msg) {
				alert(provincesCities);
				alert(company);
				alert(userName);
				alert(sex);
				alert(positionName);
				alert(phone);
				alert(buyEquipmentChannel);
				alert(equipmentType);
				alert(industry);
				alert(referralsName);
				alert(referralsPhone);
				alert(email);
				 if(msg.code==100){
					 alert("失败");
			    	  $('#myModal').modal('show');
					  $(".modal-body").text(msg.msg);	 
			      }		
				  if(msg.code==200){
					  alert("成功");
						var data = msg.data;
						if (data.userType == 4) { 
							window.location.href = "views/me2.jsp";  }//客服情况
						if (data.userType == 5) {      
							window.location.href = "views/me2.jsp";//专家情况
						} else {
							window.location.href = "views/me2.jsp";//客户情况
						}
				   }
			}
		});

	}
    </script>
    <!-- ****************************************************************************************************************** -->
    <script language="javascript"> 
    function tijiao1() {
    	alert("已经进来了1");
    	var provincesCities = $(".no #provincesCities").val();
    	var company = $(".no #company").val();
    	var userName = $(".no #userName").val();
    	var sex = $(".no #sex").val();
    	var positionName = $(".no #positionName").val();
		var phone = $(".no #phone").val();
		var email = $(".no #email").val();
		var industry = $(".no #industry").val();
		$.ajax({
			type : "GET", //用GET方式传输
			dataType : "json", //数据格式:JSON
			url : 'user/updateUserInfo', //目标地址
			data : {
				provincesCities : provincesCities,
				company : company,
				userName : userName,
				sex : sex,
				positionName : positionName,
				phone : phone,
				email : email,
				industry : industry,
			},
			success : function(msg) {
				alert(provincesCities);
				alert(company);
				alert(userName);
				alert(sex);
				alert(positionName);
				alert(phone);
				alert(email);
				alert(industry);
				 if(msg.code==100){
					 alert("失败");
			    	  $('#myModal').modal('show');
					  $(".modal-body").text(msg.msg);	 
			      }		
				  if(msg.code==200){
					  alert("成功");
						var data = msg.data;
						if (data.userType == 4) { 
							window.location.href = "views/me2.jsp";  }//客服情况
						if (data.userType == 5) {      
							window.location.href = "views/me2.jsp";//专家情况
						} else {
							window.location.href = "views/me2.jsp";//客户情况
						}
				   }
			}
		});

	}
    </script>
</html>
