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
		<title>生活</title>
		<!-- Bootstrap core CSS -->
		
		<link href="../pageResources/css/bootstrap.min.css" rel="stylesheet">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
		<link href="../pageResources/css/styletravel.css" rel="stylesheet">
		<!-- Custom styles for this template -->
		<script type="text/javascript" src="../pageResources/js/jquery-3.3.1.min.js"></script>
		<script src="../pageResources/bootstrap/js/bootstrap.min.js"></script>
		<script src="../pageResources/js/SmoothScroll.js"></script>
		<script src="../pageResources/js/theme-scripts.js"></script>
		<script src="../pageResources/layui/layui.js"></script>
		<script type="text/javascript">

//分页相关参数
var start = 0;//起始页
var limit = 6;//每页显示条数
var nowPage = 1;//当前页
var Number = 0;//数据量

function getshIformation(){
//AJAX向后台请求数据
	$.ajax({
		type:'post',
		url:"${pageContext.request.contextPath}/travel/getshIformation",
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
		 s += '<div class="col-md-6 col-0-gutter"><div class="ot-portfolio-item"><figure class="effect-bubba"><img src="/xuxiaonan/uploadImages/'+object.picid+'"alt="img02" class="img-responsive" /><figcaption><h2>'+object.mc+'</h2><p>'+object.auth+'</p>';
		 s += '<a href="#" data-toggle="modal" data-target="#Modal-'+object.id+'">View more</a></figcaption></figure></div></div>';
		 dian += '<div class="modal fade" id="Modal-'+object.id+'"tabindex="-1" role="dialog" aria-labelledby="Modal-label-1"><div class="modal-dialog" role="document"><div class="modal-content"><div class="modal-header"><button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button><h4 class="modal-title" id="Modal-label-1">'+object.mc+'</h4></div>';
		 dian += '<div class="modal-body"><img src="/xuxiaonan/uploadImages/'+object.picid+'"alt="img01" class="img-responsive" /><div class="modal-works"><span>'+object.auth+'</span></div><p>'+object.js+'</p></div>';
		 dian += '<div class="modal-footer"><a class ="btn btn-default" href ="${pageContext.request.contextPath}/travel/shxsentrance?shid='+object.id+'">More</a></div></div></div></div>';
	});
	if(data.length>0){
		$("#shxs").html(s);
		$("#dianji").html(dian);
	}else{
		$("#shxs").html("<br/><span style='width:10%;height:30px;display:block;margin:0 auto;'>暂无数据</span>");
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
				    	getshIformation();
				    }
	
			 }
		});
	})
}

$(document).ready(function(){
	//ajax先拿到后台数据
	getshIformation();
	
});
</script>
	</head>
	<body id="page-top">
		<!-- Navigation -->
		<section id="portfolio">
			<div class="container">
			<div class="row">
				<div class="col-lg-12 text-center">
					<div class="section-title">
						<h2>生活</h2>
						<p>生活中的点滴以及美的发现</p>
					</div>
				</div>
			</div>
			<div class="inner split" id ="shxs">
				<%-- <!-- start portfolio item -->
				<div class="col-md-6 col-0-gutter">
					<div class="ot-portfolio-item">
						<figure class="effect-bubba">
							<img src="/xuxiaonan/pic/${object.getPicid()}" alt="img02" class="img-responsive" />
							<figcaption>
								<h2>${object.getMc()}</h2>
								<p>${object.getAuth()}</p>
								<a href="#" data-toggle="modal" data-target="#Modal-${object.getId()}">View more</a>
							</figcaption>
						</figure>
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
			</div><!-- container -->
		</section>
		<div id ="dianji">
		
		</div>
<%-- 		<div class="modal fade" id="Modal-${object.getId()}" tabindex="-1" role="dialog" aria-labelledby="Modal-label-1">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
						<h4 class="modal-title" id="Modal-label-1">${object.getMc()}</h4>
					</div>
					<div class="modal-body">
						<img src="/xuxiaonan/pic/${object.getPicid()}" alt="img01" class="img-responsive" />
						<div class="modal-works"><span>${object.getAuth()}</span></div>
						<p>${object.getJs()}</p>
					</div>
					<div class="modal-footer">
						<a class ="btn btn-default" href ="${pageContext.request.contextPath}/travel/shxsentrance?shid=${object.getId()}">More</a>
					</div>
				</div>
			</div>
		</div> --%>
	</body>
</html>