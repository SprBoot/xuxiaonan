<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>登录界面</title>

    <!-- Bootstrap core CSS -->
    <link href="../pageResources/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="../pageResources/css/dinggc.css" rel="stylesheet">
    <script type="text/javascript" src="../pageResources/js/jquery-3.3.1.min.js"></script>
    <style type="text/css">
    	html,
body {
  height: 100%;
}
body {
  display: -ms-flexbox;
  display: flex;
  -ms-flex-align: center;
  align-items: center;
  padding-top: 40px;
  padding-bottom: 40px;
  background-color: #f5f5f5;
}

.form-signin {
  width: 100%;
  max-width: 330px;
  padding: 15px;
  margin: auto;
}
.form-signin .checkbox {
  font-weight: 400;
}
.form-signin .form-control {
  position: relative;
  box-sizing: border-box;
  height: auto;
  padding: 10px;
  font-size: 16px;
}
.form-signin .form-control:focus {
  z-index: 2;
}
.form-signin input[type="email"] {
  margin-bottom: -1px;
  border-bottom-right-radius: 0;
  border-bottom-left-radius: 0;
}
.form-signin input[type="password"] {
  margin-bottom: 10px;
  border-top-left-radius: 0;
  border-top-right-radius: 0;
}
    </style>
  </head>

  <body class="text-center">
  	<input id="infoback" value="${winfo}" type="hidden"/>
    <form class="form-signin" action="${pageContext.request.contextPath}/user/login" method="POST">
      <h1 class="h3 mb-3 font-weight-normal">登录</h1>
      <label for="inputEmail" class="sr-only">Username</label>
      <input type="username" id="iusername" class="form-control" placeholder="Username" name ="username" onblur="check();" required autofocus>
      <label for="inputPassword" class="sr-only">Password</label>
      <input type="password" id="ipassword" class="form-control" placeholder="Password" name="password" required>
      <button class="btn btn-lg btn-primary btn-block" type="submit">Sign in</button>
      <p class="mt-5 mb-3 text-muted">&copy; 2017-2018</p>
    </form>
  </body>
  <script>
	function check(){
			   if($("#iusername").val()!=null&&$("#iusername").val()!=""){
				   var name = $("#iusername").val();
				   var patrn=/[`~!@#$%^&*()_+<>?:"{},.\/;'[\]]/im;
				   var myReg = /^[a-zA-Z0-9_]{0,}$/;  
				if(patrn.test(name)||!myReg.test(name)){
					alert("提示信息：用户名不得含有非法字符和中文！");
					$("#iusername").val("");
				}
			  }
	}
	function info(){
		var info = $("#infoback").val();
		if(info=="userisnotexist"){
			alert("用户不存在");
		}else if(info=="oneiswrong"){
			alert("用户名或密码错误");
		}else if(info=="success"){
		}else{
			alert("未知错误");
		}
	}
	$(document).ready(function(){
		info();
	});
</script>
</html>