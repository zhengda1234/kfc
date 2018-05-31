<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
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
</script>
<head>
    <title>Fruits</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="css/bootstrap.css" rel='stylesheet' type='text/css'/>
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="js/jquery.min.js"></script>
    <!-- Custom Theme files -->
    <link href="css/style.css" rel='stylesheet' type='text/css'/>
    <!-- Custom Theme files -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script type="application/x-javascript"> addEventListener("load", function () {
        setTimeout(hideURLbar, 0);
    }, false);

    function hideURLbar() {
        window.scrollTo(0, 1);
    } </script>
    <!----webfonts---->
    <link href='http://fonts.googleapis.com/css?family=Exo+2:100,200,300,400,500,600,700,800,900' rel='stylesheet'
          type='text/css'>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link rel="stylesheet" type="text/css" href="css/help.css"/>
    <link rel="stylesheet" type="text/css" href="css/jquery-ui.css"/>
    <link rel="stylesheet" type="text/css" href="css/style2.css"/>
    <title>肯德基宅急送官方网站-www.4008823823--订餐官网</title>
    <script type="text/javascript" src="js/jquery-1.8.3.js"></script>
    <script type="text/javascript" src="js/jquery.ui.yumdialog.js"></script>
    <script type="text/javascript" src="js/base.js"></script>
    <script type="text/javascript">
        $(function () {
            $("a").bind("focus", function () {
                if (this.blur) {
                    this.blur()
                }
                ;
            });
        });

        function addfavo() {
            var url = 'http://www.4008823823.com.cn/';
            var title = "肯德基宅急送";
            try {
                window.external.AddToFavoritesBar(url, title); //IE7、IE8、IE9
            } catch (e) {
                try {
                    window.external.addFavorite(url, title); //IE6
                } catch (e) {
                    try {
                        window.sidebar.addPanel(title, url, title); //FireFox
                    } catch (e) {
                        // Chrome
                        base.yumAlert("请使用浏览器的添加收藏夹功能收藏本网站!");
                    }
                }
            }
        }
    </script>
