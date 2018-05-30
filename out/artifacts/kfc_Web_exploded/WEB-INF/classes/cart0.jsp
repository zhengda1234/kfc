﻿<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<script type="text/javascript">
	//定时器
	//var mytimeout;

	function showTime() {
		var today = new Date();

		var year = today.getFullYear();
		var month = today.getMonth() + 1;
		var date = today.getDate();

		var hour = today.getHours();
		var minute = today.getMinutes();
		var seconds = today.getSeconds();

		if (month < 10) {
			month = "0" + month;
		}
		if (date < 10) {
			date = "0" + date;
		}
		if (hour < 10) {
			hour = "0" + hour;
		}
		if (minute < 10) {
			minute = "0" + minute;
		}
		if (seconds < 10) {
			seconds = "0" + seconds;
		}

		var str = year + "-" + month + "-" + date + " " + hour + ":" + minute
				+ ":" + seconds;

		document.getElementById("time").innerHTML = str;

		window.setTimeout("showTime()", 1000);
	}
	function checkForm() {
	if(document.myform.userName.value.length<6||document.myform.userName.value.length>12)
	   {
	     alert("用户名长度6-12位。");
	     document.myform.userName.focus();
	     document.myform.userName.select();
	     return false;
	   }
	}
</script>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Register</title>
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="js/jquery.min.js"></script>
<!-- Custom Theme files -->
<link href="css/style.css" rel='stylesheet' type='text/css' />
<!-- Custom Theme files -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
</script>
<!----webfonts---->
<link href='http://fonts.googleapis.com/css?family=Exo+2:100,200,300,400,500,600,700,800,900' rel='stylesheet' type='text/css'>
</head>
<body onLoad="showTime()">
	<div class="header">
		<div class="container">
		  <div class="header_top">
			<ul class="phone">
				<!-- <li class="phone_left"><i class="mobile"> </i><span>1-200-346-2986</span></li>
				<li class="phone_right">Free Ground Shipping for Products over $100</li> -->
				<div class="clearfix"></div>
			</ul>
			<ul class="social">
				<!--  <li><a href=""> <i class="tw"> </i> </a></li>
				 <li><a href=""><i class="fb"> </i> </a></li>
				 <li><a href=""><i class="rss"> </i> </a></li>
				 <li><a href=""><i class="msg"> </i> </a></li>
				 <div class="clearfix"> </div> -->
			</ul>
			<ul class="account">
				<li><a href="person.action">我的账单</a></li>
			</ul>
			<ul class="shopping_cart">
			   <a href="cart0.jsp"><li class="shop_left"><i class="cart"> </i><span>商品${cart }件</span></li></a>
			   <a href="#"><li class="shop_right"><span>共${price }元</span></li></a>
			   <div class="clearfix"> </div>
			</ul>
			<div class="clearfix"></div>
		</div>
		<div class="header_bottom">
		  <div class="header_nav">
      		<div class="logo">
				<a href="index.jsp"><img src="images/logo.png" alt=""  /><br></a>
			 </div>
			 <nav class="navbar navbar-default menu" role="navigation"><h3 class="nav_right"><a href="index.html"><img src="images/logo.png" class="img-responsive" alt=""/></a></h3>
			  <div class="container-fluid">
			    <!-- Brand and toggle get grouped for better mobile display -->
			    <div class="navbar-header">
			      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
			        <span class="sr-only">Toggle navigation</span>
			        <span class="icon-bar"></span>
			        <span class="icon-bar"></span>
			        <span class="icon-bar"></span>
			      </button>
			    </div>
				<!-- Collect the nav links, forms, and other content for toggling -->
			    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1"style="margin-right:100px;">
			      <ul class="nav navbar-nav menu1">
			      	<li class="active"><a href="index.jsp">首页</a></li>
			        <li><a href="fruits.jsp">浏览菜单</a></li>
			        <li><a href="person.action">个人中心</a></li>
			        <li><a href="phone.jsp">手机客户端</a></li>
					<li><a href="store.jsp">联系我们</a></li>
			        <li><a href="help_new.jsp">帮助中心</a></li>
		          </ul>
		          <div style="margin-top:-6%;margin-right:-15%;float:right;color:#FFFFFF;font-family:宋体;">	当前系统时间为：<span id="time"></span>
		          </div>
		          <div style="margin-top:-14%;margin-right:12%;float:right;"> 
				  <ul >
				
                <c:choose>  
                <c:when test="${user!=null}">
                    <li class="login_top"><i class="sign"> </i><span style=" color:#00FF00;font-size:12 ;font-family:宋体;">您好，${user.userName}</span></li>
		            <a href="loginServlet?method=quit"><li class="login_bottom"><i class="register"> </i><span style="color:#00FF00;font-size:12 ;font-family:宋体;">退出登录</span></li></a>
		         </c:when>  
		          <c:otherwise> 
		           <li class="login_top"><i class="sign"> </i><span style=" color:#00FF00;font-size:12 ;font-family:宋体;">未登录</span></li>
                 </c:otherwise>  
                 </c:choose>
		         </ul>
		         </div>
		          <ul class="login">
		             <c:choose>  
		           <c:when test="${user!=null}">
		          
		            <a href="register.jsp"><li class="login_bottom"><i class="register"> </i><span>注册</span></li></a>
		          </c:when> 
		           <c:otherwise> 
		         <a href="account.jsp"><li class="login_top"><i class="sign"> </i><span>登录</span></li></a>
		            <a href="register.jsp"><li class="login_bottom"><i class="register"> </i><span>注册</span></li></a>
                 </c:otherwise>  
                 </c:choose>
		           
		          </ul>
			       <div class="clearfix"></div>
			      </div><!-- /.navbar-collapse -->
			  </div><!-- /.container-fluid -->
			</nav>
            <div class="clearfix"></div>
           </div>
            <div class="search">
			 <form action="ss.action" method="post">
						<input type="text" class="text" name="meal.mealName" placeholder="请输入你想搜索的内容" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Enter Product Details';}"/>
			  <input type="submit" value="搜索"/>
						</form>
			</div>
		 </div>  
		</div>
	</div>
    <div class="main">
		<div class="container">
		  <div class="Product_top">
		  	  
