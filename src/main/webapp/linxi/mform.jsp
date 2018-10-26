<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<!--[if lte IE 8]><script src="../pageResources/js/ie/html5shiv.js"></script><![endif]-->
<link rel="stylesheet" href="../pageResources/css/main.css" />
<!--[if lte IE 9]><link rel="stylesheet" href="../pageResources/css/ie9.css" /><![endif]-->
<script type="text/javascript" src="../pageResources/js/jquery-1.7.min.js"></script>
<script src="../pageResources/bootstrap/js/bootstrap.min.js"></script>
<script src="../pageResources/layui/layui.js"></script>
</head>
<body>
	<section id="contact" class="wrapper">
	<div class="inner split">
		<section>
			<h2>个人简介(updateJs)</h2>
			<form action="${pageContext.request.contextPath}/mform/updateJs" class="alt" method="POST">
				<div class="row uniform">
					<div class="6u 12u$(xsmall)">
						<input name="name" placeholder="姓名" type="text">
					</div>
					<div class="6u$ 12u$(xsmall)">
						<input name="gzly" placeholder="工作领域" type="text">
					</div>
					<div class="6u$ 12u$(xsmall)">
						<input name="grjs" placeholder="个人介绍" type="text">
					</div>
				</div>
				<ul class="actions">
					<li><input class="alt" value="提交" type="submit"></li>
				</ul>
			</form>
		</section>
		<section>
			<h2>知识能力(getZssp)</h2>
			<c:forEach items="${zssp}" var="object"
							varStatus="status">
			<form action="${pageContext.request.contextPath}/mform/updateZssp" class="alt" method="POST">
				<div class="row uniform">
					<input name ="id" value ="${object.getId()}" type="hidden">
					<div class="6u 12u$(xsmall)">
						<input name="zsmc" placeholder="知识名称" value ="${object.getZsmc()}" type="text">
					</div>
					<div class="6u$ 12u$(xsmall)">
						<input name="percent" placeholder="掌握力度" value ="${object.getPercent()}" type="text">
					</div>
				</div>
				<ul class="actions">
					<li><input class="alt" value="提交" type="submit"></li>
				</ul>
			</form>
			</c:forEach>
		</section>
		<section>
			<h2>能力掌握(updateNl)</h2>
			<c:forEach items="${nlms}" var="object"
							varStatus="status">
			<form action="${pageContext.request.contextPath}/mform/updateNl" class="alt" method="POST">
				<div class="row uniform">
					<input name ="id" value ="${object.getId()}" type="hidden">
					<div class="6u 12u$(xsmall)">
						<input name="nlmc" placeholder="能力" value = "${object.getNlmc()}" type="textarea">
					</div>
					<div class="6u$ 12u$(xsmall)">
						<input name="nlzw" placeholder="掌握程度" value = "${object.getNlzw()}" type="textarea">
					</div>
				</div>
				<ul class="actions">
					<li><input class="alt" value="提交" type="submit"></li>
				</ul>
			</form>
			</c:forEach>
		</section>
		<section>
			<h2>项目经验</h2>
			<c:forEach items="${xm}" var="object"
							varStatus="status">
			<div class="row">
				<form action="${pageContext.request.contextPath}/mform/savepic" method ="post">
							<img id ="demo${object.getXmms().getXmid()}"  alt="picture" src="/xuxiaonan/uploadImages/${object.getXmms().getPicid()}">
				<button type="button" class="layui-btn" id="test${object.getXmms().getXmid()}">选择图片</button>
				<button type="submit" class="layui-btn" id="sc2">上传图片</button>
				<input id ="picName" name ="pname" type ="hidden">
				<input id ="picId" name ="pid" value ="${object.getXmms().getPicid()}" type ="hidden">
				<input id ="picAdress" name ="address" type ="hidden">
				<input id ="picType" name ="type" type ="hidden">
				<input name ="pictureid" value ="${object.getXmms().getXmid()}" type="hidden">
				</form>
			</div>
			<form action="${pageContext.request.contextPath}/mform/updateXm" class="alt" method="POST">
				<div class="row uniform">
					<input name ="id" value ="${object.getId()}" type="hidden">
					<div class="6u 12u$(xsmall)">
						项目名称:<input name="xmmc" placeholder="项目名称" value ="${object.getXmmc()}" type="textarea">
					</div>
					<div class="6u$ 12u$(xsmall)">
						项目内容:<input name="xmnr" placeholder="项目内容" value ="${object.getXmms().getXmnr()}" type="textarea">
					</div>
					<div class="6u$ 12u$(xsmall)">
						项目类型:<input name="xmlx" placeholder="项目类型" value ="${object.getXmms().getXmlx()}" type="textarea">
					</div>
					<c:forEach items="${object.getXmms().getXmcy()}" var="cy"
							varStatus="status">
					<div class="6u$ 12u$(xsmall)">
						成员职位：<input name="cyzw" placeholder="成员职位" value ="${cy.getCyzw()}" type="textarea">
					</div>
					<div class="6u$ 12u$(xsmall)">
						成员名称：<input name="cymc" placeholder="成员名称" value ="${cy.getCymc()}" type="textarea">
					</div>
					</c:forEach>
				</div>
				<ul class="actions">
					<li><input class="alt" value="提交" type="submit"></li>
				</ul>
			</form>
			<script>
		layui.use("upload",function(){
		var upload = layui.upload;
		 var uploadInst = upload.render({
			    elem: '#test${object.getXmms().getXmid()}'
			    ,url: '/xuxiaonan/upload/imgs'
			    ,before: function(obj){
			      //预读本地文件示例，不支持ie8
			      obj.preview(function(index, file, result){
			        $('#demo${object.getXmms().getXmid()}').attr('src', result); //图片链接（base64）
			      });
			    }
			    ,done: function(res){
			      //上传成功
			    if (res.code == 0) {
					layer.msg("请上传！");
					$("#picName").val(res.fileName);
					$("#picAdress").val(res.filePath);
					$("#picType").val(res.fileType);
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
			</c:forEach>
		</section>
		<section>
			<h2>生活更新(updateSh)</h2>
			<c:forEach items="${sh}" var="object"
							varStatus="status">
			<form action="${pageContext.request.contextPath}/mform/updateSh" class="alt" method="POST">
				<div class="row">
							<img id ="shdemo${object.getId()}"  alt="picture" src="/xuxiaonan/uploadImages/${object.getPicid()}">
				<button type="button" class="layui-btn" id="shtest${object.getId()}">选择图片</button>
				<input id ="shpicN${object.getId()}" name ="pname" type ="hidden">
				<input id ="shpicI${object.getId()}" name ="pid" value = "${object.getPicid()}" type ="hidden">
				<input id ="shpicA${object.getId()}" name ="address" type ="hidden">
				<input id ="shpicT${object.getId()}" name ="type" type ="hidden">
				</div>
				<div class="row uniform">
					<input name ="id" value ="${object.getId()}" type="hidden">
					<div class="6u 12u$(xsmall)">
						名称：<input name="mc" placeholder="名称" value = "${object.getMc()}" type="textarea">
					</div>
					<div class="6u$ 12u$(xsmall)">
						作者：<input name="auth" placeholder="作者" value = "${object.getAuth()}" type="textarea">
					</div>
					<div class="6u$ 12u$(xsmall)">
						介绍：<input name="js" placeholder="介绍" value = "${object.getJs()}" type="textarea">
					</div>
				</div>
				<ul class="actions">
					<li><input class="alt" value="提交" type="submit"></li>
				</ul>
			</form>
			<script>
		layui.use("upload",function(){
		var upload = layui.upload;
		 var uploadInst = upload.render({
			    elem: '#shtest${object.getId()}'
			    ,url: '/xuxiaonan/upload/imgs'
			    ,before: function(obj){
			      //预读本地文件示例，不支持ie8
			      obj.preview(function(index, file, result){
			        $('#shdemo${object.getId()}').attr('src', result); //图片链接（base64）
			      });
			    }
			    ,done: function(res){
			      //上传成功
			    if (res.code == 0) {
					layer.msg("请上传！");
					$("#shpicN${object.getId()}").val(res.fileName);
					$("#shpicA${object.getId()}").val(res.filePath);
					$("#shpicT${object.getId()}").val(res.fileType);
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
			</c:forEach>
		</section>
		<section>
			<h2>生活点滴</h2>
			<form action="${pageContext.request.contextPath}/mform/insertSh" method ="post">
			<div class="row">
							<img id ="shdemo"  alt="picture" >
				<button type="button" class="layui-btn" id="shtest">选择图片</button>
				<input id ="picNAme" name ="pname" type ="hidden">
				<input id ="picID" name ="pid" type ="hidden">
				<input id ="picADress" name ="address" type ="hidden">
				<input id ="picTYpe" name ="type" type ="hidden">
			</div>
				<div class="row uniform">
					<div class="6u 12u$(xsmall)">
						<input name="mc" placeholder="名称"  type="textarea">
					</div>
					<div class="6u$ 12u$(xsmall)">
						<input name="auth" placeholder="作者" type="textarea">
					</div>
					<div class="6u$ 12u$(xsmall)">
						<input name="js" placeholder="介绍" type="textarea">
					</div>
				</div>
				<ul class="actions">
					<li><input class="alt" value="提交" type="submit"></li>
				</ul>
			</form>
			<script>
		layui.use("upload",function(){
		var upload = layui.upload;
		 var uploadInst = upload.render({
			    elem: '#shtest'
			    ,url: '/xuxiaonan/upload/images'
			    ,before: function(obj){
			      //预读本地文件示例，不支持ie8
			      obj.preview(function(index, file, result){
			        $('#shdemo').attr('src', result); //图片链接（base64）
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
		</section>
		<section>
			<h2>我的游戏</h2>
			<form action="${pageContext.request.contextPath}/mform/insertYx" method ="post">
			<div class="row">
							<img id ="yxdemo"  alt="picture" >
				<button type="button" class="layui-btn" id="yxtest">选择图片</button>
				<input id ="yxpicName" name ="pname" type ="hidden">
				<input id ="yxpicId" name ="pid" type ="hidden">
				<input id ="yxpicAdress" name ="address" type ="hidden">
				<input id ="yxpicType" name ="type" type ="hidden">
			</div>
				<div class="row uniform">
					<div class="6u 12u$(xsmall)">
						<input name="yxmc" placeholder="游戏名称"  type="textarea">
					</div>
					<div class="6u$ 12u$(xsmall)">
						<input name="yxkfs" placeholder="开发商" type="textarea">
					</div>
					<div class="6u$ 12u$(xsmall)">
						<input name="grgs" placeholder="评价" type="textarea">
					</div>
				</div>
				<ul class="actions">
					<li><input class="alt" value="提交" type="submit"></li>
				</ul>
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
					$("#yxpicId").val(res.fileId);
					$("#yxpicName").val(res.fileName);
					$("#yxpicAdress").val(res.filePath);
					$("#yxpicType").val(res.fileType);
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
		</section>
		<section>
			<h2>游戏更新(updateYx)</h2>
			<c:forEach items="${yx}" var="object"
							varStatus="status">
			<form action="${pageContext.request.contextPath}/mform/updateYx" class="alt" method="POST">
				<div class="row">
							<img id ="yxdemo${object.getId()}"  alt="picture" src="/xuxiaonan/uploadImages/${object.getPicid()}">
				<button type="button" class="layui-btn" id="yxtest${object.getId()}">选择图片</button>
				<input id ="yxpicN${object.getId()}" name ="pname" type ="hidden">
				<input id ="yxpicI${object.getId()}" name ="pid" value = "${object.getPicid()}" type ="hidden">
				<input id ="yxpicA${object.getId()}" name ="address" type ="hidden">
				<input id ="yxpicT${object.getId()}" name ="type" type ="hidden">
				</div>
				<div class="row uniform">
					<input name ="id" value ="${object.getId()}" type="hidden">
					<div class="6u 12u$(xsmall)">
						游戏名称：<input name="yxmc" placeholder="游戏名称" value = "${object.getYxmc()}" type="textarea">
					</div>
					<div class="6u$ 12u$(xsmall)">
						开发商：<input name="yxkfs" placeholder="游戏开发商" value = "${object.getYxkfs()}" type="textarea">
					</div>
					<div class="6u$ 12u$(xsmall)">
						评价：<input name="grgs" placeholder="评价" value = "${object.getGrgs()}" type="textarea">
					</div>
				</div>
				<ul class="actions">
					<li><input class="alt" value="提交" type="submit"></li>
				</ul>
			</form>
			<script>
		layui.use("upload",function(){
		var upload = layui.upload;
		 var uploadInst = upload.render({
			    elem: '#yxtest${object.getId()}'
			    ,url: '/xuxiaonan/upload/imgs'
			    ,before: function(obj){
			      //预读本地文件示例，不支持ie8
			      obj.preview(function(index, file, result){
			        $('#yxdemo${object.getId()}').attr('src', result); //图片链接（base64）
			      });
			    }
			    ,done: function(res){
			      //上传成功
			    if (res.code == 0) {
					layer.msg("请上传！");
					$("#yxpicN${object.getId()}").val(res.fileName);
					$("#yxpicA${object.getId()}").val(res.filePath);
					$("#yxpicT${object.getId()}").val(res.fileType);
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
			</c:forEach>
		</section>
		</div>
	</section>
</body>
</html>