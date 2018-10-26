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
	<link rel="shortcut icon" href="https://pandao.github.io/editor.md/favicon.ico" type="image/x-icon" />
	<link rel="stylesheet" href="../pageResources/css/editormd.css" />
	<link rel="stylesheet" href="../pageResources/css/bootstrap-select.css">
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
								    <input id ="lxid" type="hidden" class="form-control" value ="${bjlx.getBjlxid()}" name ="bjlxid"/>
									<input type="text" class="form-control" value ="${bj.getBjmc()}" name ="bjmc" placeholder="名称">
									<br>
									<input type="text" class="form-control" value ="${bj.getBjzz()}" name ="bjzz" placeholder="作者">
									<br>
     								<div id="layout">
            							<div id="test-editormd">
                							<textarea style="display:none;" name="bjnr">${bj.getBjnr()}</textarea>
           								 </div>
        							</div>
									<br>
										<div class="row">
											<label class="col-sm-3 control-label"
												style="line-height: 34px; margin-bottom: 20px;">笔记类型</label>
											<div class="col-sm-6">
											<c:choose>
												<c:when test="${bjlx.getBjlxid()!=null}">
												<select id="select" name="lxmc" 
													class="selectpicker show-tick form-control" multiple
													data-live-search="true" data-actions-box="true">
													<option value="${bjlx.getLxmc()}" selected="selected">${bjlx.getLxmc()}</option>
													<option value="HTML">HTML</option>
													<option value="CSS">CSS</option>
													<option value="JS">JS</option>
													<option value="框架">框架</option>
													<option value="计算机">计算机</option>
													<option value="基础">基础</option>
													<option value="移动开发">移动开发</option>
													</select>
												</c:when>
												<c:otherwise>
												<select id="select" name="lxmc" 
													class="selectpicker show-tick form-control" multiple
													data-live-search="true" data-actions-box="true">
													<option value="HTML">HTML</option>
													<option value="CSS">CSS</option>
													<option value="JS">JS</option>
													<option value="框架">框架</option>
													<option value="计算机">计算机</option>
													<option value="基础">基础</option>
													<option value="移动开发">移动开发</option>
												</select>
												</c:otherwise>
											</c:choose>
											</div>
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
	<script src="../pageResources/js/editormd.min.js"></script>
	<script src="../pageResources/js/bootstrap-select.js"></script>
    <script type="text/javascript">
            var testEditor;
            $(function() {
                testEditor = editormd("test-editormd",{
                    width   : "100%",
                    height  : 640,
                    syncScrolling : "single",
                    path    : "../pageResources/mark/",
                    imageUpload : true,
                    imageFormats : ["jpg", "jpeg", "gif", "png", "bmp", "webp"],
                    imageUploadURL : "/xuxiaonan/mform/markpic",
                });
            });
     </script>
</body>

</html>