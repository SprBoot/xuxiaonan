<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>生活</title>

<link href="../pageResources/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="../pageResources/css/yxstyle.css" rel='stylesheet' type='text/css' />
<link href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800|Titillium+Web:400,600,700,300' rel='stylesheet' type='text/css'>
<!-- jQuery (necessary JavaScript plugins) -->
<script type="text/javascript" src="../pageResources/js/jquery-3.3.1.min.js"></script>
<!--//theme-style-->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Game Spot Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>

  
</head>
<body>
<div class="container">
				<div class="single">
					<div class="blog-to">		
					
						<img class="img-responsive sin-on" src="/xuxiaonan/uploadImages/${sh.getPicid()}" alt="" />
							<div class="blog-top">
							<div class="blog-left">
								<b>Hi</b>
							</div>
							<div class="top-blog">
								<a class="fast">${sh.getMc()}</a>
								<p>Posted by <a >${sh.getAuth()}</a></p> 
								<p class="sed">${sh.getJs()}</p> 
						<div class="clearfix"> </div>
							</div>
							<div class="clearfix"> </div>
					</div>
					</div>
						
					
				
		<div class="single-middle">
			
			<h3>others</h3>
			<c:forEach items="${shList}" var="object"
						varStatus="status">
				<div class="media">
				  <div class="media-left">
					<a href="#">
					  <img class="media-object" src="images/co.png" alt="">
					</a>
				  </div>
				  <div class="media-body">
					<h4 class="media-heading"><a href="${pageContext.request.contextPath}/travel/shxsentrance?shid=${object.getId()}">${object.getMc()}</a></h4>
						<p>${object.getJs()}</p>
				  </div>
				</div>
			</c:forEach>
		</div>
		</div>
</div>

</body>
</html>