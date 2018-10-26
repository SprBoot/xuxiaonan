<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
		<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<link href="../pageResources/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="../pageResources/css/yxstyle.css" rel='stylesheet' type='text/css' />
<link href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800|Titillium+Web:400,600,700,300' rel='stylesheet' type='text/css'>
<link rel="shortcut icon" href="https://pandao.github.io/editor.md/favicon.ico" type="image/x-icon" />
<link rel="stylesheet" href="../pageResources/css/editormd.css" />
<!-- jQuery (necessary JavaScript plugins) -->
<script type="text/javascript" src="../pageResources/js/jquery-3.3.1.min.js"></script>
<!--//theme-style-->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Game Spot Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
    <!--[if IE]>
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<![endif]-->
    <title>我的笔记</title>
    <!-- BOOTSTRAP CORE STYLE -->
    <link href="../pageResources/assets/css/bootstrap.css" rel="stylesheet" />
    <!-- FONT AWESOME ICON STYLE -->
    <link href="../pageResources/assets/css/font-awesome.css" rel="stylesheet" />
    <!-- CUSTOM STYLE CSS -->
    <link href="../pageResources/assets/css/style.css" rel="stylesheet" />
    	<script src="../pageResources/layui/layui.js"></script>
</head>
<body>
    <div id="header">
        <div class="overlay">
            <div class="container">
                <div class="row">
                    <div class="col-md-8 header-text-top " id="about">

						<h2><strong>笔记</strong></h2>
						
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="container">
				<div class="single">
					<div class="blog-to">
							<div class="blog-top">
							<div class="blog-left">
								<b>Hi</b>
							</div>
							<div class="top-blog">
								<a class="fast">${bj.getBjmc()}</a>
								<p>Noted by <a >${bj.getBjzz()}</a></p> 
								<%-- <pre class="layui-code" lay-title="JavaScript" lay-skin="notepad">${bj.getBjnr()}</pre> --%>
								<div id="layout">
            						<div id="test-editormd-view">
               							 <textarea id="append-test" style="display:none;">${bj.getBjnr()}</textarea>          
            						</div>
        						</div>
						<div class="clearfix"> </div>
							</div>
							<div class="clearfix"> </div>
					</div>
					</div>
		</div>
</div>
	<script src="../pageResources/js/editormd.min.js"></script>
	<script src="../pageResources/layui/layui.js"></script>
    <script src="../pageResources/assets/js/bootstrap.js"></script>
	<script src="../pageResources/mark/marked.min.js"></script>
    <script src="../pageResources/mark/prettify.min.js"></script>
	<script src="../pageResources/mark/raphael.min.js"></script>
    <script src="../pageResources/mark/underscore.min.js"></script>
    <script src="../pageResources/mark/sequence-diagram.min.js"></script>
    <script src="../pageResources/mark/flowchart.min.js"></script>
    <script src="../pageResources/mark/jquery.flowchart.min.js"></script>
    <script src="../pageResources/js/editormd.js"></script>
    <script type="text/javascript">
            $(function() {
                var testEditormdView
                testEditormdView = editormd.markdownToHTML("test-editormd-view", {
                    htmlDecode      : "style,script,iframe",  // you can filter tags decode
                    emoji           : true,
                    taskList        : true,
                    tex             : true,  // 默认不解析
                    flowChart       : true,  // 默认不解析
                    sequenceDiagram : true,  // 默认不解析
                });
            });
        </script>
</body>
</html>