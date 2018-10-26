<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>login</title>
<%response.setHeader("Refresh","3;URL=/xuxiaonan/main/mainEntrance");%>
<link rel="stylesheet" type="text/css"
	href="../pageResources/css/normalize.css" />
<link rel="stylesheet" type="text/css"
	href="../pageResources/css/demo.css" />
<link rel="stylesheet" href="../pageResources/layui/css/layui.css">
<!--必要样式-->
<link rel="stylesheet" type="text/css"
	href="../pageResources/css/component.css" />
<script type="text/javascript" src="../pageResources/js/jquery-1.7.min.js"></script>
<!--[if IE]>
<script src="../pageResources/js/html5.js"></script>
<![endif]-->
 <style>
html,body,div,span,applet,object,iframe,h1,h2,h3,h4,h5,h6,p,blockquote,pre,a,abbr,acronym,address,big,cite,code,del,dfn,em,img,ins,kbd,q,s,samp,small,strike,strong,sub,sup,tt,var,b,u,i,center,dl,dt,dd,ol,ul,li,fieldset,form,label,legend,table,caption,tbody,tfoot,thead,tr,th,td,article,aside,canvas,details,embed,figure,figcaption,footer,header,hgroup,menu,nav,output,ruby,section,summary,time,mark,audio,video{margin:0;padding:0;border:0;font-size:100%;font:inherit;vertical-align:baseline}article,aside,details,figcaption,figure,footer,header,hgroup,menu,nav,section{display:block}body{line-height:1}ol,ul{list-style:none}blockquote,q{quotes:none}blockquote:before,blockquote:after,q:before,q:after{content:'';content:none}table{border-collapse:collapse;border-spacing:0}
</style>

    <style>
body {
 	background: #000; 
}

img {
  display: block;
	
  margin: 0 auto;
}

canvas {
	display: block;

	margin:0 auto;

  /* uncomment to test overlay */

  /*
  position: absolute;
  left: 0;
  opacity: .5;
  top: 0;
  */  

}
</style>

    <script src="../pageResources/js/prefixfree.min.js"></script>

</head>
<body>
	<div class="container demo-1">
		<div class="content">
			<div id="large-header" class="large-header">
				<canvas id="demo-canvas"></canvas>
				
			</div>
		</div>
	</div>
	<!-- /container -->
	<script src="../pageResources/js/TweenLite.min.js"></script>
	<script src="../pageResources/js/EasePack.min.js"></script>
	<script src="../pageResources/js/rAF.js"></script>
	<script src="../pageResources/js/demo-1.js"></script>
	<script type="text/javascript" src="../pageResources/js/jquery-1.7.min.js"></script>
	<script type="text/javascript" src="../pageResources/js/login.js"></script>

</body>
</html>