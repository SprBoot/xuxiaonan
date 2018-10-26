<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
		<meta name="description" content="">
		<meta name="author" content="">
		<link rel="icon" href="favicon.ico">
		<title>书籍</title>
		<!-- Bootstrap core CSS -->
		<script type="text/javascript" src="../pageResources/js/jquery-3.3.1.min.js"></script>
		<link href="../pageResources/css/bootstrap.min.css" rel="stylesheet">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
		<!-- Custom styles for this template -->
		<link href="../pageResources/css/styletravel.css" rel="stylesheet">
		<script src="../pageResources/layui/layui.js"></script>
		<script type="text/javascript">

//分页相关参数
var start = 0;//起始页
var limit = 6;//每页显示条数
var nowPage = 1;//当前页
var Number = 0;//数据量

function getsjIformation(){
//AJAX向后台请求数据
	$.ajax({
		type:'post',
		url:"${pageContext.request.contextPath}/show/getsjIformation",
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
	var dian = "";
	$(data).each(function(index,object){
		 s += '<div class="col-md-4"><div class="team-item"><div class="team-image"><a href ="${pageContext.request.contextPath}/show/sjxsentrance?sjid='+object.id+'"><img src="/xuxiaonan/uploadImages/'+object.picid+'"class="img-responsive" alt="author"></a></div>';
		 s += '<div class="team-text"><h3>'+object.tsmc+'</h3><div class="team-position">'+object.tslx+'</div><p>'+object.cbs+'</p></div></div></div>';
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
	<body id="page-top">
		<!-- Navigation -->
		<section id="team">
			<div class="container">
				<div class="row">
					<div class="col-lg-12 text-center">
						<div class="section-title">
							<h2>我的书籍</h2>
						</div>
					</div>
				</div>
				<div class="row" id ="sjxs">
					<%-- <!-- team member item -->
					<div class="col-md-4">
						<div class="team-item">
							<div class="team-image">
								<a href ="${pageContext.request.contextPath}/travel/yxxsentrance?yxid=${object.getId()}"><img src="/xuxiaonan/pic/${object.getPicid()}" class="img-responsive" alt="author"></a>
							</div>
							<div class="team-text">
								<h3>${object.getYxmc()}</h3>
								<div class="team-position">${object.getYxkfs()}</div>
								<p>${object.getGrgs()}</p>
							</div>
						</div>
					</div> --%>
				</div>
			<div class="panel-body">
			</div>
			<div class="panel-body">
			</div>
			<div class="panel-body">
				<div class="col-md-6"><span class="panel-note"></span></div>
				<div class="col-md-6 text-right"><div id="fenYe" class="btn btn-primary"></div></div>
			</div>
			</div>
		</section>
		<script src="../pageResources/bootstrap/js/bootstrap.min.js"></script>
		<script src="../pageResources/js/SmoothScroll.js"></script>
		<script src="../pageResources/js/theme-scripts.js"></script>
	</body>
</html>