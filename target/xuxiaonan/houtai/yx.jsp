<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">

<head>
	<title>游戏</title>
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
	<script type="text/javascript" src="../pageResources/js/jquery-1.7.min.js"></script>
	<script src="../pageResources/bootstrap/js/bootstrap.min.js"></script>
	<script src="../pageResources/layui/layui.js"></script>
</head>

<body>
	<!-- WRAPPER -->
	<div id="wrapper">
		<!-- NAVBAR -->
		<c:import url="head.jsp"></c:import>
		<!-- END LEFT SIDEBAR -->
		<!-- MAIN -->
		<div class="main">
			<!-- MAIN CONTENT -->
			<div class="main-content">
				<div class="container-fluid">
							<div class="panel">
								<div class="panel-heading">
									<h3 class="panel-title">我的游戏</h3>
									<div class="right">
										<button type="button" class="btn-toggle-collapse"><i class="lnr lnr-chevron-up"></i></button>
										<button type="button" class="btn-remove"><i class="lnr lnr-cross"></i></button>
									</div>
								</div>
								<form action="${pageContext.request.contextPath}/mform/insertYx" class="alt" method="POST">
								<div class="panel-heading">
											<img id ="yxdemo"  alt="picture" src ="../pageResources/imgs/timg.jpg">
									<button type="button" class="layui-btn" id="yxtest"></button>
									<input id ="picNAme" name ="pname" type ="hidden">
									<input id ="picID" name ="pid" type ="hidden">
									<input id ="picADress" name ="address" type ="hidden">
									<input id ="picTYpe" name ="type" type ="hidden">
								</div>
								<div class="panel-body">
									<div class="input-group">
										<span class="input-group-addon"><i class="fa fa-user"></i></span>
										<input class="form-control" name="yxmc"  placeholder="游戏名称" type="text">
									</div>
									<br>
									<div class="input-group">
										<span class="input-group-addon"><i class="fa fa-user"></i></span>
										<input class="form-control" name="yxkfs"  placeholder="游戏开发" type="text">
									</div>
									<br>
									<div class="input-group">
										<span class="input-group-addon"><i class="fa fa-user"></i></span>
										<input class="form-control" name="grgs"  placeholder="简介" type="text">
									</div>
									<br>
									<span class="input-group-btn"><input class="btn btn-primary" type="submit"></span>
								</div>
								</form>
								<script>
								layui.use("upload",function(){
								var upload = layui.upload;
								 var uploadInst = upload.render({
							    elem: '#yxtest'
			 			   ,url: '/xuxiaonan/upload/images'
			  					  ,before: function(obj){
			  					    //预读本地文件示例，不支持ie8
			   				   obj.preview(function(index, file, result){
			    			    $('#yxdemo').attr('src', result); //图片链接（base64）
			    				  });
			  					  }
			  					  ,done: function(res){
			   				   //上传成功
			  					  if (res.code == 0) {
									layer.msg("请上传！");
									$("#picID").val(res.fileId);
									$("#picNAme").val(res.fileName);
									$("#picADress").val(res.filePath);
									$("#picTYpe").val(res.fileType);
									console.log(res.filePath);
			   					 }else{
			    					layer.msg("上传失败！");
			    				}
			  				  }
			   				 ,error: function(){
			    				  //演示失败状态，并实现重传
			     				 var demoText = $('#demoText');
			     				 demoText.html('<span style="color: #FF5722;">上传失败</span> <a class="layui-btn layui-btn-mini demo-reload">重试</a>');
			     				 demoText.find('.demo-reload').on('click', function(){
			      				  uploadInst.upload();
			    				  });
			  				  }
			 				 });
						 });
								</script>
							</div>
							<!-- END  -->
							<div class="panel">
								<div class="panel-heading">
									<h3 class="panel-title">游戏</h3>
									<div class="right">
										<button type="button" class="btn-toggle-collapse"><i class="lnr lnr-chevron-up"></i></button>
										<button type="button" class="btn-remove"><i class="lnr lnr-cross"></i></button>
									</div>
								</div>
								<c:forEach items="${yx}" var="object"
									varStatus="status">
								<div class="panel-body">
									<h3 class="panel-title">${object.getYxmc()}</h3>
									<p class="panel-subtitle">${object.getGrgs()}</p>
									<div class="col-md-6"><span class="panel-note"></span></div>
									<div class="col-md-6 text-right"><a href="${pageContext.request.contextPath}/mform/ckyxentrance?id=${object.getId()}">编辑</a>|<a href="${pageContext.request.contextPath}/mform/deleteYx?id=${object.getId()}">删除</a></div>
								</div>
								</c:forEach>
								<div class="panel-body">
									<div class="row">
										<div class="col-md-6"><span class="panel-note"></span></div>
										<div class="col-md-6 text-right"><a class="btn btn-primary" href ="${pageContext.request.contextPath}/mform/tyxentrance">More</a></div>
									</div>
								</div>
							</div>
							<!-- END  -->
				</div>
			</div>
			<!-- END MAIN CONTENT -->
		</div>
		<!-- END MAIN -->
		<div class="clearfix"></div>
	</div>
	<!-- END WRAPPER -->
	<!-- Javascript -->
	<script src="../pageResources/assets/vendor/jquery/jquery.min.js"></script>
	<script src="../pageResources/assets/vendor/bootstrap/js/bootstrap.min.js"></script>
	<script src="../pageResources/assets/vendor/jquery-slimscroll/jquery.slimscroll.min.js"></script>
	<script src="../pageResources/assets/scripts/klorofil-common.js"></script>
</body>

</html>
