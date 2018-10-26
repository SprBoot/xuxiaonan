<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>叮当猫</title>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<!--[if lte IE 8]><script src="../pageResources/js/ie/html5shiv.js"></script><![endif]-->
<link rel="stylesheet" href="../pageResources/css/main.css" />
<link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css">
<!--[if lte IE 9]><link rel="stylesheet" href="../pageResources/css/ie9.css" /><![endif]-->
<script type="text/javascript" src="../pageResources/js/jquery-3.3.1.min.js"></script>
<script type="text/javascript" src="../pageResources/js/bootstrap.js"></script>
<style>
	.btnf{
	display: inline-block;
    padding: 6px 12px;
    margin-bottom: 0;
    font-size: 14px;
    font-weight: 400;
    line-height: 1.42857143;
    text-align: center;
    white-space: nowrap;
    vertical-align: middle;
    -ms-touch-action: manipulation;
    touch-action: manipulation;
    cursor: pointer;
    -webkit-user-select: none;
    -moz-user-select: none;
    -ms-user-select: none;
    user-select: none;
    background-image: none;
    border: 1px solid transparent;
	}
	.modal-bodyf {
    position: relative;
    padding: 60px 60px 60px 60px;
	}
	.form-inline .form-group {
    display: inline-block;
    margin-bottom: 10px;
    vertical-align: middle;
    margin-left: 90px;
    line-height: 1.5;
	}
	.navbar {
    position: relative;
    min-height: 50px;
    margin-bottom: 0px;
    border: 1px solid transparent;
	}
	.rig {
    float: right;
    margin: 0;
	}
</style>
</head>
<body>
	<%-- <div style="background-color:rgba(144, 144, 144, 0.25);">
	<c:choose>
    	<c:when test="${vuser.getUsername()!=null}">
    		<div style="float:left; margin-right:70em;">
    			<audio src="../pageResources/music/heart.mp3" controls="controls" loop="loop">
				</audio>
    		</div>
    		<div style="padding-left:72em;">
				<div style="padding:0.3em 0 0 25em;">
					<img src="../pageResources/images/demo.jpg">
					<a  id ="name" style="padding-left:0.5em; font-size:15px;">${vuser.getUsername()}</a>
				</div>
			</div>
    	</c:when>
    	<c:otherwise>
    		<div style="padding-left:72em;">
				<div style="padding:0 0 0 25em;">
					<button type="button" class="btn btn-default" data-toggle="modal" data-target="#myModal">登录</button>
															<!-- 模态框（Modal） -->
					<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
						<div class="modal-dialog">
							<div class="modal-content">
								<div class="modal-header">
						<h4 class="modal-title" id="myModalLabel">
								登录
						</h4>
					</div>
									<form class="form-inline" action="${pageContext.request.contextPath}/user/login" method ="POST">
										<div class="modal-bodyf">
											<div class="form-group">
												<label for="exampleInputName2"><button type="button" class="btn btn-default btn-sm">
          										<span class="glyphicon glyphicon-user"></span> 用户
        										</button></label>
        										<input type="text" class="form-control" id="username" name="username"/>
											</div>
											<div class="form-group">
												<label for="exampleInputEmail2"><button type="button" class="btn btn-default btn-sm">
          											<span class="glyphicon glyphicon-eye-open"></span> 密码
        											</button></label> <input type="password" class="form-control" id="password" name="password"/>
											</div>
										</div>
										<div class="modal-footer">
											<button type="button" class="btn btn-default "
												data-dismiss="modal">关闭</button>
											<button type="submit" class="btn btn-primary" >提交</button>
										</div>
									</form>
								</div><!-- /.modal-content -->
					</div><!-- /.modal -->
				</div>
					<button type="button" class="btn btn-default" data-toggle="modal" data-target="#myModalre">注册</button>
					<div class="modal fade" id="myModalre" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
						<div class="modal-dialog">
							<div class="modal-content">
								<div class="modal-header">
						<h4 class="modal-title" id="myModalLabel">
								注册
						</h4>
					</div>
									<form class="form-inline">
										<div class="modal-bodyf">
											<div class="form-group">
												<label for="exampleInputName2"><button type="button" class="btn btn-default btn-sm">
          										<span class="glyphicon glyphicon-user"></span> 用户
        										</button></label>
        										<input type="text" class="form-control" id="nusername" onblur="check();"/>
											</div>
											<div class="form-group">
												<label for="exampleInputEmail2"><button type="button" class="btn btn-default btn-sm">
          											<span class="glyphicon glyphicon-eye-open"></span> 密码
        											</button></label> <input type="password" class="form-control" id="npassword"/>
											</div>
											<div class="form-group">
												<label for="exampleInputEmail2"><button type="button" class="btn btn-default btn-sm">
          											<span class="glyphicon glyphicon-eye-open"></span> 重复
        											</button></label> <input type="password" class="form-control" id="nrepassword"/>
											</div>
											<div class="form-group">
												<label for="exampleInputEmail2"><button type="button" class="btn btn-default btn-sm">
          											<span class="glyphicon glyphicon-eye-open"></span> 邮箱
        											</button></label> <input type="email" class="form-control" id="nemail"/>
											</div>
										</div>
										<div class="modal-footer">
											<button type="button" class="btn btn-default "
												data-dismiss="modal">关闭</button>
											<button type="button" class="btn btn-primary" onclick="register();">提交</button>
										</div>
									</form>
								</div><!-- /.modal-content -->
					</div><!-- /.modal -->
				</div>
				</div>
			</div>
    	</c:otherwise>