</head>
<body onLoad="showTime()">
<div class="header">
    <div class="container">
        <div class="header_top">
            <ul class="phone">
                <li class="phone_left"><i class="mobile"> </i><span>1-200-346-2986</span></li>
                <li class="phone_right">Free Ground Shipping for Products over $100</li>
                <div class="clearfix"></div>
            </ul>
            <ul class="social">
                <li><a href=""> <i class="tw"> </i> </a></li>
                <li><a href=""><i class="fb"> </i> </a></li>
                <li><a href=""><i class="rss"> </i> </a></li>
                <li><a href=""><i class="msg"> </i> </a></li>
                <div class="clearfix"></div>
            </ul>
            <ul class="account">
                <li><a href="person.action">我的账单</a></li>
            </ul>
            <ul class="shopping_cart">
                <a href="cart0.jsp">
                    <li class="shop_left"><i class="cart"> </i><span>商品${cart }件</span></li>
                </a>
                <a href="#">
                    <li class="shop_right"><span>共${price }元</span></li>
                </a>
                <div class="clearfix"></div>
            </ul>
            <div class="clearfix"></div>
        </div>
        <div class="header_bottom">
            <div class="header_nav">
                <div class="logo">
                    <a href="index.jsp"><img src="images/logo.png" alt=""/><br></a>
                </div>
                <nav class="navbar navbar-default menu" role="navigation"><h3 class="nav_right"><a
                        href="index.html"><img src="images/logo.png" class="img-responsive" alt=""/></a></h3>
                    <div class="container-fluid">
                        <!-- Brand and toggle get grouped for better mobile display -->
                        <div class="navbar-header">
                            <button type="button" class="navbar-toggle" data-toggle="collapse"
                                    data-target="#bs-example-navbar-collapse-1">
                                <span class="sr-only">Toggle navigation</span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                            </button>
                        </div>
                        <!-- Collect the nav links, forms, and other content for toggling -->
                        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1"
                             style="margin-right:100px;">
                            <ul class="nav navbar-nav menu1">
                                <li class="active"><a href="index.jsp">首页</a></li>
                                <li><a href="fruits.jsp">浏览菜单</a></li>
                                <li><a href="person.action">个人中心</a></li>
                                <li><a href="phone.jsp">手机客户端</a></li>
                                <li><a href="store.jsp">联系我们</a></li>
                                <li><a href="help_new.jsp">帮助中心</a></li>
                            </ul>
                            <div style="margin-top:-6%;margin-right:-3%;float:right;color:#FFFFFF;font-family:宋体;">
                                当前系统时间为：<span id="time"></span>
                            </div>
                            <div style="margin-top:-25%;margin-right:10%;float:right;">
                                <ul>

                                    <c:choose>
                                        <c:when test="${user!=null}">
                                            <li class="login_top"><i class="sign"> </i><span
                                                    style=" color:#00FF00;font-size:12 ;font-family:宋体;">您好，${user.userName}</span>
                                            </li>
                                            &nbsp;<a href="loginServlet?method=quit"><li class="login_bottom"><i class="register"> </i><span style="color:#00FF00;font-size:12 ;font-family:宋体;">退出登录</span></li></a>
                                        </c:when>
                                        <c:otherwise>
                                            <li class="login_top"><i class="sign"> </i><span
                                                    style=" color:#00FF00;font-size:12 ;font-family:宋体;">未登录</span></li>
                                        </c:otherwise>
                                    </c:choose>
                                </ul>
                            </div>
                            <ul class="login">
                                <c:choose>
                                    <c:when test="${user!=null}">

                                        <a href="register.jsp">
                                            <li class="login_bottom"><i class="register"> </i><span>注册</span></li>
                                        </a>
                                    </c:when>
                                    <c:otherwise>
                                        <a href="account.jsp">
                                            <li class="login_top"><i class="sign"> </i><span>登录</span></li>
                                        </a>
                                        <a href="register.jsp">
                                            <li class="login_bottom"><i class="register"> </i><span>注册</span></li>
                                        </a>
                                    </c:otherwise>
                                </c:choose>

                            </ul>
                            <div class="clearfix"></div>
                        </div><!-- /.navbar-collapse -->
                    </div><!-- /.container-fluid -->
                </nav>
                <div class="clearfix"></div>
            </div>
            <!--  <div class="search">
               <input type="text" class="text" value=""   placeholder="请输入你想搜索的内容" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Enter Product Details';}">
               <input type="submit" value="搜索">
             </div> -->
        </div>
    </div>
