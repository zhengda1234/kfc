<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<div class="header">
	<div class="container">
		<div class="header_top">
			<ul class="phone">
				<li class="phone_left"><i class="mobile"> </i><span>1-200-346-2986</span></li>
				<li class="phone_right"></li>
				<div class="clearfix"></div>
			</ul>
			<ul class="social">
				<!-- <li><a href=""> <i class="tw"> </i> </a></li>
				 <li><a href=""><i class="fb"> </i> </a></li>
				 <li><a href=""><i class="rss"> </i> </a></li>
				 <li><a href=""><i class="msg"> </i> </a></li>
				 <div class="clearfix"> </div> -->
			</ul>
			<ul class="account">
				<li><a href="person.action">我的账单</a></li>
			</ul>
			<ul class="shopping_cart">
				<a href="cart0.jsp"><li class="shop_left"><i class="cart">
					</i><span>商品${cart }件</span></li></a>
				<a href="#"><li class="shop_right"><span>共${price }元</span></li></a>
				<div class="clearfix"></div>
			</ul>
			<div class="clearfix"></div>
		</div>
		<div class="header_bottom">
			<div class="header_nav">
				<div class="logo">
					<a href="index.jsp"><img src="images/logo.png" alt="" /><br></a>
				</div>
				<nav class="navbar navbar-default menu" role="navigation">
					<h3 class="nav_right">
						<a href="index.html"><img src="images/logo.png"
							class="img-responsive" alt="" /></a>
					</h3>
					<div class="container-fluid">
						<!-- Brand and toggle get grouped for better mobile display -->
						<div class="navbar-header">
							<button type="button" class="navbar-toggle"
								data-toggle="collapse"
								data-target="#bs-example-navbar-collapse-1">
								<span class="sr-only">Toggle navigation</span> <span
									class="icon-bar"></span> <span class="icon-bar"></span> <span
									class="icon-bar"></span>
							</button>
						</div>
						<!-- Collect the nav links, forms, and other content for toggling -->
						<div class="collapse navbar-collapse"
							id="bs-example-navbar-collapse-1" style="margin-right: 100px;">
							<ul class="nav navbar-nav menu1">
								<li class="active"><a href="index.jsp">首页</a></li>
								<li><a href="fruits.jsp">浏览菜单</a></li>
								<li><a href="person.action">个人中心</a></li>
								<li><a href="phone.jsp">手机客户端</a></li>
								<li><a href="store.jsp">联系我们</a></li>
								<li><a href="help_new.jsp">帮助中心</a></li>
							</ul>
							<div
								style="margin-top: -6%; margin-right: -15%; float: right; color: #FFFFFF; font-family: 宋体;">
								当前系统时间为：<span id="time"></span>
							</div>
							<div style="margin-top: -14%; margin-right: 13%; float: right;">
								<ul>

									<c:choose>
										<c:when test="${user!=null}">
											<li class="login_top"><i class="sign"> </i><span
												style="color: #00FF00; font-size: 12; font-family: 宋体;">您好，${user.userName}</span></li>
											<a href="loginServlet?method=quit"><li
												class="login_bottom"><i class="register"> </i><span
													style="color: #00FF00; font-size: 12; font-family: 宋体;">退出登录</span></li></a>
										</c:when>
										<c:otherwise>
											<li class="login_top"><i class="sign"> </i><span
												style="color: #00FF00; font-size: 12; font-family: 宋体; margin-right: 120px;">未登录</span></li>
										</c:otherwise>
									</c:choose>
								</ul>
							</div>
							<ul class="login">
								<c:choose>
									<c:when test="${user!=null}">

										<a href="register.jsp"><li class="login_bottom"><i
												class="register"> </i><span>注册</span></li></a>
									</c:when>
									<c:otherwise>
										<a href="account.jsp"><li class="login_top"><i
												class="sign"> </i><span>登录</span></li></a>
										<a href="register.jsp"><li class="login_bottom"><i
												class="register"> </i><span>注册</span></li></a>
									</c:otherwise>
								</c:choose>

							</ul>
							<div class="clearfix"></div>
						</div>
						<!-- /.navbar-collapse -->
					</div>
					<!-- /.container-fluid -->
				</nav>
				<div class="clearfix"></div>
			</div>
			<div class="search">
				<form action="ss.action" method="post">
					<input type="text" class="text" name="meal.mealName"
						placeholder="请输入你想搜索的内容" onfocus="this.value = '';"
						onblur="if (this.value == '') {this.value = 'Enter Product Details';}" />
					<input type="submit" value="搜索" />
				</form>
			</div>
			<a href="Admin/login.jsp" style="color: green; font-size: 15px;">后台登录入口</a>

		</div>
	</div>
</div>