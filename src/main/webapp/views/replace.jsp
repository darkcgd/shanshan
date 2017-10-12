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
				<a href="replace.html">
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
		<input  type="hidden" name="userId" id="userId"  class="right">
		<input type="hidden" name="token" id="token" class="right">
		<input type="hidden" name=isShanshanUser id="isShanshanUser" class="right" value="1">
		<input type="hidden" name=userType id="userType" class="right" value="3">
		<div class="yes">
		<ul class="infor">
			<li>
				<span class="left">所在地区（省/市）</span>
				 <input id="demo1"   type="text" name="provincesCities" id="provincesCities" readonly placeholder="广东省,深圳市,南山区"  value="" class="right"/>
				<img src="img/right.png" class="righter"/>
			</li>
			<li>
				<span class="left">公司</span>
				<input type="text"name="company" id="company"  class="right" placeholder="xxx研发公司" value="">
			</li>
			<li>
				<span class="left">姓名</span>
				<input type="text" name="userName" id="userName" class="right" placeholder="张小明" value="">
			</li>
			<li>
				<span class="left">性别</span>
				<input type="text"  name="sex" id="sex" class="right" placeholder="男" value="">
			</li>
			<li>
				<span class="left">职位</span>
				<input type="text" name="positionName" id="positionName" class="right" placeholder="软件工程师">
				<img src="img/right.png" class="righter"/>
				<div class="slide">
					<div class="oss" >
						软件工程师
					</div>
					<div class="oss" >
						UI设计师
					</div>
				</div>
			</li>
			<li>
				<span class="left">手机号</span>
				<input type="text" name="phone" id="phone" class="right" placeholder="15648411654" value="" onkeyup="this.value=this.value.replace(/\D/g,'')" onafterpaste="this.value=this.value.replace(/\D/g,'')">
			</li>
			
			
			<li>
				<span class="left">设备采购途径</span>
				<input type='text' name="buyEquipmentChannel" id="buyEquipmentChannel"   class="right select-value" placeholder="其他-山善日本" value="">
				<img src="img/right.png" class="righter"/>
			</li>
		</ul>
		
		<div class="date">
			<div class="na">
				<span>设备类型（可多选）</span>
			</div>
			
			<div class="xz">
			<span>加工中心</span>
			<span>车削机床</span>
			<span>转台</span>
			<span>其他</span>
			</div>
			
			<div class="cand hh">
				<span>行业</span>
				<div class="right" >
				  <input type="button" style="background-color: white; margin-top: 20px;" name="industry" id="industry" placeholder="电子" value="">
				</div>
				<img src="img/right.png" class="righter"/>
			</div>
		</div>
		
		
		<div class="date">
			<div class="na">
				<span>附加信息</span>
			</div>
			<div class="cand">
				<span class="left">推荐人</span>
				<input type="text" name="referralsName" id="referralsName" class="right" placeholder="选填，填写可加快审核速度" value=""/>
			</div>
			
			<div class="cand">
				<span class="left">推荐手机</span>
				<input type="text" name="referralsPhone" id="referralsPhone" class="right" placeholder="选填，填写可加快审核速度" value="" onkeyup="this.value=this.value.replace(/\D/g,'')" onafterpaste="this.value=this.value.replace(/\D/g,'')"/>
			</div>
			
			<div class="cand">
				<span class="left">公司邮箱</span>
				<input type="text" name="email" id="email" class="right" placeholder="选填，填写方便日后获取资料" value=""/>
			</div>
		</div>
		
		<div class="tj">
			<a href="javascript:void(0);" onclick="tijiao()">提交</a>
		</div>
			
		</div>
        
		<div class="no">
		    <input type="hidden" name=isShanshanUser id="isShanshanUser" class="right" value="2">
		    <input type="hidden" name=userType id="userType" class="right" value="3">
			<ul class="infor">
			<li>
				<span class="left">所在地区（省/市）</span>
				 <input  id="demo2"  type="text" name="provincesCities" id="provincesCities" readonly placeholder="广东省,深圳市,南山区"  value="" class="right"/>
				<img src="img/right.png" class="righter"/>
			</li>
			<li>
				<span class="left">公司</span>
				<input type="text"name="company" id="company"  class="right" placeholder="xxx研发公司" value="">
			</li>
			<li>
				<span class="left">姓名</span>
				<input type="text" name="userName" id="userName" class="right" placeholder="张小明" value="">
			</li>
			<li>
				<span class="left">性别</span>
				<input type="text"  name="sex" id="sex" class="right" placeholder="男" value="">
			</li>
			<li>
				<span class="left">职位</span>
				<input type="text" name="positionName" id="positionName" class="right" placeholder="软件工程师">
				<img src="img/right.png" class="righter"/>
				<div class="slide">
					<div class="oss" >
						软件工程师
					</div>
					<div class="oss" >
						UI设计师
					</div>
				</div>
			</li>
			<li>
				<span class="left">手机号</span>
				<input type="text" name="phone" id="phone" class="right" value="">
			</li>
			
			<li>
				<span class="left">公司邮箱</span>
				<input type="text" name="email" id="email"  class="right" placeholder="选填，填写便于日后获取资料" value="">
			</li>
			
			
			<li class="hb">
				<span class="left">行业</span>
				<div class="right" >
				   <input type="button" style="background-color: white; margin-top: 20px;" name="industry" id="industry" placeholder="电子" value="">
				</div>
				<img src="img/right.png" class="righter"/>
			</li>
		</ul>
		
		<div class="tj">
			<a href="javascript:void(0);" type="submit" onclick="aa()">提交</a>
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
						<p>汽车制造(整车、零部件)</p>
						<p>电子及通讯设备(手机、平板、电脑、可穿戴设备)</p>
						<p>模具</p>
						<p>家用电器</p>
						<p>机械设备制造</p>
						<p>通用零部件制造(轴承、齿轮、驱动部、气动元件等)</p>
						<p>医疗器械</p>
						<p>航空航天</p>
						<p>机器人</p>
						<p>摩托车</p>
						<p>贸易、代理</p>
						<p>半导体</p>
						<p>金属制品加工、零件加工</p>
						<p>其他</p>
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
    	//$(this).parent().siblings('.right').text(ww);
    	$("#positionName").val("");
    	$("#positionName").val(ww);
    })
    
     $('.cand').click(function(){
    	$(this).children('.slide').slideToggle();
    })
    
    $('.slide div').click(function(){
    	$(this).addClass('redd');
    	var ww=$(this).html();
    	//$(this).parent().siblings('.right').text(ww);
    	$(".no #positionName").val("");
    	$(".no #positionName").val(ww);
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
		//行业
		$('.maska .hang p').click(function(){
			$(this).addClass('ff');
			$(this).siblings().removeClass('ff');
			var wa=$(this).html();
			//$('.hh .right').text(wa);
			$('#industry').val("");
			$('#industry').val(wa);
			
			
		})
		$('.hb').click(function(){
			$('.maskb').show();
		})
		
		$('.maskb .hang p').click(function(){
			$(this).addClass('ff');
			$(this).siblings().removeClass('ff');
			var wa=$(this).html();
			//$('.hb .right').text(wa);
			$('.no #industry').val("");
			$('.no #industry').val(wa);
			
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
    	$(this).toggleClass('rr');
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
    var aa =$("area1.value");    
    var area1=$(this).html();                  
   //-----------------
    var str="";
    for(var i=0;i<2;i++){
    	str+=area1.value[i]+",";
    }
    alert(str);
	$('#provincesCities').val("");
	$('#provincesCities').val(str);
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
    area2.value=[1,13,3];
    var aa =$("area2.value");    
    var area2=$(this).html();                  
   //-----------------
    var str="";
    for(var i=0;i<2;i++){
    	str+=area2.value[i]+",";
    }
    alert(str);
	$('.no #provincesCities').val("");
	$('.no #provincesCities').val(str);
    </script>
    <script type="text/javascript">
    function tijiao() {
        var token= localStorage.getItem("c_token");
		var userId= localStorage.getItem("userId");
		var isShanshanUser = $("#isShanshanUser").val();
		var userType = $("#userType").val();
    	var provincesCities = $("#provincesCities").val();	
    	var company = $("#company").val();
    	var userName = $("#userName").val();  
    	var sex = $("#sex").val()=='男'||$("#sex").val()=='女'?0:1;
    	var positionName = $("#positionName").val();
		var phone = $("#phone").val();
		var buyEquipmentChannel = $("#buyEquipmentChannel").val();
		var str="";
		$(".xz span").each(function(){	  
			if($(this).attr("class")=="rr"){
		        str+=$(this).text();
				//alert($(this).text());	
		    }			
		    //alert($(this).attr("class"));	
		});
		var equipmentType =str;
		var industry = $("#industry").val();
		var referralsName = $("#referralsName").val();
		var referralsPhone = $("#referralsPhone").val();
		var email = $("#email").val();
		$.ajax({
			type : "GET", //用GET方式传输
			dataType : "json", //数据格式:JSON
			url : 'user/updateUserInfo', //目标地址
			data : {
				 userId : userId,
		        token : token,
		        isShanshanUser : isShanshanUser,
		        userType : userType,
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
				email : email
			},
			success : function(msg) {
				if(msg.code==100){
					 alert("提交失败");
			    	  $('#myModal').modal('show');
					  $(".modal-body").text(msg.msg);	 
			      }		
				  if(msg.code==200){
					  alert("提交成功");
					  window.location.href = "views/me2.jsp";
				  }
			}
		});

	}
    
    function aa() {
    	var token= localStorage.getItem("c_token");
		var userId= localStorage.getItem("userId");
		var isShanshanUser = $(".no #isShanshanUser").val();
		var userType =$(".no #userType").val();
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
				userId : userId,
		        token : token,
		        isShanshanUser : isShanshanUser,
		        userType:userType,
				provincesCities : provincesCities,
				company : company,
				userName : userName,
				sex : sex,
				positionName : positionName,
				phone : phone,
				email : email,	
				industry : industry
			},
			success : function(msg) {
				if(msg.code==100){
					 alert("提交失败");
			    	  $('#myModal').modal('show');
					  $(".modal-body").text(msg.msg);	 
			      }		
				  if(msg.code==200){
					  alert("提交成功");
					  window.location.href = "views/me2.jsp";
				  }
			}
		});

	}
    </script> 
</html>