</div>
<div id="wrapper_help" style="height:2200px">
    <div class="help_box">
        <!--内容开始-->
        <div class="main_box_order">
            <!--帮助菜单开始-->
            <div class="help_menu">
                <ul>
                    <li><a href="help_new.jsp">新手入门</a></li>
                    <li><a href="help_qa.jsp" class="on">常见问题</a></li>
                    <li><a href="help_pay.jsp">支付方式</a></li>
                </ul>
            </div>
            <!--帮助菜单结束/-->
            <div class="help_con">

                <!--常见问题区域开始/-->
                <!-- 	<div class="help_qa">
                        <span class="qa_bg01"><a href="javascript:void(0);" class="on" id="abox01">现在有什么优惠活动</a></span>
                        <span class="qa_bg02"><a href="javascript:void(0);" id="abox02">优惠代码哪里输</a></span>
                        <span class="qa_bg03"><a href="javascript:void(0);" id="abox03">怎么输送餐地址</a></span>
                        <span class="qa_bg04"><a href="javascript:void(0);" id="abox04">不在送餐范围内</a></span>
                        <span class="qa_bg05"><a href="javascript:void(0);" id="abox05">设置/忘记密码</a></span>
                        <span class="qa_bg06"><a href="javascript:void(0);" id="abox06">忘了登陆邮箱？</a></span>

                        <span class="qa_bg07"><a href="javascript:void(0);" id="abox07">送餐时间/预约送餐</a></span>
                        <span class="qa_bg08"><a href="javascript:void(0);" id="abox08">如何点餐</a></span>
                        <span class="qa_bg09"><a href="javascript:void(0);" id="abox09">订单提交成功了吗？</a></span>
                        <span class="qa_bg10"><a href="javascript:void(0);" id="abox10">查询我的订单</a></span>
                        <span class="qa_bg11"><a href="javascript:void(0);" id="abox11">订餐送出来了吗？</a></span>
                        <span class="qa_bg12"><a href="javascript:void(0);" id="abox12">修改/取消订餐</a></span>

                        <span class="qa_bg13"><a href="javascript:void(0);" id="abox13">网上支付不成功？</a></span>
                        <span class="qa_bg14"><a href="javascript:void(0);" id="abox14">网上支付退款进程</a></span>
                        <span class="qa_bg15"><a href="javascript:void(0);" id="abox15">网页出错/无法打开？</a></span>
                        <span class="qa_bg16"><a href="javascript:void(0);" id="abox16">手机验证码</a></span>
                        <span class="qa_bg17"><a href="javascript:void(0);" id="abox17">产品/价格查询</a></span>
                        <span class="qa_bg18"><a href="javascript:void(0);" id="abox18">其他</a></span>

                    </div> -->
                <!--常见问题区域结束/-->


                <div class="help_qacon">
                    <div id="qabox01">
                        <div class="til_icon_on til_icon">* 现在有什么优惠活动？</div>
                        <div class="content">
                            <p>您可以通过以下方式查看：</p>
                            <p>● 在首页查看当前网上订餐的"新品/优惠"、"非常关注"信息；</p>
                            <p>●
                                在您完成网上订餐前，根据您的点餐内容和金额，我们将自动列出符合条件的优惠项目，供您选择，您可添加优惠项目或放弃。订餐的总金额将根据您最后确认的订餐内容和优惠项目重新计算。提醒您注意的是：</p>
                            <p><span>■ 如果您增加、减少或删除了点餐内容或数量，优惠项目将相应调整或取消；</span></p>
                            <p><span>■ 所有印刷版和电子版的肯德基和肯德基宅急送优惠券均不可在网上订餐使用；</span></p>
                            <p><span>■ 所有随餐附赠的优惠券，均不可在当次点餐时使用；</span></p>
                            <p><span>■ 根据您的送餐地址，您可以享受的优惠项目可能存在差异，请以我们网上列出的优惠项目为准。</span></p>
                        </div>
                    </div>

                    <div id="qabox02">
                        <div class="til_icon_on til_icon">* 如何使用网上订餐的优惠代码？在哪里输入？</div>
                        <div class="content">
                            <p>
                                肯德基宅急送会不定期举办网上订餐的促销或互动活动，如果参与活动或者获奖的话，就有机会得到网上订餐优惠代码。您可先根据页面提示进行网上订餐，在"确认订餐内容"页面，有一个醒目的"使用优惠代码"区域，您可以在此输入或者直接点选您参加活动得到的优惠代码，点击"使用"即可。 </p>
                        </div>
                        <div class="til_icon_on til_icon">* 为什么我手里的优惠券（印刷版或电子优惠券打印/复印版）在网上无法使用？</div>
                        <div class="content">
                            <p>很抱歉，您可以选择网上订餐的优惠项目，但所有肯德基和肯德基宅急送印刷版或电子优惠券打印/复印版均不适用网上订餐。</p>
                        </div>
                    </div>

                    <div id="qabox03">
                        <div class="til_icon_on til_icon">* 如何输入正确的送餐地址？</div>
                        <div class="content">
                            <p>请按如下介绍输入您的送餐地址：</p>
                            <p>● 送餐城市：您可以在空白框内输入送餐城市的中文或汉语拼音首字母，然后在下拉框中找到该城市名。如未找到，则表示该城市目前还无法提供网上订餐服务。</p>
                            <p>● 路名/小区名：请在空白框内输入您送餐地址路名或小区名中的关键字（如：东方路、中华小区、
                                解放一村等），然后点击"查询"按钮，在下拉框中自动列出的区域直接点选确认。如未找到，则表示该区域目前还无法提供网上订餐服务。</p>
                            <p>● 请继续填全：请在空白框内继续将您的详细送餐地址填全（如：10弄1号101室等）。请注意：如此处与路名/小区名填写内容有矛盾，则视为无效订单。</p>
                        </div>
                        <div class="til_icon_on til_icon">* 我的送餐地址是否可以输入英文/繁体中文/拼音？</div>
                        <div class="content">
                            <p>很抱歉，我们只接受简体中文输入。</p>
                        </div>
                    </div>

                    <div id="qabox04">
                        <div class="til_icon_on til_icon">* 为什么我的送餐地址不在你们的送餐范围内？</div>
                        <div class="content">
                            <p>可能有以下原因：</p>
                            <p>● 您的送餐地址确实超出我们的送餐范围，造成无法送餐；</p>
                            <p>● 送餐地址输入有误，建议您：</p>
                            <p><span>■ 尝试缩短或更改路名/小区名的关键字进行查询（例：将"虹桥路2号"改为"虹桥"）</span></p>
                            <p><span>■ 检查您输入的地址是否有以下错误：输入地址不全、输入内容里含空格、错别字等</span></p>
                            <p><span>■ 我们的送餐范围有所变更，导致您的送餐地址确实超出我们的送餐范围，造成无法送餐；您可致电4008-823-823人工核查您的送餐地址是否在送餐范围内。</span>
                            </p>
                        </div>
                        <div class="til_icon_on til_icon">* 我以前电话订餐过，我家的地址你们送过，为什么网站却显示说超出送餐范围呢？</div>
                        <div class="content">
                            <p>可能有以下原因：</p>
                            <p>● 送餐地址输入有误，建议检查是否有以下错误：输入地址不全、输入内容里含空格、错别字等；</p>
                            <p>● 我们的送餐范围有所变更，导致您的送餐地址确实超出我们的送餐范围，造成无法送餐；您可致电4008-823-823人工核查您的送餐地址是否在送餐范围内。</p>
                        </div>
                        <div class="til_icon_on til_icon">* 我只超过你们外送范围一条马路，为什么不送？</div>
                        <div class="content">
                            <p>很抱歉，为了保证食物质量，我们有严格的外送范围规定，如果您的送餐地址超出了我们的外送范围，我们将无法提供肯德基宅急送服务。敬请谅解。</p>
                        </div>
                    </div>

                    <div id="qabox05">
                        <div class="til_icon_on til_icon">* 怎么设置密码？</div>
                        <div class="content">
                            <p>点击"我要订餐"，在页面输入使用过的电子邮箱或手机，找到您的顾客信息，然后点击"设置密码"后，根据提示进行设置。</p>
                        </div>
                        <div class="til_icon_on til_icon">* 我忘了密码怎么办？</div>
                        <div class="content">
                            <p>点击"我要订餐"，在页面输入使用过的电子邮箱，然后点击"忘记密码"后，根据提示进行设置。</p>
                        </div>
                    </div>

                    <div id="qabox06">
                        <div class="til_icon_on til_icon">* 我忘了登录邮箱怎么办？</div>
                        <div class="content">
                            <p>请输入您上次订餐时填写的手机号码，系统会显示您上次订餐时的顾客信息（如您未设置密码，顾客信息会被部分隐藏），其中含有登录邮箱，或者您可重新申请一个电子邮箱进行订餐。 </p>
                        </div>
                    </div>

                    <div id="qabox07">
                        <div class="til_icon_on til_icon">* 送餐时间怎么选？能预订吗？</div>
                        <div class="content">
                            <p>在网上订餐服务时间内，当您输入或确认本次送餐地址后，系统将根据当前该区域的订单状况，
                                显示预估的最快送达时间（如30分钟），请以此为准；您也可预约当日稍晚时间送餐。如需隔日或提前多日预约订餐，请致电4008- 823- 823寻求帮助。</p>
                        </div>
                    </div>

                    <div id="qabox08">
                        <div class="til_icon_on til_icon">* 如何点餐</div>
                        <div class="content">
                            <p>请点击"新手入门"查看订餐步骤。</p>
                        </div>
                    </div>

                    <div id="qabox09">
                        <div class="til_icon_on til_icon">* 我如何确定网上订餐的订单已经提交成功？</div>
                        <div class="content">
                            <p>在您提交订单后，页面上会第一时间显示成功提交的信息。此外，只有成功提交的订单，您才能在"查询订单"中看到本次订餐的所有信息和送餐进程。</p>
                        </div>
                    </div>

                    <div id="qabox10">
                        <div class="til_icon_on til_icon">* 如何查询我的订单？</div>
                        <div class="content">
                            <p>
                                您可以在"查询订单"中看到本次订餐的所有信息和送餐进程，需要提醒的是，由于订单数量众多，我们只能为您保留当天的订单查询。（注：有发生网上支付退款的订单将被保留一个月，以备查询） </p>
                        </div>
                    </div>

                    <!-- <div id="qabox11">
                        <div class="til_icon_on til_icon">* 我订的餐什么时候能送过来？</div>
                        <div class="content">
                            <p>我们承诺的最快送达时间，一般为您成功提交网上订单后起加30分钟左右（在提交订单前，系统将与您确认送餐时间），如遇恶劣天气，交通拥堵或送餐高峰，送餐时间略有增加，敬请谅解。</p>
                        </div>
                        <div class="til_icon_on til_icon">* 我想知道我的订餐送出来了吗？</div>
                        <div class="content">
                            <p>您可以在"查询订单"中查询本次订餐的所有信息和送餐进程。如果超出我们的预估外送时间，您还没有收到餐点，请致电4008-823-823查询。</p>
                        </div>
                    </div>

                    <div id="qabox12">
                        <div class="til_icon_on til_icon">* 我想修改/取消我的订餐内容怎么办？</div>
                        <div class="content">
                            <p>在您提交订单前, 您可以随时选择"继续点餐"返回菜单修改订餐内容，或直接放弃订餐；</p>
                            <p>在您成功提交订单后，您的订单会立即下到我们的餐厅开始制作食品，因此<font class="red">我们将无法接受修改或取消订单。</font>敬请配合和谅解。 </p>
                        </div>
                    </div>

                    <div id="qabox13">
                        <div class="til_icon_on til_icon">* 我在网上订餐，可以用信用卡支付吗？</div>
                        <div class="content">
                            <p>目前信用卡支付仅限网上支付，您可以选择网上支付后，在列出的银行信用卡中选择其一进行支付。</p>
                        </div>
                        <div class="til_icon_on til_icon">* 为什么我网上支付不成功呢？</div>
                        <div class="content">
                            <p>可能有以下原因导致您未能网上支付成功：</p>
                            <p>1）支付银行卡并未开通网上支付功能；</p>
                            <p>2）输入的银行卡帐号和密码不正确；</p>
                            <p>3）支付银行卡上的金额不足以支付货款；</p>
                            <p>4）支付过程中可能因为网速过慢、网络掉线、或在访问受限制的局域网内等网络通信故障，导致支付中断或失败；</p>
                            <p>5）电脑没有接入INTERNET或其访问区域受限；</p>
                            <p>6）浏览器版本过低，密码位数不足，浏览器参数设置不正确等；</p>
                            <p>7）当选择完银行卡进入银行时，系统提示："订单重复错误"。该设置是为防止网上的一些不正规的行为导致银行结算的发生。</p>
                        </div>
                    </div> -->

                    <!-- <div id="qabox14">
                        <div class="til_icon_on til_icon">* 我使用了网上支付成功订了餐，但是因为某些原因订单发生了变化，原来的支付怎么办？</div>
                        <div class="content">
                            <p>如果您选择了网上支付且付款成功，但随后通过电话修改了您的订餐内容，如果新订单金额与原订单金额不一致，您需要首先全额现金支付修改订单的订餐金额，然后通过各银行或支付宝的退款流程，我们会尽快把原订单的全款退还到您。根据各银行和支付宝的不同规定，退款期通常不超过一个月。如果新订单金额与原订单金额一致，原网上支付仍然有效。</p>
                        </div>
                        <div class="til_icon_on til_icon">* 网上支付的退款怎么还没收到？</div>
                        <div class="content">
                            <p>请以各个银行和支付宝的相关规定为准，网上支付的退款期可能各有不同，通常不超过一个月。</p>
                        </div>
                        <div class="til_icon_on til_icon">* 如何查看网上支付的退款进程？</div>
                        <div class="content">
                            <p>您可以在"查询订单"中找到该订单，并点击"退款查询"查看退款进程，假如订单修改或取消，将无法查询到订单详情。如超过一个月未收到退款，请致电4008-823-823寻求帮助。</p>
                        </div>
                    </div>

                    <div id="qabox15">
                        <div class="til_icon_on til_icon">* 为什么我打不开你们的网页或看到网页出错？</div>
                        <div class="content">
                            <p>很抱歉，可能由于系统繁忙、网速过慢、网络掉线、或在访问受限制的局域网内等网络通信故障，导致您暂时无法通过网站订餐，您可以尝试稍后再次访问，或致电4008-823-823电话订餐，敬请谅解。</p>
                        </div>
                    </div>

                    <div id="qabox16">
                        <div class="til_icon_on til_icon">* 我怎么收不到手机验证码？</div>
                        <div class="content">
                            <p>如您超过一分钟未收到验证码短信，请点击"重新获取"。</p>
                        </div>
                        <div class="til_icon_on til_icon">* 手机验证码是什么？</div>
                        <div class="content">
                            <p>在使用本网站服务或享受优惠活动时，我们可能需要验证您的身份真实有效，所以会发送一组数字和字母的组合码至您的手机，请按指示在网页正确输入验证码即可。手机验证码大小写不限，验证码30分钟内有效。</p>
                        </div>
                    </div>

                    <div id="qabox17">
                        <div class="til_icon_on til_icon">* 我想了解产品的信息怎么办？</div>
                        <div class="content">
                            <p>您可点击产品图片，即可看到详细的产品介绍。</p>
                        </div>
                        <div class="til_icon_on til_icon">* 为什么有些在肯德基门店堂食可以买到的食物，网上订餐却不能订购？</div>
                        <div class="content">
                            <p>为保证产品质量，部分肯德基餐厅售卖的产品我们暂时无法提供外送服务，敬请谅解。</p>
                        </div>
                    </div>

                    <div id="qabox18">
                        <div class="til_icon_on til_icon">* 肯德基宅急送网上订餐的服务时间是怎样的？</div>
                        <div class="content">
                            <p>我们的网上订餐服务时间为10:00-22:00 ，部分地区提供24小时送餐服务；在输入送餐地址后，以页面显示为准。</p>
                        </div>
                        <div class="til_icon_on til_icon">* 网上订餐收取外送费吗？</div>
                        <div class="content">
                            <p>和电话订餐一样，只要您的送餐地址在外送服务范围内，不限消费金额和外送距离，每单均收取统一外送费。</p>
                        </div>
                        <div class="til_icon_on til_icon">* 为什么我在网上订餐后，你们还要打电话来确认？</div>
                        <div class="content">
                            <p>如果您的订餐金额较大，我们可能会致电给您再次确认点餐内容和送餐时间，敬请谅解。</p>
                        </div>
                        <div class="til_icon_on til_icon">* 我在公司订了餐，但临时有事外出，想请同事帮我代收餐点，怎么做？</div>
                        <div class="content">
                            <p>您可以在"其他联系人及电话"两栏中填写您同事的姓名和联系电话，如果在约定送餐时间，您临时或可能无法当面接收我们的送餐时，我们的外送员将联系他/她代收餐点。 </p>
                        </div>
                        <div class="til_icon_on til_icon">* 我在你们网站提交的个人信息会不会被泄露出去？</div>
                        <div class="content">
                            <p>请放心，本网站将对于您的个人资料和隐私权予以尊重和保密。</p>
                        </div> -->
                </div>
            </div>

        </div>
    </div>
    <!--内容结束/-->
