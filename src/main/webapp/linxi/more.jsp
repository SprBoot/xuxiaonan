<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
		<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
    <meta name="description" content="" />
    <meta name="author" content="" />
<script type="text/javascript" src="../pageResources/js/jquery-1.7.min.js"></script>
    <!--[if IE]>
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<![endif]-->
    <title>我的笔记</title>
    <!-- BOOTSTRAP CORE STYLE -->
    <link href="../pageResources/assets/css/bootstrap.css" rel="stylesheet" />
    <!-- FONT AWESOME ICON STYLE -->
    <link href="../pageResources/assets/css/font-awesome.css" rel="stylesheet" />
    <!-- CUSTOM STYLE CSS -->
    <link href="../pageResources/css/dinggc.css" rel="stylesheet" />
    <link href="../pageResources/assets/css/style.css" rel="stylesheet" />
    <script src="../pageResources/layui/layui.js"></script>
	<script src="../pageResources/js/dinggc.js"></script>
	<script type="text/javascript">

//分页相关参数
var start = 0;//起始页
var limit = 5;//每页显示条数
var nowPage = 1;//当前页
var Number = 0;//数据量

function getbjIformation(){
//AJAX向后台请求数据
	$.ajax({
		type:'post',
		url:"${pageContext.request.contextPath}/more/getbjIformation",
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
		 s += '<div class="blog-post"><h2>'+object.bjmc+'</h2><h4>'+object.date+'</h4>';
		 s += '<a href="${pageContext.request.contextPath}/more/bjxsentrance?bjid='+object.id+'" class="btn btn-default btn-lg ">Read More<i class="fa fa-angle-right"></i></a></div>';
	});
	if(data.length>0){
		$("#bjxs").html(s);
	}else{
		$("#bjxs").html("<br/><span style='width:10%;height:30px;display:block;margin:0 auto;'>暂无数据</span>");
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
				    	getbjIformation();
				    }
	
			 }
		});
	})
}

$(document).ready(function(){
	//ajax先拿到后台数据
	getbjIformation();
	
});
</script>
</head>
<body>
	<c:import url="head.jsp"></c:import>
    <div id="header">
        <div class="overlay">
            <div class="container">
                <div class="row">
                    <div class="col-md-8 header-text-top " id="about">

						<h2><strong>个人笔记记录</strong></h2>
						
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--END HEADER SECTION-->
<!--     <div class="info-sec">
        <div class="container">
            <div class="row">
                <div class="col-md-2">
                    <div class="social-link">
                        <a href="#" class="btn btn-default btn-xs"><i class="fa fa-facebook fa-2x"></i></a>
                        <a href="#" class="btn btn-default btn-xs"><i class="fa fa-linkedin fa-2x"></i></a>
                        <a href="#" class="btn btn-default btn-xs"><i class="fa fa-google-plus fa-2x"></i></a>
                    </div>

                </div>

            </div>
        </div>
    </div> -->
    <!--END INFO SECTION-->
    <div class="container">

        <div class="row">

            <div class="col-md-8 " id ="bjxs">
            
<!--                <div class="blog-post">
                    <h2>2222222222</h2>
                    <h4>22222222222</h4>
                    <a href="#" class="btn btn-default btn-lg ">Read More <i class="fa fa-angle-right"></i></a>
                </div>  -->
<!--                 <nav>
                    <ul class="pagination">
                        <li>
                            <a href="#" aria-label="Previous">
                                <span aria-hidden="true">&laquo;</span>
                            </a>
                        </li>
                        <li><a href="#">1</a></li>
                        <li><a href="#">2</a></li>
                        <li><a href="#">3</a></li>
                        <li><a href="#">4</a></li>
                        <li><a href="#">5</a></li>
                        <li>
                            <a href="#" aria-label="Next">
                                <span aria-hidden="true">&raquo;</span>
                            </a>
                        </li>
                    </ul>
                </nav> -->
            </div>
<%--                  <div class="panel-body">
                <div class="tree">
                <c:forEach items="${zstrees}" var="object"
							varStatus="status">
                <ul class="list-group-item len">
                	<a class="mc">${object.getZsmc()}</a>
                	     <c:forEach items="${object.getZszies()}" var="zy"
							varStatus="status">
                				<li class="hid"><i class="fa fa-angle-right"></i><a href="http://www.w3school.com.cn" target="_blank">${zy.getZymc()}</a></li>
                   		 </c:forEach>
                </ul>
                </c:forEach>
               </div>
					<div class="col-md-6"><span class="panel-note"></span></div>
					<div class="col-md-6 text-right"><div id="fenYe" class="btn btn-primary"></div></div>
				</div> --%>
            </div> 

        </div>

    <!-- END FOOTER SECTION -->
    <!-- JAVASCRIPT FILES PLACED AT THE BOTTOM TO REDUCE THE LOADING TIME -->
    <!-- CORE JQUERY -->
    <!-- BOOTSTRAP SCRIPTS -->
    <script src="../pageResources/assets/js/bootstrap.js"></script>

</body>
</html>
