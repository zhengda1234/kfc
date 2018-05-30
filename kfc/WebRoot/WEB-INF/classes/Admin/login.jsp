
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<%-- <base href="<%=basePath%>"> --%>
<meta charset="utf-8">
<title>后台登录界面</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">

<!-- CSS -->
<link rel="stylesheet" href="assets/css/reset.css">
<link rel="stylesheet" href="assets/css/supersized.css">
<link rel="stylesheet" href="assets/css/style.css">

</head>
<body>

	<div class="page-container">
	
		<a href="login.jsp"><img src="assets/img/logo1.png">
		</a>
		<form action="loginadm.action" method="post">

			<input type="text" name="user.userName" class="username"
				placeholder="请输入您的用户名！"> <input type="password"
				name="user.userPassword" class="password" placeholder="请输入您的用户密码！"> <!-- <input
				type="Captcha" class="Captcha" name="Captcha" placeholder="请输入验证码！">
			<input type="img" class="identify" name="identify_code" value=""> -->
			</td>

			<button type="submit" class="submit_button">登录</button>
			</td>

			<div class="error">
				<span>+</span>
			</div>

		</form>
		<div class="connect">
		
		</div>
	</div>

	<!-- Javascript -->
	<script src="assets/js/jquery-1.8.2.min.js"></script>
	<script src="assets/js/supersized.3.2.7.min.js"></script>
	<script src="assets/js/supersized-init.js"></script>
	<script src="assets/js/scripts.js"></script>

</body>
<div style="text-align:center;"></div>
</html>