<ul class="phone">
				<li class="phone_left"><i class="mobile"> </i><span style="color: red;font-size: 40px;">购物车  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;支付总额:${price }元 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="deleteall.action">删除所有商品</a></span></li>
				
			</ul>
<table border="1" width="100%" cellpadding="0" bordercolor="#CB082C" cellspacing="0" align="center" style="color: #932CE5;">
		<tr>
			<th></th>
			<th>商品名</th>
			<th>商品介绍</th>
			<th>商品价格</th>
			<th>操作</th>
			
			
		</tr>
		<c:forEach var="o" items="${orders}">
			<tr>
				<td><img src="${o.images_path}" class="img-responsive" alt="22"/></td>
				<td>${o.mealName}</td>
				<td>${o.mealIntroduce}</td>
				<td>${o.mealPrice}</td>
				<td><a href="delete.action?meal.id=${o.id}">删除此商品</a></td>
				
			</tr>
		</c:forEach>
	</table>
	<ul class="shopping_cart" style="height: 30px;width: 120px;">
			   <a href="submit.jsp"><li class="shop_left"><i class="cart"> </i><span>提交订单</span></li></a>
			  
			   <div class="clearfix"> </div>
				  <div class="clearfix"> </div>
					<div class="register-but">
					   <form>
						
						 <div class="clearfix"> </div>
						</form>
					</div>
					</table>
			</div>
	  </div>
	</div>
<jsp:include page="./common/footer.jsp" />
<div style="display:none"><script src='http://v7.cnzz.com/stat.php?id=155540&web_id=155540' language='JavaScript' charset='gb2312'></script></div>
</body>
</html>
