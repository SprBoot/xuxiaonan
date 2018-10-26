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
<!--[if lte IE 9]><link rel="stylesheet" href="../pageResources/css/ie9.css" /><![endif]-->
<script type="text/javascript" src="../pageResources/js/jquery-1.7.min.js"></script>
</head>
<body>

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
		</section>
	</div>
</section>
<!-- Scripts -->
<script src="../pageResources/js/jquery.min.js"></script>
<script src="../pageResources/js/skel.min.js"></script>
<script src="../pageResources/js/util.js"></script>
<!--[if lte IE 8]><script src="../pageResources/js/ie/respond.min.js"></script><![endif]-->
<script src="../pageResources/js/main.js"></script>

</body>
</html>