</c:choose>
	</div> --%>
	<c:import url="head.jsp"></c:import>
	<!-- Banner -->
<section id="banner">
	<div class="inner split">
		<section>
			<h2>欢迎来到个人博客</h2>
		</section>
		<section>
			<p>该博客记录了我学习中的点点滴滴以及生活的感悟！</p>
			<ul class="actions">
				<li><a href="${pageContext.request.contextPath}/me/userInfo" class="button special">个人主页</a></li>
			</ul>
		</section>
	</div>
</section>

<!-- One -->
<section id="one" class="wrapper">
	<div class="inner split">
		<section>
			<h2>工作经验</h2>
			<p>你有几年工作经验啊？</p>
			<ul class="actions">
				<li><a href="#" class="button alt">尚无</a></li>
			</ul>
		</section>
		<section>
			<ul class="checklist">
				<li>Web开发？</li>
				<li>APP开发？</li>
				<li>人工智能？</li>
				<li>深度学习？</li>
				<li>or？</li>
			</ul>
		</section>
	</div>
</section>

<!-- one -->
<section id="two" class="wrapper style2 alt">
	<div class="inner">
				<div class="spotlight">
					<div class="image">
					<img src="../pageResources/imgs/pic01.jpg" alt="" />
					</div>
				<div class="content">
					<h3>java笔记</h3>
					<p>学习过程中的java笔记整理</p>
					<ul class="actions">
					<li><a href="${pageContext.request.contextPath}/more/moreInfo" class="button alt">更多</a></li>
				</ul>
			</div>
		</div>
	</div>
</section>
<!-- Two -->
<section id="two" class="wrapper style2 alt">
	<div class="inner">
				<div class="spotlight">
					<div class="image">
					<img src="../pageResources/imgs/pic02.jpg" alt="" />
					</div>
				<div class="content">
					<h3>生活与游戏</h3>
					<p>生活中的所感</p>
					<ul class="actions">
					<li><a href="${pageContext.request.contextPath}/travel/entrance" class="button alt">更多</a></li>
				</ul>
			</div>
		</div>
	</div>
</section>
<!-- three -->
<section id="two" class="wrapper style2 alt">
	<div class="inner">
				<div class="spotlight">
					<div class="image">
					<img src="../pageResources/imgs/pic03.jpg" alt="" />
					</div>
				<div class="content">
					<h3>书籍</h3>
					<p>学习中以及专业领域出众的书籍</p>
					<ul class="actions">
					<li><a href="${pageContext.request.contextPath}/show/showentrance" class="button alt">更多</a></li>
				</ul>
			</div>
		</div>
	</div>