</div>
</div>
<div class="footer">
    <div class="container">
        <div class="footer-grid footer-grid1">
            <h3 class="m_2">公司</h3>
            <ul class="list1">
                <li><a href="#">主页</a></li>
                <li><a href="#">关于我们</a></li>
                <li><a href="#">博客</a></li>
                <li><a href="#">最新消息</a></li>
                <li><a href="#">登录</a></li>
                <li><a href="#">加入我们</a></li>
            </ul>
        </div>
        <div class="footer-grid footer-grid2">
            <h3 class="m_2">伙伴</h3>
            <ul class="list1">
                <li><a href="#">法律条款</a></li>
                <li><a href="#">隐私条款</a></li>
                <li><a href="#">经营公示</a></li>
                <li><a href="#">联系我们</a></li>
                <li><a href="#">加入我们</a></li>
                <li><a href="#">经营性网站备案信息</a></li>
            </ul>
        </div>
        <div class="footer-grid footer-grid3">
            <h3 class="m_2">信息</h3>
            <ul class="list1">
                <li><a href="#">我的账单</a></li>
                <li><a href="#">奖励</a></li>
                <li><a href="#">项目条款</a></li>
                <li><a href="#">购买条款</a></li>
                <li><a href="#">FAQ</a></li>
            </ul>
        </div>
        <div class="footer-grid footer-grid4">
            <h3 class="m_2">让我们成为朋友</h3>
            <ul class="footer_social">
                <li><a href=""> <i class="tw"> </i> </a></li>
                <li><a href=""><i class="fb"> </i> </a></li>
                <li><a href=""><i class="rss"> </i> </a></li>
                <li><a href=""><i class="msg"> </i> </a></li>
                <div class="clearfix"></div>
            </ul>
            <h3 class="m_3">贡献</h3>
            <p class="m_4">aliquam erat volutpat. Ut wisi</p>
            <div class="footer_search">
                <input type="text" class="text" value="Enter Email" onfocus="this.value = '';"
                       onblur="if (this.value == '') {this.value = 'Enter Email';}">
                <input type="submit" value="Search">
            </div>
        </div>
        <div class="footer-grid footer-grid_last">
            <ul class="secure">
                <li class="secure_img"><img src="images/secure.png" alt=""/></li>
                <li class="secure_desc">Lorem ipsum dolor coadipiscing</li>
                <div class="clearfix"></div>
            </ul>
            <ul class="secure">
                <li class="secure_img"><img src="images/order.png" alt=""/></li>
                <li class="secure_desc">Lorem ipsum dolor coadipiscing</li>
                <div class="clearfix"></div>
            </ul>
        </div>
        <div class="clearfix"></div>
        <div class="copy">
            <p>版权所有 百胜（中国）投资有限公司 沪ICP备05031779号</p>
        </div>
    </div>
</div>
<div style="display:none">
    <script src='http://v7.cnzz.com/stat.php?id=155540&web_id=155540' language='JavaScript' charset='gb2312'></script>
</div>
</body>
</html>
