<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>

    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>修改订单界面</title>
    <!-- Bootstrap Styles-->
    <link href="assets/css/bootstrap.css" rel="stylesheet"/>
    <!-- FontAwesome Styles-->
    <link href="assets/css/font-awesome.css" rel="stylesheet"/>
    <!-- Custom Styles-->
    <link href="assets/css/custom-styles.css" rel="stylesheet"/>
    <!-- Google Fonts-->
    <link href='http://fonts.useso.com/css?family=Open+Sans'
          rel='stylesheet' type='text/css'/>

</head>

<body>
<div id="wrapper">
    <nav class="navbar navbar-default top-navbar" role="navigation">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse"
                    data-target=".sidebar-collapse">
                <span class="sr-only">Toggle navigation</span> <span
                    class="icon-bar"></span> <span class="icon-bar"></span> <span
                    class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="index.jsp"><strong>后台管理</strong>
            </a>
        </div>

        <ul class="nav navbar-top-links navbar-right">

            <!-- /.dropdown -->
            <li class="dropdown"><a class="dropdown-toggle"
                                    data-toggle="dropdown" href="#" aria-expanded="false"> <i
                    class="fa fa-user fa-fw"></i> <i class="fa fa-caret-down"></i> </a>
                <ul class="dropdown-menu dropdown-user">
                    <li><a href="myself.jsp"><i class="fa fa-user fa-fw"></i>
                        个人信息</a></li>
                    <li><a href="setMyself.jsp"><i class="fa fa-gear fa-fw"></i>
                        设置</a></li>
                    <li class="divider"></li>
                    <li><a href="login.jsp"><i class="fa fa-sign-out fa-fw"></i>
                        退出</a></li>
                </ul> <!-- /.dropdown-user --></li>
            <!-- /.dropdown -->
        </ul>
    </nav>
    <!--/. NAV TOP  -->
    <nav class="navbar-default navbar-side" role="navigation">
        <div class="sidebar-collapse">
            <ul class="nav" id="main-menu">
                <!-- 这里的moduleList是保存的某个用户它所有的模块信息 -->
                <c:forEach var="m" items="${moduleList}">
                    <li><a href="${m.url}">${m.moduleName}</a></li>
                </c:forEach>
                <!-- <li><a href="Goods.jsp"><i class="fa fa-dashboard"></i>
                        商品信息管理
                </li>
                <li><a class="active-menu" href="order.jsp"><i
                        class="fa fa-desktop"></i>订单信息管理
                </li>
                <li><a href="customer.jsp"><i class="fa fa-qrcode"></i>
                        顾客信息管理</a></li>
                <li><a href="summary.jsp"><i class="fa fa-bar-chart-o"></i>
                        销售情况统计</a></li>

                <li><a href="Admin.jsp"><i class="fa fa-table"></i>
                        管理员信息管理</a></li>
                 <li>
                        <a href="addCustomer.jsp"><i class="fa fa-edit"></i> 添加顾客</a>
                    </li>


                <li><a href="grants.jsp"><i class="fa fa-sitemap"></i>
                        模块信息管理</a></li>

                <li><a href="empty.jsp"><i class="fa fa-fw fa-file"></i>
                        联系我们</a></li> -->
            </ul>

        </div>

    </nav>
    <!-- /. NAV SIDE  -->
    <div id="page-wrapper">
        <div class="header">
            <h1 class="page-header"></h1>
            <ol class="breadcrumb">
                <li><a href="index.jsp">主页</a>
                </li>
                <li><a href="backOrder.action">订单信息管理</a>
                </li>
                <li class="active">修改订单信息</li>
            </ol>

        </div>
        <div id="page-inner">
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">按要求输入相应信息</div>
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-lg-6">
                                    <form role="form" action="backOrder!modifySuccess.action">
                                        <div class="form-group">
                                            <label>顾客名</label> <input class="form-control"
                                                                      placeholder="顾客名不能为空"
                                                                      value="${order.user.userName }">
                                        </div>
                                        <div class="form-group">
                                            <label>顾客电话</label> <input class="form-control"
                                                                       placeholder="电话不能为空"
                                                                       value="${order.user.userTel }">
                                        </div>
                                        <div class="form-group">
                                            <label>送餐地址</label> <input class="form-control"
                                                                       placeholder="地址不能为空，可考虑省市县级联实现"
                                                                       value="${order.orderAddress }">
                                        </div>
                                        <div class="form-group">
                                            <label>送餐时间</label> <input class="form-control"
                                                                       placeholder="格式如：09：30 in 2016-01-01"
                                                                       value="${order.orderDate }">
                                        </div>


                                        <div class="form-group">
                                            <label>其他送餐要求</label>
                                            <textarea class="form-control" rows="3"
                                                      name="order.otherRequire">${order.otherRequire }</textarea>
                                        </div>
                                        <!-- 	<div class="form-group">
                                                <label>其他联系人及电话</label> <input class="form-control"
                                                    name="others_name"> <input class="form-control"
                                                    name="others_phone">
                                            </div> -->
                                        <div class="form-group">
                                            <label>订单总额</label> <input class="form-control" name="order.orderTotal"
                                                                       value="${order.orderTotal }">
                                        </div>
                                        <div class="form-group">
                                            <label>付款方式</label> <select class="form-control" name="order.orderPayType">
                                            <option value="现金"
                                                    <c:if test="${order.orderPayType=='现金' }">checked="checked"</c:if> >
                                                现金
                                            </option>
                                            <option value="微信"
                                                    <c:if test="${order.orderPayType=='微信' }">checked="checked"</c:if>>
                                                微信
                                            </option>
                                            <option value="支付宝"
                                                    <c:if test="${order.orderPayType=='支付宝'}">checked="checked"</c:if>>
                                                支付宝
                                            </option>
                                        </select>
                                        </div>
                                        <%-- 	<div class="form-group">
                                                <label>是否配送</label>
                                                <div class="radio">
                                                    <label> <input type="radio" name="order.Boolean"
                                                        id="optionsRadios1" value="是" <c:if test="${order.Boolean=='是'}">checked="checked"</c:if>>Yes
                                                    </label>
                                                </div>
                                                <div class="radio">
                                                    <label> <input type="radio" name="order.Boolean"
                                                        id="optionsRadios2" value="否"   <c:if test="${order.Boolean=='否' }">checked="checked"</c:if>>No
                                                </div>

                                            </div> --%>
                                        <input type="hidden" value="${order.id }" name="order.id">
                                        <button type="submit" class="btn btn-default">确定</button>
                                        <button type="reset" class="btn btn-default">重置</button>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>
        <!-- /. PAGE INNER  -->
    </div>
    <!-- /. PAGE WRAPPER  -->
</div>
<!-- /. WRAPPER  -->
<!-- JS Scripts-->
<!-- jQuery Js -->
<script src="assets/js/jquery-1.10.2.js"></script>
<!-- Bootstrap Js -->
<script src="assets/js/bootstrap.min.js"></script>
<!-- Metis Menu Js -->
<script src="assets/js/jquery.metisMenu.js"></script>
<!-- Custom Js -->
<script src="assets/js/custom-scripts.js"></script>


</body>
</html>