</section>
<!-- Contact -->
<section id="contact" class="wrapper">
	<div class="inner split">
		<section>
			<h2>联系我</h2>
			<p>欢迎大家一起交流学习.</p>
			<form action="${pageContext.request.contextPath}/main/insertLx" class="alt" method="POST">
				<div class="row uniform">
					<div class="6u 12u$(xsmall)">
						<input name="cname" placeholder="姓名" type="text">
					</div>
					<div class="6u$ 12u$(xsmall)">
						<input name="cemail" placeholder="邮箱" type="email">
					</div>
					<div class="12u$">
						<textarea name="cnr" placeholder="内容" rows="4"></textarea>
					</div>
				</div>
				<ul class="actions">
					<li><input class="alt" value="发送" type="submit"></li>
				</ul>
			</form>
		</section>
		<section>
			<ul class="contact">
				<li class="fa-twitter"><a href="#">twitter.com/untitled-tld</a></li>
				<li class="fa-facebook"><a href="#">facebook.com/untitled-tld</a></li>
				<li class="fa-instagram"><a href="#">instagram.com/untitled-tld</a></li>
				<li class="fa-envelope"><a href="#">88665291@qq.com</a></li>
				<li class="fa-home">江苏省淮安市<br/>玫乘东路一号淮阴工学院</li>
			</ul>
				<a type="button" href ="${pageContext.request.contextPath}/mform/hentrance" class="btn btn-success btn-sm">后台登录</a>
		</section>
	</div>
</section>
<!-- Scripts -->
<script src="../pageResources/js/skel.min.js"></script>
<script src="../pageResources/js/util.js"></script>
<!--[if lte IE 8]><script src="../pageResources/js/ie/respond.min.js"></script><![endif]-->
<script src="../pageResources/js/main.js"></script>
<script>
	function register(){
			   if($("#nusername").val()!=null&&$("#npassword").val()!=""&&$("#nemail").val()!=null){
				   var password = document.getElementById("npassword");
				   var passwordConfirm = document.getElementById("nrepassword");
				   var name = $("#nusername").val();
				   var patrn=/[`~!@#$%^&*()_+<>?:"{},.\/;'[\]]/im;
				   var myReg = /^[a-zA-Z0-9_]{0,}$/;  
				    if(password.value != passwordConfirm.value){
				    	alert("对不起，您两次输入的密码不一致");
				    	$("#npassword").val("");
				    	$("#nrepassword").val("");
				    }
				if(patrn.test(name)||!myReg.test(name)){
					alert("提示信息：用户名不得含有非法字符和中文！");
					$("#nusername").val("");
				}else{
					   $.ajax({
					  	   type:'post',
						   url:"${pageContext.request.contextPath }/user/register",
						   data:{"username":$("#nusername").val(),"password":$("#npassword").val(),"email":$("#nemail").val()},
						   dataType:"text",
						   success:function(data){
							  if(data=="yes"){
								  alert("注册成功");
								  window.location.href="${pageContext.request.contextPath }/main/mainEntrance"; 
							  }else{
								  alert("注册失败");
							  }
						   }
					   });
				}
			  }
	}
</script>
<script>
	function check(){
			   if($("#nusername").val()!=null&&$("#nusername").val()!=""){
				   var name = $("#nusername").val();
				   var patrn=/[`~!@#$%^&*()_+<>?:"{},.\/;'[\]]/im;
				   var myReg = /^[a-zA-Z0-9_]{0,}$/;  
				if(patrn.test(name)||!myReg.test(name)){
					alert("提示信息：用户名不得含有非法字符和中文！");
					$("#nusername").val("");
				}else{
					   $.ajax({
					  	   type:'post',
						   url:"${pageContext.request.contextPath }/user/usercheck",
						   data:{"username":$("#nusername").val()},
						   dataType:"text",
						   success:function(data){
							  if(data=="yes"){
								  alert("该用户名可以使用");
							  }else if(data=="no"){
								  alert("该用户名已创建");		
								  $("#nusername").val("");
							  }
						   }
					   });
				}
			  }
	}
</script>
</body>
</html>