<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">

<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<!--[if lte IE 8]><script src="../pageResources/js/ie/html5shiv.js"></script><![endif]-->
<link rel="stylesheet" href="../pageResources/css/main.css" />
<link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css">
<!--[if lte IE 9]><link rel="stylesheet" href="../pageResources/css/ie9.css" /><![endif]-->
<script type="text/javascript" src="../pageResources/js/jquery-3.3.1.min.js"></script>
<script type="text/javascript" src="../pageResources/js/bootstrap.js"></script>
	<style>
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
<script type="text/javascript" src="../pageResources/js/jquery-3.3.1.min.js"></script>
<script type="text/javascript" src="../pageResources/js/bootstrap.js"></script>
</head>
<body>
	<nav class="navbar navbar-default" role="navigation">
	<div class="container-fluid">
		<input type="hidden" id="ifjump"/>
		<div class="navbar-header">
			<a class="navbar-brand" href="#">God</a>
		</div>
		<div>
			<ul class="nav navbar-nav">
				<li ><audio src="../pageResources/music/heart.mp3" controls></audio></li>
				<li ><a href="${pageContext.request.contextPath}/main/mainEntrance">首页</a></li>
				<li><a href="${pageContext.request.contextPath}/more/moreInfo">java笔记</a></li>
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown">游戏与生活<b class="caret"></b>
				</a>
					<ul class="dropdown-menu">
						<li><a href="${pageContext.request.contextPath}/travel/moreyxentrance">游戏</a></li>
						<li><a href="${pageContext.request.contextPath}/travel/moreentrance">生活</a></li>
					</ul></li>
				<li><a href="${pageContext.request.contextPath}/show/showentrance">书籍</a></li>
			</ul>
		</div>
		<div>
			<ul class="nav navbar-nav rig">
			<%-- 	<c:if test="${vuser.getUsername()==null}">
						<li><a href="${pageContext.request.contextPath}/user/login">登录</a></li>
						<li><a href="#">注册</a></li>
				</c:if> --%>
				<c:if test="${vuser.getUsername()!=null}">
						<li><img src="../pageResources/images/demo.jpg" alt="头像"></li>
				        <li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown">${vuser.getUsername()}<b class="caret"></b>
							</a>
					<ul class="dropdown-menu">
						<li><a href="#">个人主页</a></li>
						<li><a href="${pageContext.request.contextPath}/user/logout">退出</a></li>
					</ul></li>
				</c:if>
			</ul>
		</div>
	</div>
	</nav>
</body>
</html>