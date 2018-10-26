<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
		<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
	<title>Home</title>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
	<!-- VENDOR CSS -->
	<link rel="stylesheet" href="../pageResources/assets/vendor/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" href="../pageResources/assets/vendor/font-awesome/css/font-awesome.min.css">
	<link rel="stylesheet" href="../pageResources/assets/vendor/linearicons/style.css">
	<link rel="stylesheet" href="../pageResources/assets/vendor/chartist/css/chartist-custom.css">
	<!-- MAIN CSS -->
	<link rel="stylesheet" href="../pageResources/assets/css/main.css">
	<!-- FOR DEMO PURPOSES ONLY. You should remove this in your project -->
	<link rel="stylesheet" href="../pageResources/assets/css/demo.css">
	<!-- GOOGLE FONTS -->
	<link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700" rel="stylesheet">
	<!-- ICONS -->
	<link rel="apple-touch-icon" sizes="76x76" href="../pageResources/assets/img/apple-icon.png">
	<link rel="icon" type="image/png" sizes="96x96" href="../pageResources/assets/img/favicon.png">
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
				<!-- 个人简介 -->
							<div class="panel">
								<div class="panel-heading">
									<h3 class="panel-title">个人简介</h3>
									<div class="right">
										<button type="button" class="btn-toggle-collapse"><i class="lnr lnr-chevron-up"></i></button>
										<button type="button" class="btn-remove"><i class="lnr lnr-cross"></i></button>
									</div>
								</div>
								<form action="${pageContext.request.contextPath}/mform/updateJs" class="alt" method="POST">
								<div class="panel-body">
									<div class="input-group">
										<span class="input-group-addon"><i class="fa fa-user"></i></span>
										<input class="form-control" name="name" value ="${user.getName()}" placeholder="姓名" type="text">
									</div>
									<br>
									<div class="input-group">
										<span class="input-group-addon"><i class="fa fa-user"></i></span>
										<input class="form-control" name="gzly" value ="${user.getGzly()}" placeholder="工作" type="text">
									</div>
									<br>
									<div class="input-group">
										<span class="input-group-addon"><i class="fa fa-user"></i></span>
										<input class="form-control" name="grjs" value ="${user.getGrjs()}" placeholder="介绍" type="text">
									</div>
									<br>
									<span class="input-group-btn"><input class="btn btn-primary" type="submit"></span>
								</div>
								</form>
							</div>
							<!-- END  -->
					<!-- 知识能力 -->
					<div class="panel panel-headline">
								<div class="panel-heading">
									<h3 class="panel-title">知识掌握</h3>
									<div class="right">
										<button type="button" class="btn-toggle-collapse"><i class="lnr lnr-chevron-up"></i></button>
										<button type="button" class="btn-remove"><i class="lnr lnr-cross"></i></button>
									</div>
								</div>
									<c:forEach items="${zssp}" var="object"
									varStatus="status">
										<form action="${pageContext.request.contextPath}/mform/updateZssp" class="alt" method="POST">
											<div class="panel-body">
											<input name ="id" value ="${object.getId()}" type="hidden">
											<p class="demo-button">
												知识名称:<input name="zsmc" type="text" value ="${object.getZsmc()}" class="btn btn-success">
												掌握力度:<input name="percent" type="text" value ="${object.getPercent()}" class="btn btn-danger">
											</p>
											<div class="panel-footer">
												<div class="row">
													<div class="col-md-6"><span class="panel-note"></span></div>
													<div class="col-md-6 text-right"><input class="btn btn-primary" type="submit"></div>
												</div>
											</div>
											</div>
										</form>
										</c:forEach>
						<!-- <div class="panel-heading">
							<h3 class="panel-title">Weekly Overview</h3>
							<p class="panel-subtitle">Period: Oct 14, 2016 - Oct 21, 2016</p>
						</div>
						<div class="panel-body">
							<div class="row">
								<div class="col-md-3">
									<div class="metric">
										<span class="icon"><i class="fa fa-download"></i></span>
										<p>
											<span class="number">1,252</span>
											<span class="title">Downloads</span>
										</p>
									</div>
								</div>
								<div class="col-md-3">
									<div class="metric">
										<span class="icon"><i class="fa fa-shopping-bag"></i></span>
										<p>
											<span class="number">203</span>
											<span class="title">Sales</span>
										</p>
									</div>
								</div>
								<div class="col-md-3">
									<div class="metric">
										<span class="icon"><i class="fa fa-eye"></i></span>
										<p>
											<span class="number">274,678</span>
											<span class="title">Visits</span>
										</p>
									</div>
								</div>
								<div class="col-md-3">
									<div class="metric">
										<span class="icon"><i class="fa fa-bar-chart"></i></span>
										<p>
											<span class="number">35%</span>
											<span class="title">Conversions</span>
										</p>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-md-9">
									<div id="headline-chart" class="ct-chart"></div>
								</div>
								<div class="col-md-3">
									<div class="weekly-summary text-right">
										<span class="number">2,315</span> <span class="percentage"><i class="fa fa-caret-up text-success"></i> 12%</span>
										<span class="info-label">Total Sales</span>
									</div>
									<div class="weekly-summary text-right">
										<span class="number">$5,758</span> <span class="percentage"><i class="fa fa-caret-up text-success"></i> 23%</span>
										<span class="info-label">Monthly Income</span>
									</div>
									<div class="weekly-summary text-right">
										<span class="number">$65,938</span> <span class="percentage"><i class="fa fa-caret-down text-danger"></i> 8%</span>
										<span class="info-label">Total Income</span>
									</div>
								</div>
							</div>
						</div> -->
					</div>
					<!-- END  -->
					<div class="panel panel-headline">
								<div class="panel-heading">
									<h3 class="panel-title">能力介绍</h3>
									<div class="right">
										<button type="button" class="btn-toggle-collapse"><i class="lnr lnr-chevron-up"></i></button>
										<button type="button" class="btn-remove"><i class="lnr lnr-cross"></i></button>
									</div>
								</div>
									<c:forEach items="${nlms}" var="object"
									varStatus="status">
										<form action="${pageContext.request.contextPath}/mform/updateNl" class="alt" method="POST">
											<div class="panel-body">
											<input name ="id" value ="${object.getId()}" type="hidden">
											<p class="demo-button">
												能力名称:<input name="nlmc" type="text" value = "${object.getNlmc()}" class="btn btn-warning">
												简单介绍:<input name="nlzw" type="text" value = "${object.getNlzw()}" class="btn btn-default">
											</p>
											<div class="panel-footer">
												<div class="row">
													<div class="col-md-6"><span class="panel-note"></span></div>
													<div class="col-md-6 text-right"><input class="btn btn-primary" type="submit"></div>
												</div>
											</div>
											</div>
										</form>
										</c:forEach>
					</div>
					<!-- END OVERVIEW -->
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
	<script src="../pageResources/assets/vendor/jquery.easy-pie-chart/jquery.easypiechart.min.js"></script>
	<script src="../pageResources/assets/scripts/klorofil-common.js"></script>
</body>

</html>
