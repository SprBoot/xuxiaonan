<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">

<head>
	<title>我的笔记</title>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
	<!-- VENDOR CSS -->
	<link rel="stylesheet" href="../pageResources/assets/vendor/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" href="../pageResources/assets/vendor/font-awesome/css/font-awesome.min.css">
	<link rel="stylesheet" href="../pageResources/assets/vendor/linearicons/style.css">
	<!-- MAIN CSS -->
	<link rel="stylesheet" href="../pageResources/assets/css/main.css">
	<!-- FOR DEMO PURPOSES ONLY. You should remove this in your project -->
	<link rel="stylesheet" href="../pageResources/assets/css/demo.css">
	<!-- GOOGLE FONTS -->
	<link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700" rel="stylesheet">
	<!-- ICONS -->
	<link rel="apple-touch-icon" sizes="76x76" href="../pageResources/assets/img/apple-icon.png">
	<link rel="icon" type="image/png" sizes="96x96" href="../pageResources/assets/img/favicon.png">
	 <link rel="stylesheet" href="../pageResources/layui/css/layui.css"  media="all">
	<script type="text/javascript" src="../pageResources/js/jquery-3.3.1.min.js"></script>
	<script src="../pageResources/bootstrap/js/bootstrap.min.js"></script>
</head>

<body>
	<!-- WRAPPER -->
	<div id="wrapper">
		<!-- NAVBAR -->
		<c:import url="head.jsp"></c:import>
		<!-- MAIN -->
		<div class="main">
			<!-- MAIN CONTENT -->
			<div class="main-content">
				<div class="container-fluid">
							<div class="panel">
								<div class="panel-heading">
									<h3 class="panel-title">笔记</h3>
									<div class="right">
										<button type="button" class="btn-toggle-collapse"><i class="lnr lnr-chevron-up"></i></button>
										<button type="button" class="btn-remove"><i class="lnr lnr-cross"></i></button>
									</div>
								</div>
								<form action="${pageContext.request.contextPath}/mform/updateBj" class="alt" method="POST">
								<div class="panel-body">
								    <input id ="id" type="hidden" class="form-control" value ="${bj.getId()}" name ="id"/>
									<input type="text" class="form-control" value ="${bj.getBjmc()}" name ="bjmc" placeholder="名称">
									<br>
									<input type="text" class="form-control" value ="${bj.getBjzz()}" name ="bjzz" placeholder="作者">
									<br>
     								<div class="layui-form-item layui-form-text">
										<textarea class="layui-textarea layui-hide" name="bjnr"
										lay-verify="content" id="LAY_demo_editor">${bj.getBjnr()}</textarea>
									</div>
									<br>
									<span class="input-group-btn"><input class="btn btn-primary" type="submit"></span>
								</div>
								</form>
							</div>
				</div>
			</div>
			<!-- END MAIN CONTENT -->
		</div>
		<!-- END MAIN -->
		<div class="clearfix"></div>
	</div>
	<!-- END WRAPPER -->
	<!-- Javascript -->
	<script type="text/javascript" src="../pageResources/js/jquery-3.3.1.min.js"></script>
	<script src="../pageResources/assets/vendor/bootstrap/js/bootstrap.min.js"></script>
	<script src="../pageResources/assets/vendor/jquery-slimscroll/jquery.slimscroll.min.js"></script>
	<script src="../pageResources/assets/scripts/klorofil-common.js"></script>
	<script src="../pageResources/layui/layui.js"></script>
	<script>
	//创建一个编辑器
	layui.use([ 'form', 'layedit',"layer"], function() {
	var form = layui.form, 
	layedit = layui.layedit,
	layer=layui.layer;
	var editIndex = layedit.build('LAY_demo_editor');
	});
	</script>
</body>

</html>