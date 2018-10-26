<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">

<head>
	<title>书籍</title>
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
	<script type="text/javascript">

//分页相关参数
var start = 0;//起始页
var limit = 9;//每页显示条数
var nowPage = 1;//当前页
var Number = 0;//数据量

function getsjIformation(){
//AJAX向后台请求数据
	$.ajax({
		type:'post',
		url:"${pageContext.request.contextPath}/mform/getsjIformation",
		sync:false,
		data:{start:start,limit:limit,nowPage:nowPage,Number:Number},
		success:function(data){
			setHtml(data.root)
			start = data.currentResult;
			Number = data.total;
			//进行分页初始化
			pageReady();
		}
		
	});
}

function setHtml(data){
	var s = "";
	$(data).each(function(index,object){
		 s += '<h3 class="panel-title">'+object.tsmc+'"</h3><p class="panel-subtitle">'+object.tslx+'</p>';
		 s += '<div class="col-md-6"><span class="panel-note"></span></div><div class="col-md-6 text-right">';
		 s += '<a href="${pageContext.request.contextPath}/mform/cksjentrance?id='+object.id+'">编辑</a>|<a href="${pageContext.request.contextPath}/mform/deleteTsj?id='+object.id+'">删除</a></div>';
	});
	if(data.length>0){
		$("#sjxs").html(s);
	}else{
		$("#sjxs").html("<br/><span style='width:10%;height:30px;display:block;margin:0 auto;'>暂无数据</span>");
	}
	console.log(s);
}


function pageReady(){
//layui分页开启
	layui.use('laypage',function(){
		var laypage = layui.laypage;
		laypage.render({
			elem:'fenYe'
			,count:Number//后台传入
			,limit:limit
			,curr:nowPage
			,jump:function(obj, first){
				    //obj包含了当前分页的所有参数，比如：
				   // console.log(obj.curr); //得到当前页，以便向服务端请求对应页的数据。
				   // console.log(obj.limit); //得到每页显示的条数
					nowPage = obj.curr;
					start = (obj.curr-1)*obj.limit;
				    //首次不执行
				    if(!first){
				    	getsjIformation();
				    }
	
			 }
		});
	})
}

$(document).ready(function(){
	//ajax先拿到后台数据
	getsjIformation();
	
});
</script>
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
									<h3 class="panel-title">书籍</h3>
									<div class="right">
										<button type="button" class="btn-toggle-collapse"><i class="lnr lnr-chevron-up"></i></button>
										<button type="button" class="btn-remove"><i class="lnr lnr-cross"></i></button>
									</div>
								</div>
								<div class="panel-body" id = "sjxs">
									<%-- <h3 class="panel-title">${object.getMc()}</h3>
									<p class="panel-subtitle">${object.getJs()}</p>
									<div class="col-md-6"><span class="panel-note"></span></div>
									<div class="col-md-6 text-right"><a href="${pageContext.request.contextPath}/mform/ckshentrance?id=${object.getId()}">编辑</a>|<a href="${pageContext.request.contextPath}/mform/deleteSh?id=${object.getId()}">删除</a></div> --%>
								</div>
								<div class="panel-body">
								<div class="col-md-6"><span class="panel-note"></span></div>
								<div class="col-md-6 text-right"><div id="fenYe" class="btn btn-primary"></div></div>
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