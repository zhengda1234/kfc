<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="s" uri="/struts-tags" %>
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
    <title>商品信息界面</title>
    <!-- Bootstrap Styles-->
    <link href="assets/css/bootstrap.css" rel="stylesheet"/>
    <!-- FontAwesome Styles-->
    <link href="assets/css/font-awesome.css" rel="stylesheet"/>
    <!-- Morris Chart Styles-->
    <link href="assets/js/morris/morris-0.4.3.min.css" rel="stylesheet"/>
    <!-- Custom Styles-->
    <link href="assets/css/custom-styles.css" rel="stylesheet"/>
    <!-- Google Fonts-->
    <link href='http://fonts.useso.com/css?family=Open+Sans'
          rel='stylesheet' type='text/css'/>
    <link rel="stylesheet" href="assets/js/Lightweight-Chart/cssCharts.css">

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
            <a class="navbar-brand" href="index.jsp"><strong>后台管理</strong> </a>

            <!-- <div id="sideNav" href=""><i class="fa fa-caret-right"></i></div> -->
        </div>

        <ul class="nav navbar-top-links navbar-right">

            <!-- /.dropdown -->
            <li class="dropdown"><a class="dropdown-toggle"
                                    data-toggle="dropdown" href="#" aria-expanded="false"> <i
                    class="fa fa-user fa-fw"></i> <i class="fa fa-caret-down"></i> </a>
                <ul class="dropdown-menu dropdown-user">
                    <li><a href="myself.jsp"><i class="fa fa-user fa-fw"></i>
                        个人信息</a>
                    </li>
                    <li><a href="setMyself.jsp"><i class="fa fa-gear fa-fw"></i>
                        设置</a>
                    </li>
                    <li class="divider"></li>
                    <li><a href="login.jsp"><i class="fa fa-sign-out fa-fw"></i>
                        退出</a>
                    </li>
                </ul> <!-- /.dropdown-user -->
            </li>
            <!-- /.dropdown -->
        </ul>
    </nav>
    <!--/. NAV TOP  -->
    <nav class="navbar-default navbar-side" role="navigation">
        <div class="sidebar-collapse">
            <ul class="nav" id="main-menu">
                <!-- 这里的moduleList是保存的某个用户它所有的模块信息 -->
                <c:forEach var="m" items="${moduleList}">
                    <li><a href="${m.url}">${m.moduleName}</a>
                    </li>
                </c:forEach>
                <li><a href="empty.jsp"></a>
                </li>
                <!-- <li><a class="active-menu" href="index.jsp"><i
                        class="fa fa-dashboard"></i> 商品信息管理<span class="fa arrow"></span>
                </a></li>
                <li><a href="order.jsp"><i class="fa fa-desktop"></i>订单信息管理
                        <span class="fa arrow"></span> </a></li>
                <li><a href="customer.jsp"><i class="fa fa-qrcode"></i>
                        顾客信息管理</a></li>
                <li><a href="summary.jsp"><i class="fa fa-bar-chart-o"></i>
                        销售情况统计</a></li>


                <li><a href="Admin.jsp"><i class="fa fa-table"></i>管理员信息管理</a>
                </li>
                <li>
                        <a href="form.jsp"><i class="fa fa-edit"></i> 上传信息的jsp</a>
                    </li>


                <li><a href="grants.jsp"><i class="fa fa-sitemap"></i>
                        模块信息管理</a></li>
                <li><a href="empty.jsp"><i class="fa fa-fw fa-file"></i>
                        版本信息</a></li> -->
            </ul>

        </div>

    </nav>
    <!-- /. NAV SIDE  -->

    <div id="page-wrapper">
        <div class="header">
            <h1 class="page-header">
                <!-- 商品信息管理 <small>Welcome 登录者的名字</small> -->
            </h1>
            <ol class="breadcrumb">
                <li><a href="index.jsp">主页</a></li>
                <li><a href="backMeal.action">商品信息管理</a></li>
                <li class="active">商品</li>
            </ol>

        </div>
        <div id="page-inner">
            <div class="row">
                <div class="col-md-6 col-sm-6">
                    <div class="panel panel-default" style="width: 1500px;">
                        <div class="panel-heading">
                            <a href="backMeal!addMeal.action">添加商品</a>
                        </div>
                        <div class="panel-body">
                            <ul class="nav nav-tabs">
                                <li class="active"><a href="#home" data-toggle="tab">所有</a>
                                </li>
                                <li class=""><a href="#profile" data-toggle="tab">早餐</a>
                                </li>
                                <li class=""><a href="#messages" data-toggle="tab">中餐</a>
                                </li>
                                <li class=""><a href="#settings" data-toggle="tab">晚餐</a>
                                </li>
                            </ul>

                            <div class="tab-content">
                                <div class="tab-pane fade active in" id="home">

                                    <p>
                                    <div class="col-md-12">
                                        <!-- Advanced Tables -->
                                        <div class="panel panel-default">

                                            <div class="panel-body">
                                                <div class="table-responsive">

                                                    <table
                                                            class="table table-striped table-bordered table-hover"
                                                            id="dataTables-example">
                                                        <thead>
                                                        <tr>
                                                            <th>ID</th>
                                                            <th>商品名称</th>
                                                            <th>商品介绍</th>
                                                            <th>商品价格</th>
                                                            <th>商品类别</th>
                                                            <th>商品数量</th>
                                                            <th>上架时间</th>
                                                            <th>图片路径</th>
                                                            <th></th>
                                                            <th></th>
                                                        </tr>
                                                        </thead>
                                                        <tbody>
                                                        <s:iterator value="#request.meals" var="meal">
                                                            <tr class="odd gradeX">
                                                                <td>${meal.id}</td>
                                                                <td>${meal.mealName}</td>
                                                                <td>${meal.mealIntroduce}</td>
                                                                <td>${meal.mealPrice}</td>
                                                                <td>${meal.mealType}</td>
                                                                <td>${meal.mealAmount}</td>
                                                                <td>${meal.saleTime}</td>
                                                                <td>${meal.images_path}</td>
                                                                <td><a
                                                                        href="backMeal!modifyMeal.action?meal.id=${meal.id}">修改</a>
                                                                </td>
                                                                <td><a
                                                                        href="backMeal!deleteMeal.action?meal.id=${meal.id}"
                                                                        onclick="delete_confirm()">
                                                                    删除</a>
                                                                </td>
                                                            </tr>
                                                        </s:iterator>
                                                        </tbody>
                                                    </table>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <!--End Advanced Tables -->
                                    </p>
                                </div>

                                <div class="tab-pane fade" id="profile">

                                    <p>
                                    <div class="col-md-12">
                                        <!-- Advanced Tables -->
                                        <div class="panel panel-default">

                                            <div class="panel-body">
                                                <div class="table-responsive">
                                                    <table
                                                            class="table table-striped table-bordered table-hover"
                                                            id="dataTables-example1">
                                                        <thead>
                                                        <tr>
                                                            <th>ID</th>
                                                            <th>商品名称</th>
                                                            <th>商品介绍</th>
                                                            <th>商品价格</th>
                                                            <th>商品类别</th>
                                                            <th>商品数量</th>
                                                            <th>上架时间</th>
                                                            <th>图片路径</th>
                                                            <th></th>
                                                            <th></th>
                                                        </tr>
                                                        </thead>
                                                        <tbody>
                                                        <s:iterator value="#request.breakfast" var="meal">
                                                            <tr class="odd gradeX">
                                                                <td>${meal.id}</td>
                                                                <td>${meal.mealName}</td>
                                                                <td>${meal.mealIntroduce}</td>
                                                                <td>${meal.mealPrice}</td>
                                                                <td>${meal.mealType}</td>
                                                                <td>${meal.mealAmount}</td>
                                                                <td>${meal.saleTime}</td>
                                                                <td>${meal.images_path}</td>
                                                                <td><a
                                                                        href="backMeal!modifyMeal.action?meal.id=${meal.id}">修改</a>
                                                                </td>
                                                                <td><a
                                                                        href="backMeal!deleteMeal.action?meal.id=${meal.id}"
                                                                        onclick="delete_confirm()">
                                                                    删除</a>
                                                                </td>
                                                            </tr>
                                                        </s:iterator>

                                                        </tbody>
                                                    </table>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <!--End Advanced Tables -->
                                    </p>
                                </div>

                                <div class="tab-pane fade" id="messages">

                                    <p>
                                    <div class="col-md-12">
                                        <!-- Advanced Tables -->
                                        <div class="panel panel-default">

                                            <div class="panel-body">
                                                <div class="table-responsive">
                                                    <table
                                                            class="table table-striped table-bordered table-hover"
                                                            id="dataTables-example2">
                                                        <thead>
                                                        <tr>
                                                            <th>ID</th>
                                                            <th>商品名称</th>
                                                            <th>商品介绍</th>
                                                            <th>商品价格</th>
                                                            <th>商品类别</th>
                                                            <th>商品数量</th>
                                                            <th>上架时间</th>
                                                            <th>图片路径</th>
                                                            <th></th>
                                                            <th></th>
                                                        </tr>
                                                        </thead>
                                                        <tbody>
                                                        <s:iterator value="#request.lunch" var="meal">
                                                            <tr class="odd gradeX">
                                                                <td>${meal.id}</td>
                                                                <td>${meal.mealName}</td>
                                                                <td>${meal.mealIntroduce}</td>
                                                                <td>${meal.mealPrice}</td>
                                                                <td>${meal.mealType}</td>
                                                                <td>${meal.mealAmount}</td>
                                                                <td>${meal.saleTime}</td>
                                                                <td>${meal.images_path}</td>
                                                                <td><a
                                                                        href="backMeal!modifyMeal.action?meal.id=${meal.id}">修改</a>
                                                                </td>
                                                                <td><a
                                                                        href="backMeal!deleteMeal.action?meal.id=${meal.id}"
                                                                        onclick="delete_confirm()">
                                                                    删除</a>
                                                                </td>
                                                            </tr>
                                                        </s:iterator>

                                                        </tbody>
                                                    </table>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <!--End Advanced Tables -->
                                    </p>
                                </div>

                                <div class="tab-pane fade" id="settings">

                                    <p>
                                    <div class="col-md-12">
                                        <!-- Advanced Tables -->
                                        <div class="panel panel-default">

                                            <div class="panel-body">
                                                <div class="table-responsive">
                                                    <table
                                                            class="table table-striped table-bordered table-hover"
                                                            id="dataTables-example3">
                                                        <thead>
                                                        <tr>
                                                            <th>ID</th>
                                                            <th>商品名称</th>
                                                            <th>商品介绍</th>
                                                            <th>商品价格</th>
                                                            <th>商品类别</th>
                                                            <th>商品数量</th>
                                                            <th>上架时间</th>
                                                            <th>图片路径</th>
                                                            <th></th>
                                                            <th></th>
                                                        </tr>
                                                        </thead>
                                                        <tbody>
                                                        <s:iterator value="#request.dinner" var="meal">
                                                            <tr class="odd gradeX">
                                                                <td>${meal.id}</td>
                                                                <td>${meal.mealName}</td>
                                                                <td>${meal.mealIntroduce}</td>
                                                                <td>${meal.mealPrice}</td>
                                                                <td>${meal.mealType}</td>
                                                                <td>${meal.mealAmount}</td>
                                                                <td>${meal.saleTime}</td>
                                                                <td>${meal.images_path}</td>
                                                                <td><a
                                                                        href="backMeal!modifyMeal.action?meal.id=${meal.id}">修改</a>
                                                                </td>
                                                                <td><a
                                                                        href="backMeal!deleteMeal.action?meal.id=${meal.id}"
                                                                        onclick="delete_confirm()">
                                                                    删除</a>
                                                                </td>
                                                            </tr>
                                                        </s:iterator>

                                                        </tbody>
                                                    </table>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <!--End Advanced Tables -->
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- /. ROW  -->


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
    <!-- Morris Chart Js -->
    <script src="assets/js/morris/raphael-2.1.0.min.js"></script>
    <script src="assets/js/morris/morris.js"></script>


    <script src="assets/js/easypiechart.js"></script>
    <script src="assets/js/easypiechart-data.js"></script>

    <script src="assets/js/Lightweight-Chart/jquery.chart.js"></script>
    <script src="assets/js/dataTables/jquery.dataTables.js"></script>
    <script src="assets/js/dataTables/dataTables.bootstrap.js"></script>

    <script>
        $(document).ready(function () {
            $('#dataTables-example').dataTable();
            $('#dataTables-example1').dataTable();
            $('#dataTables-example2').dataTable();
            $('#dataTables-example3').dataTable();
        });
    </script>
    <script language="JavaScript">
        function delete_confirm() {
            event.returnValue = confirm("删除是不可恢复的，你确认要删除吗？");
        }
    </script>
    <!-- Custom Js -->
    <script src="assets/js/custom-scripts.js"></script>

    <script>

    </script>
</body>

</html>