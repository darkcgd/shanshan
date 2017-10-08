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
		<title>设备维修</title>
	    <base href="<%=basePath%>">
		<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no" />
		<link rel="stylesheet" type="text/css" href="css/common.css"/>
		<link rel="stylesheet" type="text/css" href="css/header.css"/>
		<link rel="stylesheet" type="text/css" href="css/calendar.css"/>
		<link rel="stylesheet" type="text/css" href="css/require.css"/>
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
        		<div class="title">设备维修</div>
        		<span class="h-lt" style="cursor:pointer" onclick="window.history.go(-1)"><i class="h-bk"></i></span>
        		<a class="h-rt" href="#"></a>
    		</div>
		</header>
		<div class="section">
			<ul class="infor">
				<li>
				<span class="left">机床品牌</span>
				<input type="text" value="Brother" class="right">
				<!--<div class="slide">
					<div class="oss">
						品牌一
					</div>
					<div class="oss">
						品牌二
					</div>
				</div>-->
			</li>
			<li>
				<span class="left">机床机型</span>
				<input type="text" class="right" value="填写机型">
			</li>
			<li>
				<span class="left">S/N</span>
				<input type="text" class="right" value="填写机身编号">
			</li>
			<li>
				<span class="left">联系人</span>
				<input type="text" class="right" value="李刚">
			</li>
			<li>
				<span class="left">联系电话</span>
				<input type="text" class="right" value="15648411654">
			</li>
			
			<div class="date">
				<div class="na">
					<span>故障描述</span>
				</div>
				<div class="can">
					<textarea placeholder="请输入故障的状况"></textarea>
				</div>
			</div>
			
			<div class="date">
				<div class="na">
					<span>上传图片（请上传机床铭牌，报警画面等）</span>
				</div>
				
				<div class="oamg">
					<div class="omg">
						<div class="hh">
				            <input type="hidden" value=""  accept="image/*;capture=camera" name="pics" id="pics">
							<div class="oimg" id="img1">
								<img class="jj" src="img/jj.png" alt="">				<input type="file"   class="aimgs"/>
							</div>
				
						</div>
	
					</div>
				</div>
				
			</div>
		</div>
		
		
		<div class="join">
			<a href="views/jask.jsp">提交</a>
		</div>
		
		<!--<div class="signup">
			<a href="jchat.html">在线诊断</a>
		</div>-->
	</body>
	<script type="text/javascript">
		 $('.infor li').click(function(){
    	$(this).children('.slide').slideToggle();
    })
    
    $('.slide div').click(function(){
    	$(this).addClass('redd');
    	var ww=$(this).html();
    	$(this).parent().siblings('.right').text(ww);
    })
    
	</script>
	
	<script type="text/javascript">
		$('.oimg .jj').click(function(){
            var str=$("#pics").val();
            var val='|'+$(this).parent().find("input[type=hidden]").val();
            $("#pics").val(str.replace(val,""));
            $(this).parent().remove();
		});
		$("#licence_img").change(function(){
			var file = this.files[0];
            run(this, function (data) {
                  uploadImage(file.type,data);
             });
		});
        $("#other").change(function(){
            var val=getObjectURL(this.files[0]);
            $('.other').html('<img src="'+val+'" />');
        });

        $('.aimgs').change(function () {
            var id =$(this).parent();
			var file = this.files[0];
            run(this, function (data) {
                uploadImage1(file.type,data,id);
            });

           var val=getObjectURL(this.files[0]);
            $(this).parent('.oimg').append('<img src="'+val+'" class="pp"/>');
        });
        function run(input_file,get_data) {
        if (typeof (FileReader) === 'undefined') {
            alert("抱歉，你的浏览器不支持 FileReader，不能将图片转换为Base64，请使用现代浏览器操作！");
        }else{
            try {
                    var file = input_file.files[0];
                    if (!/image\/\w+/.test(file.type)) {
                        alert("请确保文件为图像类型");return false;
                        }
                    var reader = new FileReader();
                    reader.onload = function () {
						get_data(this.result);
                     };
                    reader.readAsDataURL(file);
                   }catch (e) {
                    alert('图片转Base64出错啦！' + e.toString())
            }
            }
           }
        function uploadImage1(token,img,id) {
            /*var imgPath = $("#licence_img").val();
            if (imgPath == "") {
                alert("请选择上传图片！");return;
            }
            var strExtension = imgPath.substr(imgPath.lastIndexOf('.') + 1);
            if (strExtension != 'jpg' && strExtension != 'gif' && strExtension != 'png' && strExtension != 'bmp') {
                alert("请选择图片文件");return;
            }*/
            $.ajax({
                type: "POST",
                url:'upload_aimgs',
                data:{token:token,file:img},
                cache: false,
                success:function(data) {
                   if(data.pic){
                       id.append('<input type="hidden" value="'+data.pic+'">');
                       var aa=$("#pics").val();
                       $('.oimg .jj').show();
                       var len=$('.hh .oimg').length;
                       if(len<5){
                           var html='<div class="oimg"><input type="file"  class="aimgs"/></div>';
                           $('.hh').append(html);
                       }
                       $('.aimgs').change(function () {
                           var id =$(this).parent();
						   var file = this.files[0];
                           run(this, function (data) {
                               uploadImage1(file.type,data,id);
                           });
                           var val=getObjectURL(this.files[0]);
                           $(this).parent('.oimg').append('<img src="'+val+'" class="pp"/><img class="jj" src="img/jj.png" alt="">');
                           $('.oimg .jj').click(function(){
                               var str=$("#pics").val();
                               var val='|'+$(this).parent().find("input[type=hidden]").val();
                               $("#pics").val(str.replace(val,""));
                               $(this).parent().remove();
                           });

                       });
                   }
                }
            });
        }
     function uploadImage(token,img) {
         var imgPath = $("#licence_img").val();
         if (imgPath == "") {
               alert("请选择上传图片！");return;
          }
         var strExtension = imgPath.substr(imgPath.lastIndexOf('.') + 1);
         if (strExtension !='jpeg'&& strExtension != 'jpg' && strExtension != 'gif' && strExtension != 'png' && strExtension != 'bmp') {
            alert("请选择图片文件");return;
            }
         $.ajax({
             type: "POST",
             url:"/site/upload_licence",
             data:{token:token,file:img},
             dataType:'json',
             success:function(data) {
                 $(".inp img").attr('src','http://'+window.location.host+'/'+data.pic);
                 $("#licence").val(data.pic);
               },error: function(XMLHttpRequest, textStatus, errorThrown) {
                    alert("网络延迟");
                }
            });
    }
		function getObjectURL(file) {
			var url = null ;
			if (window.createObjectURL!=undefined) { // basic
				url = window.createObjectURL(file) ;
			} else if (window.URL!=undefined) { // mozilla(firefox)
				url = window.URL.createObjectURL(file) ;
			} else if (window.webkitURL!=undefined) { // webkit or chrome
				url = window.webkitURL.createObjectURL(file) ;
			}
			return url ;
		}
		

	</script>

</html>
